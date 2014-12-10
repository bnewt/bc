gulp.task('html', [ 'html:jade', 'html:template-cache'])

gulp.task 'html:jade', ->
    gulp.src('src/**/*.jade')
        .pipe(plugins.plumber())
        .pipe(plugins.jade()).on('error', plugins.util.log)
        .pipe(plugins.htmlPrettify())
        .pipe(gulp.dest('dist'))
        
gulp.task 'html:template-cache', ->
    gulp.src(['src/**/*.jade', '!**/index.jade'])
        .pipe(plugins.plumber())
        .pipe(plugins.jade()).on('error', plugins.util.log)
        .pipe(plugins.minifyHtml())
        .pipe(plugins.angularTemplatecache(module: 'app'))
        .pipe(gulp.dest('dist/app/templates'))