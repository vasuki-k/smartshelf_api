var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// Items Information
router.get('/', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

/*ASSET UTILISATION*/
router.get('/assetUtilisation', function (req, res) {

var selectStatement = `SELECT D.ITEM_NAME,
  C.SUM
FROM
  (SELECT A.UUID,
    SUM((A.READ_TIME - A.PREV_READ_TIME) / 60000) AS SUM
  FROM AT_EVENT_TBL A
  WHERE A.STATUS LIKE 'Exit'
  GROUP BY A.UUID
  ORDER BY SUM DESC
  ) C,
  TAG_TBL B,ITEM_TBL D
WHERE  C.UUID = B.UUID AND D.ITEM_ID=B.ITEM_ID
AND RowNum  <= 5`;		
    getItems(selectStatement, req, res);
});
/*ASSET STATUS*/
router.get('/statusCount', function (req, res) {
    var selectStatement = `SELECT STATUS,COUNT(*) AS COUNT FROM ITEM_TBL GROUP BY STATUS`;
    getItems(selectStatement, req, res);
});


router.get('/:id', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL WHERE ITEM_ID='${req.params.id}'`;
    getItems(selectStatement, req, res);
});
/*Asset updation-CRUD*/
router.get('/assetUpdation', function (req, res) {
    var selectStatement = `SELECT 
  B.UUID,
  A.ITEM_NAME,
  B.ITEM_ID,
  A.ITEM_CATEGORY,
  A.ITEM_TYPE,
  A.BASE_LOC_ID,
  B.TYPE
FROM 
  ITEM_TBL A,
  TAG_TBL B
WHERE
  A.ITEM_ID=B.ITEM_ID`;
    getItems(selectStatement, req, res);
});



/*TRANSIT AGING
router.get('/transitAging', function (req, res) {
    var selectStatement = `SELECT LOC_ID,COUNT(*) AS COUNT FROM ITEM_TBL GROUP BY LOC_ID`;
    getItems(selectStatement, req, res);
});
*/

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
