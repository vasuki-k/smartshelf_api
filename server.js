var express = require('express');
var app = express();
var bodyParser = require('body-parser');


app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());


var port = process.env.PORT || 3090;        // set our port

var router = express.Router();



app.use('/api', require('./routes'));

app.listen(port, function () {
    console.log('Listening on port ' + port);
});
