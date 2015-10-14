var m = require('mithril'),
    map = require('array-map');
    testimonialsService = require('./testimonials-service');

module.exports = {
  controller: function TestimonialsController(){
    this.testimonials = m.prop(testimonialsService.get());
  },
  view: function testimonialsView(ctrl){
      return m('.testimonials',
        map(ctrl.testimonials(), function(testimonial){
          return m('.testimonial', [
            m('.text', testimonial.text),
            m('.name', testimonial.name),
            testimonial.city == null
              ? void(0)
              : m('.city', testimonial.city)
          ]);
      }));
  }
};
