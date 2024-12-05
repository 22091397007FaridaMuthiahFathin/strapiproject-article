module.exports = {
    routes: [
      {
        method: 'GET',
        path: '/users/me-with-role',
        handler: 'custom.meWithRole',
        config: {
          policies: [],
        },
      },
    ],
  };
  