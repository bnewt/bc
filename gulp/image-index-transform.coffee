transformTools = require('browserify-transform-tools')

imagesIndex =
  kitchen: [ 'http://lorempixel.com/output/city-q-c-640-480-8.jp', 'http://lorempixel.com/output/city-q-c-640-480-8.jp' ],
  bathroom: [ 'http://lorempixel.com/output/city-q-c-640-480-8.jp', 'http://lorempixel.com/output/city-q-c-640-480-8.jp' ]

module.exports = transformTools.makeRequireTransform 'imageIndexTransform', { evaluateArguments: true }, (args, opts, cb) ->
  if opts.file.match /image-service.js$/ and args[0] is './images.json'
    # console.log JSON.stringify(args)
    # console.log "args[0] is './images.json': #{ args[0] is './images.json' }"
    # console.log "args[0].match /images\.json/: #{ args[0].match /images\.json/ }"
    replaceWith  = JSON.stringify(imagesIndex, null, 2)
    #console.log "Replacing #{ args[0] } with #{replaceWith}"
    cb(null, replaceWith)
  else
    cb()
