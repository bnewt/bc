q = require('q')
del  = require('del')
gulp.task 'clean', ->
    d = q.defer()
    del([ 'dist' ], d.resolve)
    return d.promise