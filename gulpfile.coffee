gulp        = require('gulp')
plumber     = require('gulp-plumber')
gutil       = require('gulp-util')

serve = require('./gulp/serve')

require('./gulp/clean')
require('./gulp/html')
require('./gulp/scripts')
require('./gulp/images')
require('./gulp/styles')

gulp.task('default', [ 'serve' ])
    
gulp.task 'serve', [ 'watch'], ->
    serve(port: 8080, directory: 'dist')

gulp.task 'watch', ['build'], ->
    gulp.watch(['src/**/*.jade'], ['html'])
    gulp.watch(['src/**/*.coffee'], [ 'scripts:coffee' ])
    
gulp.task 'build', [
    'html'
    'scripts'
    'images'
    'styles'
]