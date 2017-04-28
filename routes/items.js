var express = require('express');
var router = express.Router();
var async = require('async');
var dbConfig = require('../dbconfig');

//display all items- http://localhost:3091/api/items
router.get('/', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});


// count of misplaced items: http://localhost:3091/api/items/misplaced
router.get('/misplaced', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});


// count of items in shelves items: http://localhost:3091/api/items/in_shelf
router.get('/in_shelf', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});


// count of shelves: http://localhost:3091/api/items/number_shelves
router.get('/number_shelves', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

// count of items: http://localhost:3091/api/items/number_items
router.get('/number_items', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

// Total items in shelf: http://localhost:3091/api/items/total_in_shelf
router.get('/total_in_shelf', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

// Total items in shelf: http://localhost:3091/api/items/not_in_shelf
router.get('/not_in_shelf', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

//dropdown-tags with item id nul: http://localhost:3091/api/items/dropdown_tag
router.get('/dropdown_tag', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});


//dropdown-item id: http://localhost:3091/api/items/dropdown_item_id
router.get('/dropdown_item_id', function (req, res) {
    var selectStatement = `SELECT * FROM ITEM_TBL`;
    getItems(selectStatement, req, res);
});

///*ASSET STATUS*/
//router.get('/statusCount', function (req, res) {
//    var selectStatement = `SELECT STATUS,COUNT(*) AS COUNT FROM ITEM_TBL GROUP BY STATUS`;
//    getItems(selectStatement, req, res);
//});

//router.get('/:id', function (req, res) {
//    var selectStatement = `SELECT * FROM ITEM_TBL WHERE ITEM_ID='${req.params.id}'`;
//    getItems(selectStatement, req, res);
//});

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
