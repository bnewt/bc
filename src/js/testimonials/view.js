var m = require('mithril'),
    map = require('array-map');

module.exports = function view(ctrl){
  return map(ctrl.testimonials(), function(testimonial){
    return m('.testimonial', [
      m('.text', testimonial.text),
      m('.name', testimonial.name),
      testimonial.city == null
        ? void(0)
        : m('.city', testimonial.city)
    ]);
  });
};
