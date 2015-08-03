'use strict'

gulp = require('gulp')
gutil = require('gulp-util')
uglify = require('gulp-uglify')
rename = require('gulp-rename')
source = require('vinyl-source-stream')
buffer = require('vinyl-buffer')
browserify = require('browserify')

gulp.task 'scripts', ->
  # set up the browserify instance on a task basis
  b = browserify({
    entries: './src/js/app.js',
    debug: false
    transform: [ require('./image-index-transform') ]
  })

  # b.external('mithril') # this will prevent mithril from being bundled

  return b.bundle()
    .pipe(source('bc.js'))
    .pipe(buffer())
    .pipe(gulp.dest('dist/js'))
    .pipe(uglify()).on('error', gutil.log)
    .pipe(rename(suffix: '.min'))
    .pipe(gulp.dest('dist/js/'))
