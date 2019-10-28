var dbutil = require('./dbutil');

function  insertEveryDay(content, ctime, success) {
    var insertSql = "insert into every_day(`content`, `ctime`) values(?, ?);";
    var params = [content, ctime];
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


function  queryEveryDay(success) {
    var querySql = "select * from every_day order by id desc limit 1";
    var params = [];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(querySql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('查询失败:' + error);
        }
    });
    connection.end();
}
module.exports = {
    "insertEveryDay": insertEveryDay,
    "queryEveryDay": queryEveryDay
}