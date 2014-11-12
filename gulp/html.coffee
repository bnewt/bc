gulp            = require('gulp')
jade            = require('gulp-jade')
gutil           = require('gulp-util')
filter          = require('gulp-filter')
plumber         = require('gulp-plumber')
htmlMin         = require('gulp-htmlmin')
htmlPrettify    = require('gulp-html-prettify')
ngTemplateCache = require('gulp-angular-templatecache')

gulp.task('html', [ 'html:jade', 'html:template-cache'])

gulp.task 'html:jade', ->
    gulp.src('src/**/*.jade')
        .pipe(plumber())
        .pipe(jade()).on('error', gutil.log)
        .pipe(htmlPrettify())
        .pipe(gulp.dest('dist'))
        
gulp.task 'html:template-cache', ->
    gulp.src('src/**/*.jade')
        .pipe(filter(['*', '!**/index.jade']))
        .pipe(plumber())
        .pipe(jade()).on('error', gutil.log)
        .pipe(htmlMin(collapseWhitespace: true))
        .pipe(ngTemplateCache(module: 'app'))
        .pipe(gulp.dest('dist/app/templates'))