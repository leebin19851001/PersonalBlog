
var path = new Map();
var everyDayDao = require("../dao/everyDayDao");
var respUtil = require("../util/respUtil");
var timeUtil = require("../util/timeUtil");

function  editEveryDay(request, response) {
    request.on('data', function (data) {

        everyDayDao.insertEveryDay(data.toString().trim(), timeUtil.getNow(), function (result) {
            response.writeHead(200);
            response.write(respUtil.writeResult("success", "添加成功", null));
            response.end();
        })
    })
}
path.set('/editEveryDay', editEveryDay);

function queryEveryDay(request, response) {
    everyDayDao.queryEveryDay( function (result) {
        response.writeHead(200);
        response.write(respUtil.writeResult("success", "查询成功", result));
        response.end();
    })
}
path.set('/queryEveryDay', queryEveryDay);

module.exports.path = path;