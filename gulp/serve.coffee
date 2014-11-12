express = require('express')

module.exports = (options = {}) ->

    options.port ?= 8080
    options.directory ?= 'dist'

    app = express()
    app.use(express.static(options.directory))
    app.listen(options.port)