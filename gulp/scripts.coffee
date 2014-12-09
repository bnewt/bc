gulp     = require('gulp')
plumber  = require('gulp-plumber')
ngCoffee = require('./ng-coffee')
bundleJs = require('./bundle-js')

gulp.task('scripts', ['scripts:coffee', 'scripts:libraries'])

gulp.task 'scripts:coffee', ->
    coffee = ngCoffee(gulp.src('src/**/*.coffee').pipe(plumber()))
    bundleJs(coffee, 'bolte-construction.js')

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
    bundleJs(gulp.src(sources), 'dependencies.js')