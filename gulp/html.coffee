gulp.task 'html', ->
    sources = [
        'src/**/*.html'
    ]
    gulp.src(sources, base: 'src')
        .pipe(gulp.dest('dist'))
