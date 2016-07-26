var m = require('mithril');

module.exports = {
  view: function contactView(){
    return m('.pure-g',
       m('.home.pure-u-5-5', [
         m('.pure-g', m('.pure-u-5-5', m('img' /* image banner image goes here*/))),
         m('h1.design-to-finish', '"DESIGN TO FINISH"'),
         m('.h3', 'INTERIOR/EXTERIOR, KITCHENS, BATHROOMS,'),
         m('.h3', 'ROOM ADDITIONS, LOWER LEVEL FINISHES, DECKS'),
         m('.pure-g', [
           m('ul.pure-u-1-3', [
             m('li', 'MEMBER OF BBB'),
             m('li', 'FULL DESIGN SERVICES'),
             m('li', m.trust('ALL WORKERS FULLY LICENSED &amp; INSURED')),
             m('li', 'YOU CAN TRUST US!'),
             m('li', '2 YEAR WRITTEN GUARANTEE')
           ]),
           m('ul.pure-u-1-2', [
             m('li', m.trust('JOB SITE CLEANLINESS &amp; CLEANUP')),
             m('li', m.trust('PROTECTING FLOORING &amp; FINISHES')),
             m('li', 'WE WORK DIRECTLY WITH YOU FROM START TO FINISH!'),
             m('li', 'FEES ARE PER JOB NOT PER HOUR')
           ])
         ]),
         m('.pure-g', [
           m('.pure-u-1-3', m('img')),
           m('.pure-u-1-3', m('img')),
           m('.pure-u-1-3', m('img'))
         ])
      ])
    );
  }
};
