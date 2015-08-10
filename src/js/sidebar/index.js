var m = require('mithril'),
    capitalize = require('capitalize'),
    imageService = require('../images/image-service');

module.exports = {
  view: function(){
    return [
      m('.pure-menu', m('ul.pure-menu-list', createMenuItems())),
      m('p#contact-info', [
        m('span', 'Call: 402-706-0660'),
        m('br'),
        m('a[href="mailto:bolteconst@cox.net"]', 'Or Email Bolte')
      ]),
      m('a#bbb-logo[href="http://www.bbb.org/nebraska"]', [
        m('img[src="http://www.bolteconstruction.com/bbb%20logo126.jpg"][width="126"][height="73"][border="0"]')
      ])
    ];

    function createMenuItems(){
      var i,
          imageType,
          imageTypes = imageService.getImageTypes(),
          menuItems = [ createMenuItem('/', 'Home') ];

      for(i = 0; i < imageTypes.length; i++){
        imageType = imageTypes[i];
        menuItems.push(createMenuItem('/images/' + imageType, imageType));
      }

      menuItems.push(
        createMenuItem('/testimonials', 'Testimonials'),
        createMenuItem('/contact', 'Contact Us'),
        createMenuItem('/about', 'About'));

        return menuItems;
    }

    function createMenuItem(route, text){
      function makeHumanReadable(string){
        return capitalize.words(string.replace('-', ' '));
      }

      var attrs = { config: m.route };
      return m('li.pure-menu-item', [
        m("a[href='" + route + "'][class='pure-menu-link']", attrs, makeHumanReadable(text))
      ]);
    }
  }
};
