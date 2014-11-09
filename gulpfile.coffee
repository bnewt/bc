del = require 'del'
gulp = require 'gulp'

jade = require 'gulp-jade'
gutil = require 'gulp-util'
clean = require 'gulp-clean'
coffee = require 'gulp-coffee'
concat = require 'gulp-concat'
uglify = require 'gulp-uglify'
rename = require 'gulp-rename'
replace = require 'gulp-replace'
toJson = require 'gulp-to-json'
gulpFilter = require 'gulp-filter'
jpegtran = require 'imagemin-jpegtran'
ngAnnotate = require 'gulp-ng-annotate'
htmlMin = require 'gulp-htmlmin'
htmlPrettify = require 'gulp-html-prettify'
ngTemplateCache = require 'gulp-angular-templatecache'

express = require 'express'

gulp.task 'default', ['watch']

gulp.task 'build', ['coffee', 'jade', 'libraries', 'imageIndex']

gulp.task 'watch', [ 'build' ],  ->
    patterns = [
      'src/**/*.jade'
      'src/**/*.coffee'
    ]
    gulp.watch patterns, [ 'build' ]

gulp.task 'serve', ['default'], ->
    app = express()
    app.use(express.static('dist'))
    app.listen(8080)
    console.log 'listening on 8080'

gulp.task 'clean', ->
    del [ 'dist' ]
    return

gulp.task 'coffee', ->
  gulp.src 'src/**/*.coffee'
      .pipe coffee()
      .on('error', gutil.log)
      .pipe ngAnnotate(add: true, single_quotes: true)
      .pipe gulp.dest('dist')
      .pipe concat('bolte-construction.js')
      .pipe gulp.dest('dist/app')
      .pipe uglify()
      .pipe rename(extname: 'min.js')
      .pipe gulp.dest('dist/app')

gulp.task 'libraries', ->
    sources = [
      'src/lib/jquery/dist/jquery.js',
      'src/lib/angular/angular.js'
      'src/lib/angular-route/angular-route.js'
      'src/lib/angular-animate/angular-animate.js'
      'src/lib/angular-strap/dist/angular-strap.js'
      'lib/angular-strap/dist/angular-strap.tpl.js'
    ]
    gulp.src sources
        .pipe concat('dependencies.js')
        .pipe uglify()
        .pipe gulp.dest('dist/lib')

gulp.task 'jade', ->
  gulp.src 'src/**/*.jade'
      .pipe(jade()).on('error', gutil.log)
      .pipe htmlPrettify()
      .pipe gulp.dest('dist')
      .pipe htmlMin(collapseWhitespace: true)
      .pipe ngTemplateCache(module: 'app')
      .pipe gulpFilter(['*', '!**/index.jade'])
      .pipe gulp.dest('dist/app/templates')


gulp.task 'images', ->
    gulp.src [ 'src/images/**/*.jpg', 'src/images/**/*.JPG' ]
        .pipe jpegtran()
        .pipe gulp.dest('dist/images')

gulp.task 'createImageIndex', [ 'images' ],  ->
    gulp.src [ 'src/images/**/*.jpg', 'src/images/**/*.JPG' ]
        .pipe toJson(filename: 'dist/images/index.json', relative: true)

gulp.task 'imageIndex', ['createImageIndex'], ->
    gulp.src 'dist/images/**/*.json'
        .pipe replace('\\\\', '/')
        .pipe gulp.dest('dist/images')
