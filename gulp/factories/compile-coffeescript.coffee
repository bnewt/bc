module.exports =
    lazypipe()
        .pipe(plugins.plumber)
        .pipe(plugins.coffee)