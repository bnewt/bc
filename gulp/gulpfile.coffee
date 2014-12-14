serve = require('./serve')

gulp.task('default', [ 'serve' ])
    
gulp.task 'serve', [ 'watch'], ->
    serve(port: 8080, directory: 'dist')

gulp.task 'watch', ['build'], ->
    gulp.watch(['src/**/*.jade'], ['html'])
    gulp.watch(['src/**/*.coffee'], [ 'scripts:coffee' ])
    
gulp.task 'build', [
    'html'
    'build:scripts'
    'images'
    'styles'
]