var dbutil = require('./dbutil');

function  insertTagBlogMapping(tagId, blogId, ctime, utime, success) {
    var insertSql = "insert into tag_blog_mapping(`tag_id`,`blog_id`, `ctime`, `utime`) values(?, ?, ?, ?);";
    var params = [tagId, blogId, ctime, utime];
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

function  queryByTag(tagId, page, pageSize, success) {
    var querySql = "select *  from tag_blog_mapping where tag_id = ? limit ?, ?;";
    var params = [tagId, page * pageSize, pageSize];
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


function  queryCountByTag(tagId, success) {
    var querySql = "select count(1) as count from tag_blog_mapping where tag_id = ?;";
    var params = [tagId];
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
    "insertTagBlogMapping": insertTagBlogMapping,
    "queryByTag": queryByTag,
    "queryCountByTag": queryCountByTag
}