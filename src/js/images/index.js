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
    vm.images = imageService.getImagesOfType(type);
  },
  view: function imagesView(ctrl){
    return m('div', [
      m('h1', 'Images:'),
      m('pre', JSON.stringify(ctrl.images, null, 2))
    ]);
  }
};
