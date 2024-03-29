var blogDao = require("../dao/blogDao");
var respUtil = require("../util/respUtil");
var timeUtil = require("../util/timeUtil");
var tagsDao = require("../dao/tagsDao");
var tagBlogMapping = require("../dao/tagBlogMappingDao");
var url = require("url");

var path = new Map();
function queryHotBlog(request, response) {
    blogDao.queryHotBlog(5,function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    })
}
path.set('/queryHotBlog', queryHotBlog);

function queryAllBlog(request, response) {
    blogDao.queryAllBlog(function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    })
}
path.set('/queryAllBlog', queryAllBlog);

function queryBlogById(request, response) {
    var params = url.parse(request.url, true).query;
    blogDao.queryBlogById(params.bid, function (result) {
        result[0].ctime = timeUtil.timestampToTime(result[0].ctime);
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
        blogDao.addViews(params.bid, function (result) {

        });
    })
}
path.set('/queryBlogById', queryBlogById);

function queryBlogCount(request, response) {
    blogDao.queryBlogCount(function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    });
}
path.set('/queryBlogCount', queryBlogCount);


function queryBlogByPage(request, response) {
    var params = url.parse(request.url, true).query;
    blogDao.queryBlogByPage(parseInt(params.page), parseInt(params.pageSize), function (result) {
        for (var i = 0; i < result.length; i ++) {
            result[i].content = result[i].content.replace(/<img[\w\W]*">/g, "");
            result[i].content = result[i].content.replace(/<[\w\W]{1,5}>/g, "");
            result[i].content = result[i].content.substring(0, 300);
        }
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    });
}
path.set('/queryBlogByPage', queryBlogByPage);


function  editBlog(request, response) {
    var params = url.parse(request.url, true).query;
    var tags = params.tags.replace(/ /g, "").replace(/，/g, ",");
    request.on("data", function (data) {
        blogDao.insertBlog(params.title, data.toString(),tags, 0, timeUtil.getNow(), timeUtil.getNow(), function (result) {
            response.writeHead(200);
            response.write(respUtil.writeResult('success', '插入成功', null));
            response.end();
            var blogId = result.insertId;
            var tagList = tags.split(",");
            for (var i = 0; i < tagList.length; i ++) {
                if (tagList[i] == "") {
                    continue;
                }
                queryTag(tagList[i], blogId)
            }
        })
    })
}
path.set('/editBlog', editBlog);


function  queryTag(tag, blogId) {
    tagsDao.queryTag(tag, function (result) {
        if(result == null || result.length == 0) {
            insertTag(tag, blogId);
        } else {
            tagBlogMapping.insertTagBlogMapping(result[0].id, blogId, timeUtil.getNow(), timeUtil.getNow(), function (result) {
                
            });
        }

    })
}

function  insertTag(tag, blogId) {
    tagsDao.insertTag(tag, timeUtil.getNow(),timeUtil.getNow(), function (result) {
        insertTagBlogMapping(result.insertId, blogId);
    })
}

function insertTagBlogMapping(tagId, blogId) {
    tagBlogMapping.insertTagBlogMapping(tagId, blogId, timeUtil.getNow(), timeUtil.getNow(), function (result) {

    })
}


function queryByWord(request, response) {
    var params = url.parse(request.url, true).query;
    blogDao.queryByWord(params.word, parseInt(params.page), parseInt(params.pageSize), function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    });

}
path.set('/queryByWord', queryByWord);


function queryCountByWord(request, response) {
    var params = url.parse(request.url, true).query;
    blogDao.queryCountByWord(params.word, function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult('success', '查询成功', result));
        response.end();
    });

}
path.set('/queryCountByWord', queryCountByWord);


module.exports.path = path;