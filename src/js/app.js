var m = require('mithril'),
    defaultRoute = '/',
    sidebar = document.getElementById('sidebar'),
    hostElement = document.getElementById('bolte-construction');

m.route.mode = 'search';

m.mount(sidebar, require('./sidebar'))

m.route(hostElement, defaultRoute, {
  defaultRoute : require('./home'),
  '/testimonials': require('./testimonials'),
  '/contact': require('./contact'),
  '/images/:imageType': require('./images')
});
