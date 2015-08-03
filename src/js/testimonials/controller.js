var m = require('mithril'),
testimonialsService = require('./testimonials-service');

module.exports = function TestimonialsController(){
  this.testimonials = m.prop(testimonialsService.get());
};
