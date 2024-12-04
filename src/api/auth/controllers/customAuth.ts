/*
// src/api/auth/controllers/customAuth.ts
import { Context } from 'koa';
import sanitizeEntity from '@strapi/utils';

export default {
  async login(ctx: Context) {
    const { identifier, password } = ctx.request.body;

    // Memanggil fungsi login default Strapi
    const response = await strapi.plugins['users-permissions'].controllers.auth.callback(ctx);

    // Mengambil informasi pengguna dengan role
    const user = await strapi.query('user', 'users-permissions').findOne({ id: response.user.id }, ['role']);

    // Menyusun respons dengan role
    return {
      jwt: response.jwt,
      user: sanitizeEntity(user, { model: strapi.models.user }),
    };
  },
};
*/