var m = require('mithril');

module.exports = function (ctrl){
  return m('.pure-g', [
    m('p.text-justified', 'We offer a free consultation and a written estimate for each job and there are never any hidden charges as fees are per job, not per hour.'),
    m('p.text-justified', [
      m('span', 'We look forward to hearing from you, contact us by phone at 402-706-0660 and by email at '),
      m('a[href=mailto:bolteconst@cox.net]', 'bolteconst@cox.net')
    ])
  ]);
};
