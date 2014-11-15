gulp = require('gulp')

gulp.task('styles', ['styles:css'])

gulp.task 'styles:css', ->
    sources = [
        'src/lib/slick-carousel/slick/slick.css'
        'src/lib/slick-carousel/slick/ajax-loader.gif'
        'src/lib/slick-carousel/slick/**/*.woff'
        'src/lib/slick-carousel/slick/**/*.ttf'
    ]
    gulp.src(sources)
        .pipe(gulp.dest('dist/app/styles'))