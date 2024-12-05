'use strict';

module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/user-invite',
      handler: 'invite.invite',
      config: {
        policies: [],
        middlewares: [],
      },
    },
    {
      method: 'GET',
      path: '/accept-invite',
      handler: 'invite.acceptInvite',
      config: {
        policies: [],
        middlewares: [],
      },
    },
  ],
};
