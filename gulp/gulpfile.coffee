serve = require('./serve')

gulp.task('default', [ 'serve' ])

gulp.task 'serve', [ 'watch'], ->
    serve(port: 8080, directory: 'dist')

gulp.task 'watch', ['build'], ->
    gulp.watch(['src/**/*.js'], [ 'scripts' ])
    gulp.watch(['src/**/*.html'], ['html'])
    gulp.watch(['src/**/*.css'], ['styles'])

gulp.task 'build', [
    'scripts'
    'html'
    'images'
    'styles'
]
