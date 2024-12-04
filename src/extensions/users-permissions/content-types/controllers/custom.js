module.exports = {
  async meWithRole(ctx) {
    try {
      const user = ctx.state.user;

      if (!user) {
        return ctx.unauthorized("User not authenticated");
      }

      // Query user beserta role
      const userWithRole = await strapi.entityService.findOne('plugin::users-permissions.user', user.id, {
        populate: { role: true },
      });

      console.log("User with Role:", userWithRole); // Log untuk debug

      if (!userWithRole) {
        return ctx.notFound("User not found");
      }

      const { password, resetPasswordToken, confirmationToken, ...sanitizedUser } = userWithRole;

      ctx.body = sanitizedUser;
    } catch (error) {
      console.error("Error in meWithRole:", error);
      ctx.internalServerError("An error occurred");
    }
  },
};
