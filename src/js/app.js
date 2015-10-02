var m = require('mithril'),
    defaultRoute = '/home',
    sidebar = document.getElementById('sidebar'),
    hostElement = document.getElementById('content');

m.module(sidebar, require('./sidebar'))

var routes = {
    '/about': require('./about'),
    '/testimonials/:name': require('./testimonials'),
    '/images/:imageType': require('./images')
};

routes[defaultRoute] = require('./home');

m.route.mode = 'search';
m.route(hostElement, defaultRoute, routes);
