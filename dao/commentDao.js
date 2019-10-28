var dbutil = require("./dbutil");


function  insertComment(blogId, parent, parentName, userName, comments, email, ctime, utime, success) {
    var insertSql = "insert into comments(`blog_id`, `parent`, `parent_name`, `user_name`, `comments`, `email`, `ctime`, `utime`) values(?, ?, ?, ?, ?, ?, ?, ?);";
    var params = [blogId, parent, parentName, userName, comments, email, ctime, utime];
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

function  queryCommentsByBlogId(blogId, success) {
    var insertSql = "select * from comments where blog_id = ?;";
    var params = [blogId];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(insertSql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('获取失败:' + error);
        }
    });
    connection.end();
}

function  queryCommentsCountByBlogId(blogId, success) {
    var insertSql = "select count(1) as count from comments where blog_id = ?;";
    var params = [blogId];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(insertSql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('获取失败:' + error);
        }
    });
    connection.end();
}

function  queryNewComments(size, success) {
    var querySql = "select * from comments order by ctime desc limit ?;";
    var params = [size];
    var connection = dbutil.createConnetion();
    connection.connect();
    connection.query(querySql, params, function (error, result) {
        if(error == null) {
            success(result)
        } else {
            console.log('获取失败:' + error);
        }
    });
    connection.end();
}

module.exports = {
   "insertComment": insertComment,
    "queryCommentsByBlogId": queryCommentsByBlogId,
    "queryCommentsCountByBlogId": queryCommentsCountByBlogId,
    "queryNewComments": queryNewComments
}