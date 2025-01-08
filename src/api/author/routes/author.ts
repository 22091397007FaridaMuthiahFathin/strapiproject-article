/**
 * author router.
 

import { factories } from '@strapi/strapi';

export default factories.createCoreRouter('api::author.author');
*/

export default {
    routes: [
      {
        method: 'POST',
        path: '/authors/register',
        handler: 'author.registerAuthor',
        config: {
          policies: ['admin::isAuthenticatedAdmin'], // Hanya admin yang bisa akses
          description: 'Register new author',
          tags: ['Author'],
        },
      },
    ],
  };