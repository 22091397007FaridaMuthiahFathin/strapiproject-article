'use strict';

/**
 * author router.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::invite-token.invite-token');
