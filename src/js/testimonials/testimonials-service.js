var m = require('mithril')

var testimonials = [
    {
        name: 'Mike and Krisa Moore',
        city: 'LaVista, Nebraska',
        text: 'After seeing the quality of work that Bolte Construction had done in a friend’s home, we called and set up an appointment to discuss our options for a basement finish. Bill, Geoff and their staff are extremely knowledgeable, honest, timely and produce quality work. We had never undergone any home remodeling of this nature, yet working with Bill allowed us to feel completely comfortable during the entire process. From the initial visit and estimate to the final cleanup and every step in between, they were always reachable, communicated well and were respectful of our home. With the help and guidance of Bolte Construction, we were able to fine tune a remodel that fit into our budget and provided us with the living space and flexibility we were looking for. From the bathroom, to the home theater, HVAC and plumbing, Bill and his team knew what they were doing and they did it well. I highly recommend Bolte Construction to anyone looking for home remodeling in Omaha or the surrounding area. We will definitely use them for any future projects we may have.'
    },
    {
        name: 'Steve and Barbara Breazeale',
        city: 'Omaha, Nebraska',
        text: 'Earlier this year, Bolte Construction remodeled our outdated bathroom. We called and Bill was a real person at the other end of the line – no leaving a message. That was worthy of a gold star. After discussing what we were interested in doing, an appointment was set up so that he could provide an estimate. Here is his second gold star – he was on time. Not only was he prompt, but courteous, knowledgeable and encouraging. Needless to say, he was hired for the job. The work began exactly on schedule. He was in contact with us for each detail and gave excellent advice when needed. All of his workers were also considerate and efficient. At the end of each workday, there was never a mess for us to clean up. We couldn’t be more pleased with the final result. When we’re ready to undertake our next remodeling adventure, you can be sure that Bolte Construction will be the first call we make.'
    },{
        name: 'Bob and Laura Callahan',
        city: 'Omaha, Nebraska',
        text: 'We would like to thank you for the beautiful remodeling of our main bathroom. We waited several years to update and it was so worth the wait to find the right company to handle our project. We appreciated your walking us through the process. You told us the first time we met that we would see progress every day and we did. You promised to keep construction dust as contained as possible and you did. You gave us a timeline and you were spot on. You repeatedly told us that you would do whatever we wanted to make sure the project was to our satisfaction and you did just that. There truly were no hiccups in this entire project and results were even better than we had hoped for. Thank you for your professionalism and please extend our gratitude to your craftsmen. We will confidently recommend you to friends and family because we know firsthand the quality of the workmanship of Bolte Construction.'
    },
    {
        name: 'John & Debbie Mazzei',
        city: '',
        text: 'Working with Bolte Construction was an extremely positive experience! He helped guide us through the entire remodeling experience from design to finish. He is a very knowledgeable and experienced contractor. From the beginning we were able to communicate well with him. He finished our project on time and on budget! Everyone who has seen the finished product has been impressed with the style, workmanship and flow of our kitchen. I would recommend Bill to anyone who expects professionalism, quality and service.'
    },
    {
        name: 'Dr. and Mrs. Paul J. Gardner',
        city: 'Omaha, Nebraska',
        text: 'We have used Bolte Construction for both large and small projects in our home. In our experience, such work has never been completed so smoothly. Bill Bolte listened carefully to our needs, then explained in detail what was involved. Bill and his workers arrived promptly, kept the area as neat and clean as possible, and finished the work on time. Bill never considered \'cutting corners\' to save time. We highly recommend Bolte Construction'
    },
    {
        name: 'Ron and Diane Fucinaro',
        city: 'Papillion, Nebraska',
        text: 'Bolte Construction did an excellent job on our new kitchen addition. The craftsmanship, quality of the work and the finished project exceeded the high standards we set for the project. More importantly, was the professional, ethical and honest standard you brought to this job. We really appreciated the attitude you had, that you would do whatever it took to make sure we were happy with not only the finished product, but also with the process of getting there. We also appreciate your sub-contractors and the work they put into our home, as well as the respect they showed for our home and family. Thank you for making our new kitchen a beautiful addition to our home. We we are ready to finish our basement we only have one contractor to call!'
    },
    {
        name: 'Deb Neukirk',
        city: 'Omaha, Nebraska',
        text: 'I wanted to let you know how much I love my new kitchen. It\'s more than I dreamed it could look like! Kudos to all the guys that work with you, they were always there when you said they would be. I cannot believe how quickly the job was completed. I have been spreading the word on what a fantastic job you did and how great you are to work with. Again, thanks for everything!'
    }
];

module.exports = {
  get: function(){
    return testimonials;
  }
};
