var express = require('express');
var router = express.Router();
var oracledb = require('oracledb');
var dbConnection = require('../dbConnection');


// Total Energy Info
router.get('/', function (req, res) {
    selectDevices(req, res);
});

// Total Energy vs Threshold Info
router.post('/', function (req, res) {
//    console.log(req.body);
//    res.send('done');
    addDevices(req, res);
});

// Total Energy vs Threshold Info
router.delete('/', function (req, res) {
//    console.log(req.body);
//    res.send('done');
    removeDevices(req, res);
});

router.put('/', function (req, res) {
    console.log(req.body.device_id);
//    res.send('done');
    updateDevices(req, res);
});



module.exports = router;

function selectDevices(req, res) {
    dbConnection.handleDatabaseOperation(req, res, function (request, response, connection) {
        var selectStatement = "SELECT * FROM DEV_TBL";
        connection.execute(selectStatement
                , [], {
            outFormat: oracledb.OBJECT // Return the result as Object
        }, function (err, result) {
            if (err) {
                console.log('Error in execution of select statement' + err.message);
                response.writeHead(500, {'Content-Type': 'application/json'});
                response.end(JSON.stringify({
                    status: 500,
                    message: "Error getting the employees for the department ",
                    detailed_message: err.message
                })
                        );
            } else {
                console.log('db response is ready ' + result.rows);
                response.writeHead(200, {'Content-Type': 'application/json'});
                response.end(JSON.stringify(result.rows));

            }
            dbConnection.doRelease(connection);
        }
        );
    });
}

function addDevices(req, res) {
    dbConnection.handleDatabaseOperation(req, res, function (request, response, connection) {
        var table = 'DEV_TBL';
        var insertArray = [req.body.device_id, req.body.hardware_id, req.body.location, req.body.description];
        var bindVars = "(:1,:2,:3,:4)";

        connection.execute(
                "INSERT INTO " + table + " VALUES " + bindVars,
                insertArray, // Bind values
                {autoCommit: true}, // Override the default non-autocommit behavior
                function (err, result) {
                    if (err) {
                        console.error(err.message);
                        connection.release(
                                function (err) {
                                    if (err) {
                                        console.error(err.message);
                                    }
                                });
                        return;
                    }
                    console.log("Rows rowsAffected: " + result.rowsAffected);
                    response.writeHead(200, {'Content-Type': 'application/json'});
                    response.end(JSON.stringify(result.rows));
                    
                    connection.release(
                            function (err) {
                                if (err) {
                                    console.error(err.message);
                                }
                            }
                    );
                });
    });
}


function removeDevices(req, res) {
    dbConnection.handleDatabaseOperation(req, res, function (request, response, connection) {
        var table = 'DEV_TBL';
        var insertArray = [req.body.device_id];
        var bindVars = "(:1)";

        connection.execute(
                "DELETE FROM  " + table + " WHERE DEVICE_ID = " + bindVars,
                insertArray, // Bind values
                {autoCommit: true}, // Override the default non-autocommit behavior
                function (err, result) {
                    if (err) {
                        console.error(err.message);
                        connection.release(
                                function (err) {
                                    if (err) {
                                        console.error(err.message);
                                    }
                                });
                        return;
                    }
                    console.log("Rows rowsAffected: " + result.rowsAffected);
                    response.writeHead(200, {'Content-Type': 'application/json'});
                    response.end(JSON.stringify(result.rows));
                    
                    connection.release(
                            function (err) {
                                if (err) {
                                    console.error(err.message);
                                }
                            }
                    );
                });
    });
}


function updateDevices(req, res) {
    dbConnection.handleDatabaseOperation(req, res, function (request, response, connection) {
        var table = 'DEV_TBL';
        var updateArray = [ req.body.hardware_id,  req.body.description, req.body.location,req.body.device_id];
        
        connection.execute(
                "UPDATE " + table 
                +" SET HARDWARE_Id = :hardware_id,"                
                +" DESCRIPTION = :description,"
                +" LOC_ID = :location"        
                +" WHERE DEVICE_ID = :device_id",
                updateArray, // Bind values
                {autoCommit: true}, // Override the default non-autocommit behavior
                function (err, result) {
                    if (err) {
                        console.error(err.message);
                        connection.release(
                                function (err) {
                                    if (err) {
                                        console.error(err.message);
                                    }
                                });
                        return;
                    }
                    console.log("Rows rowsAffected: " + result.rowsAffected);
                    response.writeHead(200, {'Content-Type': 'application/json'});
                    response.end(JSON.stringify(result.rows));
                    
                    connection.release(
                            function (err) {
                                if (err) {
                                    console.error(err.message);
                                }
                            }
                    );
                });
    });
}