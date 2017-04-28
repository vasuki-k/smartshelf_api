var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// display
router.get('/', function (req, res) {
    var selectStatement = `
SELECT 
  B.UUID,

  B.ITEM_ID,

  

  B.TYPE
FROM 

  TAG_TBL B
`;
    getItems(selectStatement, req, res);
});

//insert
router.post('/', function (req, res) {
    var selectStatement = `INSERT INTO TAG_TBL VALUES('${req.body.UUID }' , '${req.body.TYPE}', '${req.body.ITEM_ID}')`;
     getItems(selectStatement, req, res);
    
       res.send('ok');
});

//delete
router.delete('/', function (req, res) {
 
     var selectStatement = `DELETE FROM TAG_TBL WHERE UUID='${req.body.UUID}'`;
    getItems(selectStatement,req, res);
    res.send('ok');
});
//update
router.put('/', function (req, res) {
   
  selectStatement=`  UPDATE 
                    TAG_TBL B
                SET 
                    B.ITEM_ID='${req.body.ITEM_ID}',
    B.TYPE='${req.body.TYPE}'
                    
                WHERE  B.UUID LIKE '${req.body.UUID}' `;
  getItems(selectStatement,req, res);
    //console.log(item_id);

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
