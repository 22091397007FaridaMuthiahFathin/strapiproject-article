/*
// src/api/user/controllers/customUser .ts
import { Context } from 'koa';

export default {
  async me(ctx: Context) {
    const { user } = ctx.state;
    if (!user) {
      return ctx.unauthorized('You must be logged in to access this.');
    }

    // Mengambil pengguna dengan role
    const entity = await strapi.entityService.findOne('plugin::users-permissions.user', user.id, {
      populate: ['role'],
    });

    // Mengembalikan data yang telah dibersihkan
    return entity;
  },
};
*/