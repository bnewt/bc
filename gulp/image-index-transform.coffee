transformTools = require('browserify-transform-tools')

glob = require('glob')

_ = require('lodash')

files = glob.sync('src/img/**/*.jpg').map (file) -> file.replace('src/', '')

imagesIndex = _.groupBy(files, (file) -> file.replace('img/', '').replace(/\/.*$/, ''))

#console.log( JSON.stringify imagesIndex )

# imagesIndex = {
#   kitchen: [ 'http://lorempixel.com/output/city-q-c-640-480-8.jp', 'http://lorempixel.com/output/city-q-c-640-480-8.jp' ],
#   bathroom: [ 'http://lorempixel.com/output/city-q-c-640-480-8.jp', 'http://lorempixel.com/output/city-q-c-640-480-8.jp' ]
# }

module.exports = transformTools.makeRequireTransform 'imageIndexTransform', { evaluateArguments: true }, (args, opts, cb) ->
  #console.log 'running imageIndexTransform'
  if args[0] is './images.json'
    #console.log "./images.json transform #{ JSON.stringify imagesIndex }"
    cb(null, JSON.stringify(imagesIndex, null, 2))
  else
    cb()
