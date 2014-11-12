del  = require('del')
gulp = require('gulp')
gulp.task 'clean', ->
    del(['dist'])