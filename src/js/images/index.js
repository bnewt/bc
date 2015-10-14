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
    vm.selectedImage = m.prop(vm.images[0]);

    vm.page = 1;
    vm.imagesPerPage = 5
    vm.pageLeft = function(){
        if(vm.page > 1){
          vm.page -= 1;
        }
    };

    vm.pageRight = function(){
      if(vm.page < Math.ceil(vm.images.length / vm.imagesPerPage)){
        vm.page += 1;
      }
    };

  },
  view: function imagesView(ctrl){
    return m('.images-page', [
      m('h1.page-title', ctrl.imageType()),
      m('.pure-g', [
        m('.pure-u-5-5.selected-image', m('img.pure-img', { src: ctrl.selectedImage() })),
        m('.pure-u-5-5',
          m('.pure-g.images', [
            m('.arrow.pure-u-1-12', { onclick: ctrl.pageLeft },  '<'),
            m('.pure-u-5-6', m('.pure-g',
              ctrl.images.slice((ctrl.page - 1) * 5, (ctrl.page * 5)).map(function(image){
                return m('.pure-u-1-5.image-container', { onclick: function(){ ctrl.selectedImage(image); } }, m('img.pure-img', { src: image }));
              }))
            ),
            m('.arrow.pure-u-1-12', { onclick: ctrl.pageRight }, '>')
          ])
        )
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
