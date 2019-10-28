var respUtil = require("../util/respUtil");
var timeUtil = require("../util/timeUtil");
var tagsDao = require("../dao/tagsDao");
var blogDao = require("../dao/blogDao");
var tagBlogMappingDao = require("../dao/tagBlogMappingDao")
var captcha = require("svg-captcha");
var url = require("url");

var path = new Map();

function queryRandomTags(request, response) {
    tagsDao.queryRandomTags(function (result) {
        result.sort(function () {
            return Math.random() > 0.5 ? true : false;
        })
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '获取成功', result));
        response.end();
    })
}
path.set('/queryRandomTags', queryRandomTags);

function queryByTag(request, response) {

    var params = url.parse(request.url, true).query;
    tagsDao.queryTag(params.tag, function (result) {
        if(result == null || result.length == 0) {
            response.writeHead(404);
            response.write(respUtil.writeResult('fail', '获取失败', null));
            response.end();
        } else {
            tagBlogMappingDao.queryByTag(result[0].id, parseInt(params.page), parseInt(params.pageSize),function (result) {
                if(result == null || result.length == 0) {
                    response.writeHead(404);
                    response.write(respUtil.writeResult('fail', '获取失败', null));
                    response.end();
                } else {
                    var blogList = [];
                    for (var i = 0; i < result.length; i ++ ) {
                        blogDao.queryBlogById(result[i].blog_id,function (result) {
                                blogList.push(result[0]);
                        })
                    }
                    getResult(blogList, result.length, response)
                }
            })
        }
    })

}
path.set('/queryByTag', queryByTag);

function getResult(blogList, len, response) {
    if(blogList.length < len) {
        setTimeout(function () {
            getResult(blogList, len, response);
        }, 10)
    } else {
        for (var i = 0; i < blogList.length; i ++) {
            blogList[i].content = blogList[i].content.replace(/<img[\w\W]*">/g, "");
            blogList[i].content = blogList[i].content.replace(/<[\w\W]{1,5}>/g, "");
            blogList[i].content = blogList[i].content.substring(0, 300);
        }
        response.writeHead(200);
        response.write(respUtil.writeResult('fail', '查询成功', blogList));
        response.end();
    }
}

function queryCountByTag(request, response) {
    var params = url.parse(request.url, true).query;
    tagsDao.queryTag(params.tag, function (result) {
        if(result == null || result.length == 0) {
            response.writeHead(404);
            response.write(respUtil.writeResult('fail', '获取失败', null));
            response.end();
        } else {
            tagBlogMappingDao.queryCountByTag(result[0].id,  function (result) {
                response.writeHead(200);
                response.write(respUtil.writeResult('success', '获取成功', result));
                response.end();
            })
        }
    });

}
path.set('/queryCountByTag', queryCountByTag);

module.exports.path = path;