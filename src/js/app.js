var m = require('mithril'),
    defaultRoute = '/',
    sidebar = document.getElementById('sidebar'),
    hostElement = document.getElementById('content');

m.module(sidebar, require('./sidebar'))

var routes = {
    '/about': require('./about'),
    '/contact': require('./contact'),
    '/testimonials': require('./testimonials'),
    '/images/:imageType': require('./images')
};

routes[defaultRoute] = require('./home');

m.route.mode = 'search';
m.route(hostElement, defaultRoute, routes);
