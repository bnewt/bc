var _ = require('lodash'),
glob = require('glob');

var images = glob.sync("src/img/**/*.jpg");

console.log(images);

