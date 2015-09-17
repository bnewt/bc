var m = require('mithril'),
testimonialsService = require('./testimonials-service');

module.exports = function TestimonialsController(){
  var name = m.route.param('name'),
      testimonials = testimonialsService.get();

  if(!name){
    m.route('/testimonials/' + encodeURIComponent(testimonials[0].name))
  }

  this.testimonial = m.prop();
};
