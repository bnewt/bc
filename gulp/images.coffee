fs      = require('fs')
jpegtran = require('imagemin-jpegtran')

gulp.task('images', ['images:copy', 'images:index'])

gulp.task 'images:copy', ->
    sources = [
        'src/**/*.jpg'
        'src/**/*.JPG'
        'src/**/*.jpeg'
        'src/**/*.JPEG'
    ]
    gulp.src(sources)
        .pipe(jpegtran())
        .pipe(gulp.dest('dist'))

gulp.task 'images:index', ['images:copy'], ->
    sources = [
        'src/**/*.jpg'
        'src/**/*.JPG'
        'src/**/*.jpeg'
        'src/**/*.JPEG'
    ]
    gulp.src(sources)        
        .pipe plugins.util.buffer (err, images) ->
            return if images.length is 0
            relativePaths = images.map((image) -> image.relative.replace(/img\\/g, ''))
            imageIndex = JSON.stringify(relativePaths)
            fs.writeFile('./dist/img/index.json', imageIndex, (err) -> plugins.util.log(err) if err?)