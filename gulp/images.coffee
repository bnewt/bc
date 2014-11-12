fs      = require('fs')
gulp    = require('gulp')
gutil   = require('gulp-util')
jpegtran = require('imagemin-jpegtran')

gulp.task('images', ['images:copy', 'images:index'])

gulp.task 'images:copy', ->
    gulp.src([ 'src/images/**/*.jpg', 'src/images/**/*.JPG' ])
        .pipe(jpegtran())
        .pipe(gulp.dest('dist/images'))

gulp.task 'images:index', ['images:copy'], ->
    gulp.src 'src/**/*.coffee'
        .pipe gutil.buffer (err, images) ->
            relativePaths = images.map((image) -> image.relative)
            imageIndex = JSON.stringify(relativePaths)
            fs.writeFile('./dist/images/index.json', imageIndex, (err) -> gutil.log(err) if err?)