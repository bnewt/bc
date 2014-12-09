global._            = require('lodash');
global.gulp         = require('gulp');
global.plugins      = require('gulp-load-plugins')();

require('coffee-script/register');
require('require-dir')('./gulp');