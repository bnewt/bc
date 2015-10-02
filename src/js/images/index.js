var m = require('mithril'),
    indexOf = require('indexof')
    imageService = require('./image-service');

module.exports = {
  controller: function ImagesController(){
    var vm = this,
        type = m.route.param('imageType')
        imageTypes = imageService.getImageTypes();

    if(indexOf(imageTypes, type) === -1){
      return m.route('/home');
    }
    vm.imageType = m.prop(type);
    vm.images = imageService.getImagesOfType(type);
  },
  view: function imagesView(ctrl){
    return m('div', [
      m('h1', ctrl.imageType()),
      m('.pure-g',[
        m('.pure-u-5-5.selected-image', [
          m('img.pure-img', { src: ctrl.images[0] })
        ]),
        m('.pure-u-5-5', m('.images', [
          m('.arrow', '<'),
          ctrl.images.map(function(image){
            return m('img.pure-img', { src: image })
          }),
          m('.right')
        ]))
      ])
    ]);
  }
};

function map(items, transform){
  var i = 0, len = items.length, results = [];
  while(i < len){
    results.push(transform(items[i]));
    i++;
  }
}
