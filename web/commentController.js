var commentDao = require("../dao/commentDao");
var respUtil = require("../util/respUtil");
var timeUtil = require("../util/timeUtil");
var tagsDao = require("../dao/tagsDao");
var tagBlogMapping = require("../dao/tagBlogMappingDao");
var captcha = require("svg-captcha");
var url = require("url");

var path = new Map();

function addComment(request, response) {
    var params = url.parse(request.url, true).query;
    commentDao.insertComment(parseInt(params.bid), parseInt(params.parent), params.parentName, params.userName,params.content, params.email, timeUtil.getNow(), timeUtil.getNow(), function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '插入成功', null));
        response.end();
    })
}
path.set('/addComment', addComment);

function queryRandomCode(request, response) {
    var img = captcha.create({fontSize: 50, width: 100, height: 34});

    response.writeHead(200);
    response.write(respUtil.writeResult('success', '获取验证码图片成功', img));
    response.end();
}
path.set('/queryRandomCode', queryRandomCode);


function queryCommentsByBlogId(request, response) {
    var params = url.parse(request.url, true).query;
    commentDao.queryCommentsByBlogId(parseInt(params.bid),function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '获取成功', result));
        response.end();
    })
}
path.set('/queryCommentsByBlogId', queryCommentsByBlogId);

function queryCommentsCountByBlogId(request, response) {
    var params = url.parse(request.url, true).query;
    commentDao.queryCommentsCountByBlogId(parseInt(params.bid),function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '获取成功', result));
        response.end();
    })
}
path.set('/queryCommentsCountByBlogId', queryCommentsCountByBlogId);

function queryNewComments(request, response) {
    commentDao.queryNewComments(5,function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '获取成功', result));
        response.end();
    })
}
path.set('/queryNewComments', queryNewComments);
module.exports.path = path;