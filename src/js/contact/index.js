module.exports = {
  view: function contactView(){
    return m('.pure-g', [
       m('.pure-u-5-5', [
        m('h1', 'Contact Us'),
        m('h3', '"Design to finish, we work directly with you every step of the way."'),
        m('h4', 'Bill Bolte'),
        m('p', 'Thank you for visiting Bolte Construction, where our goal for every remodeling project is complete customer satisfaction. We constantly achieve that by offering full design services, workers that are licensed and insured and a two year written guarantee.'),
        m('p', 'We offer a free consultation and a written estimate for each job and there are never any hidden charges as fees are per job, not per hour.'),
        m('p', 'While in your home or business we treat it as we would want our own to be treated, with cleanliness and respect, protecting flooring and finishes. We keep the lines of communication open each step of the way, making sure that your vision is becoming a reality.'),
        m('p', 'Thank you again for your interest in Bolte Construction. We look forward to helping you with your next remodeling project.'),
        m('p', [ m('em', 'Bill Bolte') ])
        // m('p', [
        //   m('span', 'We look forward to hearing from you, contact us by phone at 402-706-0660 and by email at '),
        //   m('a[href=mailto:bolteconst@cox.net]', 'bolteconst@cox.net')
        // ])
      ])
    ]);
  }
};
