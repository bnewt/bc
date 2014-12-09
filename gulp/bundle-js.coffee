# bundle-js:
# concats and minifies a stream of javascript
# outputs both the minfied and nonminified versions

module.exports = (stream, filename) ->
    stream
        .pipe(plugins.concat(filename))
        .pipe(gulp.dest('dist/app'))
        .pipe(plugins.uglify())
        .pipe(plugins.rename(extname: '.min.js'))
        .pipe(gulp.dest('dist/app'))