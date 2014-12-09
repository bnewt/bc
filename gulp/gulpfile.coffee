gulp        = require('gulp')
plumber     = require('gulp-plumber')
gutil       = require('gulp-util')

serve = require('./serve')

require('./clean')
require('./html')
require('./scripts')
require('./images')
require('./styles')

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