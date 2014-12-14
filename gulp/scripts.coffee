compileCoffeescript = require('./factories/compile-coffeescript')
ngAnnotate = require('./factories/compile-coffeescript')
bundleJs = require('./factories/bundle-js')

gulp.task('build:scripts', ['scripts:coffee', 'scripts:libraries'])

gulp.task 'scripts:coffee', ->
    gulp.src('src/**/*.coffee')
            .on('error', plugins.util.log)
        .pipe(compileCoffeescript())
        .pipe(ngAnnotate())
        .pipe(bundleJs('bolte-construction.js'))

gulp.task 'scripts:libraries', ->
    sources = [
        'src/lib/jquery/dist/jquery.js'
        'src/lib/slick-carousel/slick/slick.js'
        'src/lib/angular/angular.js'
        'src/lib/angular-route/angular-route.js'
        'src/lib/angular-animate/angular-animate.js'
        'src/lib/angular-strap/dist/angular-strap.js'
        'src/lib/angular-strap/dist/angular-strap.tpl.js'
        'src/lib/angular-bindonce/bindonce.js'
        'src/lib/angular-slick/dist/slick.js'
    ]
    gulp.src(sources)
        .pipe(bundleJs('dependencies.js'))