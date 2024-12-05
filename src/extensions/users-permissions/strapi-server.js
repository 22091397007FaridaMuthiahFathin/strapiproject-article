module.exports = (plugin) => {
    plugin.controllers.user.me = async (ctx) => {
      const user = ctx.state.user;
  
      if (!user) {
        return ctx.unauthorized();
      }
  
      // Query lengkap untuk mendapatkan role user
      const userWithRole = await strapi.db.query('plugin::users-permissions.user').findOne({
        where: { id: user.id },
        populate: ['role'], // Pastikan role ikut di-populate
      });
  
      if (!userWithRole) {
        return ctx.notFound();
      }
  
      const { password, resetPasswordToken, confirmationToken, ...sanitizedUser } = userWithRole;
  
      ctx.body = userWithRole;
    };
  
    return plugin;
  };