express = require('express')
app     = express()

app.configure ->
	app.use(express.static(__dirname + '/dist'))   # set the static files location /public/img will be /img for users
	app.use(express.logger('dev'))				         # log every request to the console
	app.use(express.bodyParser()) 						     # pull information from html in POST
	app.use(express.methodOverride()) 					   # simulate DELETE and PUT

app.listen(8080)
