var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

// livepreview- http://localhost:3090/api/live_preview
router.get('/', function (req, res) {
    var selectStatement = `select BASE_LOC_ID,item_name,count(*) as COUNT
from item_tbl
group by 
BASE_LOC_ID,ITEM_NAME order by BASE_LOC_ID`;
    getItems(selectStatement, req, res);

});



module.exports = router;

function getItems(selectStatement, req, res) {

    var doConnect = function (cb) {
        dbConfig.doConnect(function (err, conn) {
            cb(null, conn);
        });
    };

    var doSelect = function (conn, cb) {
        dbConfig.doSelect(conn, selectStatement, function (err, result) {
            if (err) {
                console.log('Error in execution of select statement' + err.message);
                return cb(err, conn);
            } else {
                var json_arg = [];
                var data = [];
                var ref_value = result.rows[0]["BASE_LOC_ID"];

                var j;

                for (var i in result.rows) {

                    if (result.rows[i]['BASE_LOC_ID'] == ref_value)
                    {
                        item_name = result.rows[i]['ITEM_NAME'];

                        json_arg.push(
                                {"NAME": item_name, "COUNT": result.rows[i]['COUNT'], "TOTAL": "12"}
                        );
                    } else
                    {
                        var content = {"SHELF_ID": ref_value, "ITEMS":json_arg};
                         //console.log(content);
                         
                        data.push(content);
                        json_arg = [];
                        ref_value = result.rows[i]["BASE_LOC_ID"];

                        item_name = result.rows[i]['ITEM_NAME'];

                        json_arg.push(
                                {"NAME": item_name, "COUNT": result.rows[i]['COUNT'], "TOTAL": "12"}
                        );
                    }

                }
                var content = {"SHELF_ID": ref_value, "ITEMS":  json_arg};
                data.push(content);
                console.log(content['ITEMS']);
                res.status(200).json(data);
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
