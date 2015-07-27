del  = require('del')
gulp.task 'clean', ->
    del.sync([ 'dist' ])
