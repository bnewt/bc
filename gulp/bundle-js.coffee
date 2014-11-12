gulp = require('gulp')
concat = require('gulp-concat')
uglify = require('gulp-uglify')
rename = require('gulp-rename')

# bundle-js:
# concats and minifies a stream of javascript
# outputs both the minfied and nonminified versions

module.exports = (stream, filename) ->
    stream
        .pipe(concat(filename))
        .pipe(gulp.dest('dist/app'))
        .pipe(uglify())
        .pipe(rename(extname: 'min.js'))
        .pipe(gulp.dest('dist/app'))