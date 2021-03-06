var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// display- http://localhost:3091/api/crud_items
router.get('/', function (req, res) {
    var selectStatement = `
SELECT 
  B.UUID,
  A.ITEM_NAME,
  B.ITEM_ID,
  A.ITEM_CATEGORY,
  A.ITEM_TYPE,
  A.BASE_LOC_ID,
  C.LOC_NAME,
  B.TYPE
FROM 
  ITEM_TBL A,
  TAG_TBL B,
  LOCATION_TBL C
WHERE
  A.ITEM_ID=B.ITEM_ID
  and C.LOC_ID=A.LOC_ID`;
    getItems(selectStatement, req, res);
});

//insert- http://localhost:3091/api/crud_items
router.post('/', function (req, res) {
    var selectStatement = `INSERT INTO ITEM_TBL(ITEM_ID,ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID) VALUES('${req.body.ITEM_ID}','${req.body.ITEM_NAME}', '${req.body.ITEM_CATEGORY}', '${req.body.ITEM_TYPE}', '${req.body.BASE_LOC_ID}', '${req.body.BASE_LOC_ID}')`;
       getItems(selectStatement, req, res);
    selectstatement=`update TAG_TBL set ITEM_ID='${req.body.ITEM_ID}',TYPE='${req.body.TYPE}' where UUID='${req.body.UUID}'`;
    getItems(selectstatement, req, res);
       res.send('ok');
});

//delete- http://localhost:3091/api/crud_items
router.delete('/', function (req, res) {
    var selectStatement = `DELETE FROM ITEM_TBL WHERE ITEM_ID='${req.body.ITEM_ID}'`;
    getItems(selectStatement,req, res);
     selectstatement=`update TAG_TBL set ITEM_ID='' where UUID='${req.body.UUID}'`;
    getItems(selectstatement, req, res);
    res.send('ok');
});
//update- http://localhost:3091/api/crud_items
router.put('/', function (req, res) {
    var selectStatement = `UPDATE ITEM_TBL A SET A.ITEM_NAME='${req.body.ITEM_NAME}',A.ITEM_CATEGORY='${req.body.ITEM_CATEGORY}',A.ITEM_TYPE='${req.body.ITEM_TYPE}',A.BASE_LOC_ID='${req.body.BASE_LOC_ID}',A.LOC_ID='${req.body.LOC_ID} WHERE A.ITEM_ID='${req.body.ITEM_ID}'`;
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
