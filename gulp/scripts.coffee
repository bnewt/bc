plumber = require('gulp-plumber')
coffee = require('gulp-coffee')
concat = require('gulp-concat')

gulp.task('scripts', ['scripts:coffee', 'scripts:libraries'])

gulp.task 'scripts:coffee', ->
    gulp.src('src/**/*.coffee')
        .pipe(plumber())
        .pipe(coffee())
        .pipe(concat('bc.app.js'))
        .pipe(gulp.dest('dist/js'))

gulp.task 'scripts:libraries', ->
    sources = [
        'src/lib/mithril/mithril.js'
        'src/lib/mithril-di/mithril-di.js'
    ]
    gulp.src(sources, base: 'src')
        .pipe(concat('bc.dependencies.js'))
        .pipe(gulp.dest('dist/js'))
