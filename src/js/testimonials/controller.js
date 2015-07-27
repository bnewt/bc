var m = require('mithril'),
service = require('./testimonials-service');

module.exports = function TestimonialsController(){
  service.get().then( this.testimonials = m.prop([]) );
};
