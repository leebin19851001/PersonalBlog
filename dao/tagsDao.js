var dbutil = require("./dbutil");

function  insertTag(tag, ctime, utime, success) {
    var insertSql = "insert into tags(`tag`, `ctime`, `utime`) values(?, ?, ?);";
    var params = [tag, ctime, utime];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(insertSql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('插入失败:' + error);
        }
    });
    connection.end();
}

function queryTag(tag, success) {
    var querySql = "select * from tags where tag = ?;";
    var params = [tag];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(querySql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('未找到数据:' + error);
        }
    });
    connection.end();
}

function queryRandomTags(success) {
    var querySql = "select * from tags;";
    var params = [];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(querySql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('未找到数据:' + error);
        }
    });
    connection.end();
}
module.exports = {
    "insertTag": insertTag,
    "queryTag": queryTag,
    "queryRandomTags": queryRandomTags
}