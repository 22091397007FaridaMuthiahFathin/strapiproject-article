/**
 *  author controller
 

import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::author.author');
*/

export default {
    async registerAuthor(ctx) {
      const { email, name }: { email: string; name: string } = ctx.request.body;
  
      try {
        // Generate random password
        const password = Math.random().toString(36).slice(-8);
  
        // Cari role ID untuk author
        const authorRole = await strapi
          .query('plugin::users-permissions.role')
          .findOne({ where: { type: 'author' } });
  
        if (!authorRole) {
          return ctx.badRequest('Role author tidak ditemukan');
        }
  
        // Buat user baru
        const newUser = await strapi.plugins['users-permissions'].services.user.add({
          email,
          name,
          password,
          role: authorRole.id,
          confirmed: true,
          provider: 'local',
        });
  
        // Kirim email
        await strapi.plugins['email'].services.email.send({
          to: email,
          subject: 'Undangan sebagai Penulis',
          html: `
            <p>Anda telah didaftarkan sebagai penulis.</p>
            <p>Silakan login dengan kredensial berikut:</p>
            <p>Email: ${email}</p>
            <p>Password sementara: ${password}</p>
            <p>Silakan login ke aplikasi mobile dengan kredensial tersebut.</p>
          `,
        });
  
        return ctx.send({
          message: 'Penulis berhasil didaftarkan',
          user: {
            id: newUser.id,
            email: newUser.email,
            name: newUser.name,
          },
        });
  
      } catch (error) {
        return ctx.badRequest('Gagal mendaftarkan penulis', { error });
      }
    }
  };