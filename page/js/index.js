var everyDay = new Vue({
    el: "#every_day",
    data: {
        content: 'adfasdfasdfasdfasf沙发上的'
    },
    computed: {
        getContent: function () {
            return this.content;
        }
    },
    created: function () {
        //请求数据 给content赋值
        axios({
            method: 'get',
            url: '/queryEveryDay'
        }).then(function (res) {
            everyDay.content = res.data.data[0].content;
            console.log(res.data.data[0].content);
        }).catch(function (res) {
            console.log("请求失败!!!!!!");
        })
    }
});

var articleList = new Vue({
    el: "#article_list",
    data: {
        page: 1,
        pageSize: 5,
        count: 100,
        pageNumList: [],
        articleList: []
    },
    computed: {
        jumpTo: function () {
            return function (page) {
                this.getPage(page, this.pageSize);
            }
        },
        getPage: function () {
            return function (page, pageSize) {
                var searchUrlParams = location.search.indexOf("?") > -1 ? location.search.split('?')[1].split('&') : "";
                if (searchUrlParams == "") {
                    axios({
                        method: 'get',
                        url: "/queryBlogByPage?page=" + (page - 1) + "&pageSize=" + pageSize
                    }).then(function (resp) {
                        var result = resp.data.data;
                        var list = [];
                        for (var i = 0; i < result.length; i ++) {
                            var temp = {};
                            temp.title = result[i].title;
                            temp.content = result[i].content;
                            temp.date = result[i].ctime;
                            temp.views = result[i].views;
                            temp.tags = result[i].tags;
                            temp.id = result[i].id;
                            temp.link = "/blog_detail.html?bid=" + result[i].id;
                            list.push(temp);
                        }
                        articleList.articleList = list;
                        articleList.page = page;
                    }).catch(function (resp) {
                        console.log("请求错误")
                    });
                    axios({
                        method: 'get',
                        url: '/queryBlogCount'
                    }).then(function (res) {
                        articleList.count = res.data.data[0].count;
                        articleList.generatePageTool;
                    }).catch(function (res) {
                        console.log(res)
                    });
                } else {
                    var tag = "";
                    var word = ""
                    for (var i = 0; i < searchUrlParams.length; i ++) {
                        if (searchUrlParams[i].split("=")[0] == 'tag') {
                            try {
                                tag = searchUrlParams[i].split('=')[1];
                            } catch (e) {
                                console.log(e);
                            }
                        }
                        if (searchUrlParams[i].split("=")[0] == 'word') {
                            try {
                                word = searchUrlParams[i].split('=')[1];
                            } catch (e) {
                                console.log(e);
                            }
                        }
                    }
                    if(tag == "" && word == "") {
                        return;
                    } else if(word == "") {
                        console.log('tag=' +tag, 'word=' +word,'==========')
                        axios({
                            method: 'get',
                            url: "/queryByTag?page=" + (page - 1) + "&pageSize=" + pageSize + "&tag=" + tag
                        }).then(function (resp) {
                            var result = resp.data.data;
                            var list = [];
                            for (var i = 0; i < result.length; i ++) {
                                var temp = {};
                                temp.title = result[i].title;
                                temp.content = result[i].content;
                                temp.date = result[i].ctime;
                                temp.views = result[i].views;
                                temp.tags = result[i].tags;
                                temp.id = result[i].id;
                                temp.link = "/blog_detail.html?bid=" + result[i].id;
                                list.push(temp);
                            }
                            articleList.articleList = list;
                            articleList.page = page;
                        }).catch(function (resp) {
                            console.log("请求错误")
                        });
                        axios({
                            method: 'get',
                            url: '/queryCountByTag?tag=' + tag
                        }).then(function (res) {
                            articleList.count = res.data.data[0].count;
                            articleList.generatePageTool;
                        }).catch(function (res) {
                            console.log(res)
                        });
                    } else {
                        axios({
                            method: 'get',
                            url: "/queryByWord?page=" + (page - 1) + "&pageSize=" + pageSize + "&word=" + word
                        }).then(function (resp) {
                            var result = resp.data.data;
                            var list = [];
                            for (var i = 0; i < result.length; i ++) {
                                var temp = {};
                                temp.title = result[i].title;
                                temp.content = result[i].content;
                                temp.date = result[i].ctime;
                                temp.views = result[i].views;
                                temp.tags = result[i].tags;
                                temp.id = result[i].id;
                                temp.link = "/blog_detail.html?bid=" + result[i].id;
                                list.push(temp);
                            }
                            articleList.articleList = list;
                            articleList.page = page;
                        }).catch(function (resp) {
                            console.log("请求错误")
                        });
                        axios({
                            method: 'get',
                            url: '/queryCountByWord?word=' + word
                        }).then(function (res) {
                            articleList.count = res.data.data[0].count;
                            articleList.generatePageTool;
                        }).catch(function (res) {
                            console.log(res)
                        });
                    }
                }

            }
        },
        generatePageTool: function () {
            var nowPage = this.page;
            var pageSize = this.pageSize;
            var totalCount = this.count;
            var result = [];
            result.push({text:"<<", page: '1'});
            if (nowPage > 2) {
                result.push({text: nowPage - 2, page: nowPage - 2});
            }
            if (nowPage > 1) {
                result.push({text: nowPage - 1, page: nowPage - 1});
            }
            result.push({text: nowPage, page: nowPage});
            if (nowPage + 1  <= (totalCount + pageSize - 1)  / pageSize) {
                result.push({text: nowPage + 1, page: nowPage + 1});
            }
            result.push({text:">>", page: Math.ceil((totalCount + pageSize - 1)  / pageSize)});
            this.pageNumList = result;
            return result;
        }
    },
    created: function () {
        this.getPage(this.page, this.pageSize);
    }
});