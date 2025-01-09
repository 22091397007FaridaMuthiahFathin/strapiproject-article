module.exports = {
  async invite(ctx) {
    const { email, role } = ctx.request.body;

    if (!email) {
      return ctx.badRequest('Email is required');
    }
    if (!role) {
      return ctx.badRequest('Role is required');
    }

    // Dynamically import the nanoid package
    const { nanoid } = await import('nanoid');

    // Generate a unique token for the invitation
    const token = nanoid(32);

    // Save the token and email in a custom database table
    await strapi.entityService.create('api::invite-token.invite-token', {
      data: {
        email,
        token,
        role
      },
    });

    // Send the invitation email
    const appUrl = strapi.config.get('server.url'); // Adjust your app URL

    // ini nanti diganti URL front end tapi ttep terakhir e ?token=${token}}
    const invitationLink = `${appUrl}/auth/accept-invite?token=${token}`;

    await strapi.plugins['email'].services.email.send({
      to: email,
      subject: 'You have been invited!',
      text: `Click the link to accept your invitation: ${invitationLink}`,
      html: `<p>Click the link to accept your invitation:</p><a href="${invitationLink}">${invitationLink}</a>`,
    });

    return ctx.send({ message: 'Invitation sent successfully!' });
  },
  async acceptInvite(ctx) {
    const { token } = ctx.query;

    if (!token) {
      return ctx.badRequest('Token is required');
    }

    const roleData = await strapi.db.query('plugin::users-permissions.role').findOne({
      where: { name: 'authenticated' }, // role name, e.g., 'admin', 'user'
    });

    console.log(roleData);
    
    if (!roleData) {
      return ctx.badRequest('Invalid role');
    }
    // Find the invite token in the database
    const invite = await strapi.entityService.findMany('api::invite-token.invite-token', {
      filters: {
        token: token // Filtering by the token attribute
      },
    });
    
    if (!invite) {
      return ctx.notFound('Invalid or expired invitation');
    }

    const userService = strapi.plugin('users-permissions').service('user');

    try {
      // Create a new user using the user service
      const newUser = await strapi.plugins['users-permissions'].services.user.add({
          email: invite[0].email,
          password: 'password',
          role: {connect: [{ id: roleData.id, documentId: roleData.documentId }]},
          confirmed: true,
          username: 'teguh'
          // additional fields like username or full name can be added here
      });
      console.log(invite[0].id);
      

      // Optionally, mark the invite as accepted
      await strapi.entityService.update('api::invite-token.invite-token', invite[0].id, {
        data: { accepted: true },
      });

      return ctx.send({ message: 'User successfully created and invitation accepted!' });
    } catch (error) {
      console.error(error);
      return ctx.internalServerError('An error occurred while creating the user');
    }
  }
};
