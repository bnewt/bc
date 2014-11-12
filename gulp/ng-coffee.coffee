gutil = require('gulp-util')
coffee = require('gulp-coffee')
ngAnnotate = require('gulp-ng-annotate')

# ng-coffee:
# takes a stream and returns a stream piped through coffee-script compiler and ngAnnotate plugin

module.exports = (stream) ->
    return stream
        .pipe(coffee()).on('error', gutil.log)
        .pipe ngAnnotate(add: true, single_quotes: true)