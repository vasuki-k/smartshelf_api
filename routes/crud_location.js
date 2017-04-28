var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// display- http://localhost:3091/api/crud_location
router.get('/', function (req, res) {
    var selectStatement = `
SELECT 
 *
FROM 
  LOCATION_TBL
`;
    getItems(selectStatement, req, res);
});
// insert- http://localhost:3091/api/crud_location
router.post('/', function (req, res) {
    var selectStatement = `INSERT INTO LOCATION_TBL VALUES('${req.body.LOC_ID }' , '${req.body.LOC_NAME}', '${req.body.LOC_TYPE}')`;
     getItems(selectStatement, req, res);
       res.send('ok');
});
//delete- http://localhost:3091/api/crud_location
router.delete('/', function (req, res) {
    var selectStatement = `DELETE FROM LOCATION_TBL WHERE LOC_ID LIKE '${req.body.LOC_ID}'`;
    console.log(req.body.LOC_ID);
    getItems(selectStatement,req, res);
    res.send('ok');
});
//update- http://localhost:3091/api/crud_location
router.put('/', function (req, res) {
    var selectStatement = `
                UPDATE 
                    LOCATION_TBL
                SET 
                    LOC_NAME='${req.body.LOC_NAME}',
                    LOC_TYPE='${req.body.LOC_TYPE}'
                    
                WHERE 
                LOC_ID='${req.body.LOC_ID}'`;
    
    getItems(selectStatement,req, res);

 res.send('ok');
});

module.exports = router;

function getItems(selectStatement, req, res) {

    var doConnect = function (cb) {
        dbConfig.doConnect(function (err, conn) {
            cb(null,conn);
        });
    };

    var doSelect = function (conn, cb) {
        dbConfig.doSelect(conn, selectStatement, function (err, result) {
            if (err) {
                console.log('Error in execution of select statement' + err.message);
                return cb(err, conn);
            } else {
                res.status(200).json(result.rows);
                return cb(null, conn);
            }
        });

    };

    async.waterfall(
            [
                doConnect,
                doSelect
            ],
            function (err, conn) {
                if (err) {
                    console.error("In waterfall error cb: ==>", err, "<==");
                    res.status(500).json({message: err});
                }
                if (conn)
                    dbConfig.dorelease(conn);
            });

}



