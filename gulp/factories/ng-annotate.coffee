module.exports =
    lazypipe()
        .pipe -> plugins.ngAnnotate( add: true, single_quotes: true)