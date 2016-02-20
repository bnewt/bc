transformTools = require('browserify-transform-tools')
capitalize = require('capitalize')

glob = require('glob')

_ = require('lodash')

files = glob.sync('src/img/**/*.jpg')
			.map (file) -> file.replace('src/', '')
			.filter (file) -> file != 'img/banner.jpg'
			.filter (file) -> file != 'img/bill-bolte.jpg'

files.sort(require('javascript-natural-sort'))

removeImgDirectory = (path) -> path.replace('img/', '')
removeRestOfPath = (path) -> path.replace(/\/.*$/, '') # remove everything after first '/'
makeHumanReadable = (imageType) -> capitalize.words(imageType.replace('-', ' '))

imagesIndex = _.groupBy(files, (file) -> makeHumanReadable(removeRestOfPath(removeImgDirectory(file))))

module.exports = transformTools.makeRequireTransform 'imageIndexTransform', { evaluateArguments: true }, (args, opts, cb) ->
  if args[0] is './images.json'
    cb(null, JSON.stringify(imagesIndex, null, 2))
  else
    cb()
