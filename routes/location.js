var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// Items Information
router.get('/', function (req, res) {
    var selectStatement = `SELECT * FROM LOCATION_TBL`;
    getItems(selectStatement, req, res);
});
/*CHECK POINT*/
router.get('/checkPoint', function (req, res) {
    var selectStatement = `SELECT STATUS,COUNT(*) AS COUNT FROM AT_EVENT_TBL GROUP BY STATUS`;
    getItems(selectStatement, req, res);
});

/*ASSET DISTRIBUTION*/
router.get('/statusCount', function (req, res) {
    var selectStatement = `SELECT LOC_ID,COUNT(*) AS COUNT FROM ITEM_TBL GROUP BY LOC_ID`;
    getItems(selectStatement, req, res);
});

router.get('/:id', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL WHERE LOC_ID='${req.params.id}'`;
    getItems(selectStatement, req, res);
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
