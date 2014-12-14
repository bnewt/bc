module.exports = (filename) ->
    lazypipe()
        .pipe(plugins.plumber)
        .pipe(plugins.concat, filename)
        .pipe(gulp.dest, 'dist/app')
        .pipe(plugins.uglify)
        .pipe(plugins.rename, extname: '.min.js')
        .pipe(gulp.dest, 'dist/app')()