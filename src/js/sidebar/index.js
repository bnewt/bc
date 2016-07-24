var m = require('mithril'),
    imageService = require('../images/image-service');

module.exports = {
  view: function(){
    return [
      m('ul.sidebar', createMenuItems()),
      m('p#contact-info', [
        m('span', 'Call: 402-706-0660'),
        m('br'),
        m('a#contact-info-email-link[href="mailto:bolteconst@cox.net"]', 'Email Bolte Construction')
      ]),
      m('a#bbb-logo[href="http://www.bbb.org/nebraska"]', [
        m('img[src="http://www.bolteconstruction.com/bbb%20logo126.jpg"][width="126"][height="73"][border="0"]')
      ])
    ];

    function createMenuItems(){
      var i, imageType, imageTypes = [
        { menuText: 'Kitchens', folderName: 'Kitchens' },
        { menuText: 'Bathrooms', folderName: 'Bathrooms' },
        { menuText: 'Lower Levels', folderName: 'Lower Level' },
        { menuText: 'Exteriors', folderName: 'Exteriors' },
        { menuText: 'Commercial', folderName: 'Commercial' }
      ];

      var menuItems = [ createMenuItem('/home', 'Home') ];

      for(i = 0; i < imageTypes.length; i++){
        imageType = imageTypes[i];
        menuItems.push(createMenuItem('/images/' + imageType.folderName, imageType.menuText));
      }

      menuItems.push(createMenuItem('/testimonials', 'Testimonials'));

      return menuItems;
    }

    function createMenuItem(route, text){
      var attrs = { config: m.route };
      return m('li.sidebar-menu-item', [
        m("a.pure-menu-link[href='" + route + "']", attrs, m.trust('&bull; ' + text))
      ]);
    }
  }
};
