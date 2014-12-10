global._                    = require('lodash');
global.del                  = require('del');
global.gulp                 = require('gulp');
global.express              = require('express');
global.imageminJpegtran     = require('imagemin-jpegtran');
global.plugins              = require('gulp-load-plugins')();

require('coffee-script/register');
require('require-dir')('./gulp');