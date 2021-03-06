var m = require('mithril');

module.exports = {
  view: function contactView(){
    return m('.pure-g',
       m('.home.pure-u-5-5', [
         m('.pure-g',
            m('img.pure-u-5-5[src="img/2015_00283-cropped.JPG"]')),
         m('h1.home-centered-text', '"DESIGN TO FINISH"'),
         m('.h3.home-centered-text.home-remodel-types', 'INTERIOR/EXTERIOR, KITCHENS, BATHROOMS,'),
         m('.h3.home-centered-text.home-remodel-types', 'ROOM ADDITIONS, LOWER LEVEL FINISHES, DECKS'),
         m('.pure-g', [
           m('ul.pure-u-1-3.home-bullet-points', [
             m('li', 'MEMBER OF BBB'),
             m('li', 'FULL DESIGN SERVICES'),
             m('li', m.trust('ALL WORKERS FULLY LICENSED &amp; INSURED')),
             m('li', 'YOU CAN TRUST US!'),
             m('li', '2 YEAR WRITTEN GUARANTEE')
           ]),
           m('ul.pure-u-1-2.home-bullet-points', [
             m('li', m.trust('JOB SITE CLEANLINESS &amp; CLEANUP')),
             m('li', m.trust('PROTECTING FLOORING &amp; FINISHES')),
             m('li', 'WE WORK DIRECTLY WITH YOU FROM START TO FINISH!'),
             m('li', 'FEES ARE PER JOB NOT PER HOUR')
           ])
         ]),
         m('.pure-g.home-images', [
           m('img[src="img/2015_00162-cropped.JPG"]'),
           m('img[src="img/2015_00562-cropped.JPG"]'),
           m('img[src="img/2015_00171-cropped.JPG"]')
         ])
      ])
    );
  }
};
