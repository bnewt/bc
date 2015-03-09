gulp.task('styles', ['styles:css'])

gulp.task 'styles:css', ->
    sources = [
        'src/lib/pure/pure-min.css'
        'src/css/site.css'
    ]
    gulp.src(sources, base: 'src')
        .pipe(gulp.dest('dist'))
