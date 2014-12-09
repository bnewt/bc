# ng-coffee:
# takes a stream and returns a stream piped through coffee-script compiler and ngAnnotate plugin

module.exports = (stream) ->
    return stream
        .pipe(plugins.coffee()).on('error', plugins.util.log)
        .pipe(plugins.ngAnnotate(add: true, single_quotes: true))