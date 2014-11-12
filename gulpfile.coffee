gulp        = require('gulp')
plumber     = require('gulp-plumber')
gutil       = require('gulp-util')

clean       = require('./gulp/clean')
serve       = require('./gulp/serve')
serve       = require('./gulp/html')
serve       = require('./gulp/scripts')
serve       = require('./gulp/images')

gulp.task('default', [ 'serve' ])
    
gulp.task 'serve', [ 'watch'], ->
    serve(port: 8080, directory: 'dist')

gulp.task 'watch', ['build'], ->
    gulp.watch(['src/**/*.jade'], ['html'])
    gulp.watch(['src/**/*.coffee'], [ 'scripts:coffee' ])
    
gulp.task('build', ['html', 'scripts', 'images'])