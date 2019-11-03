

var blogDetail = new Vue({
    el: '#blog_detail',
    data : {
        title: '',
        content: '',
        ctime: '',
        views: '',
        tags: ''
    },
    computed: {
        
    },
    created: function () {
        var searchUrlParams = location.search.indexOf("?") > -1 ? location.search.split('?')[1].split('&') : "";
        if (searchUrlParams == "") {
            return
        }
        var bid = -10;
        for (var i = 0; i < searchUrlParams.length; i ++) {
            if (searchUrlParams[i].split("=")[0] == 'bid') {
                try {
                    bid = parseInt(searchUrlParams[i].split('=')[1]);
                } catch (e) {
                    console.log(e);
                }
            }
        }
        axios({
            method: 'get',
            url: '/queryBlogById?bid=' + bid
        }).then(function (res) {
            console.log(res);
            var result = res.data.data[0];
            blogDetail.title = result.title;
            blogDetail.content = result.content;
            blogDetail.ctime = result.ctime;
            blogDetail.tags = result.tags;
            blogDetail.views = result.views;
        }).catch(function (res) {
            console.log('请求失败');
        });
    }
});

var sendComment = new Vue({
    el: '#send_comment',
    data: {
        vcode: "",
        rightCode: ""
    },
    computed: {
        changeCode:function() {
            return function () {
                axios({
                    method: 'get',
                    url: '/queryRandomCode'
                }).then(function (res) {
                    sendComment.vcode = res.data.data.data;
                    sendComment.rightCode = res.data.data.text;
                }).catch(function () {
                    console.log('获取验证码失败')
                });
            }    
        },
        sendComment: function () {
            return function () {
                var code = document.getElementById('comment_code').value;

                if(code != sendComment.rightCode) {
                    alert("验证码输入有误！！！");
                    return
                }

                var searchUrlParams = location.search.indexOf("?") > -1 ? location.search.split('?')[1].split('&') : "";
                if (searchUrlParams == "") {
                    return
                }
                var bid = -10;
                for (var i = 0; i < searchUrlParams.length; i ++) {
                    if (searchUrlParams[i].split("=")[0] == 'bid') {
                        try {
                            bid = parseInt(searchUrlParams[i].split('=')[1]);
                        } catch (e) {
                            console.log(e);
                        }
                    }
                }

                var reply = document.getElementById('comment_reply').value;
                var replyName = document.getElementById('comment_reply_name').value;
                var name = document.getElementById('comment_name').value;
                var email = document.getElementById('comment_email').value;
                var content = document.getElementById('comment_content').value;
                axios({
                    method: 'get',
                    url: '/addComment?bid=' + bid + "&parent=" + reply + "&email=" + email + "&userName=" + name + "&content=" + content + "&parentName=" + replyName
                }).then(function (res) {
                    alert("评论成功！！！");
                    window.location.reload();
                }).catch(function (res) {
                    console.log('请求错误')
                });
            }
        }

    },
    created: function () {
        this.changeCode();
    }
});

var blogComments = new Vue({
    el: '#blog_comments',
    data: {
        total: 0,
        commentsList: []
    },
    computed: {
        reply: function () {
            return function (commentId, userName) {
                console.log(commentId, userName);
                document.getElementById("comment_reply").value = commentId;
                document.getElementById("comment_reply_name").value = userName;
                location.href = "#send_comment"
            }
        }
    },
    created: function () {
        var searchUrlParams = location.search.indexOf("?") > -1 ? location.search.split('?')[1].split('&') : "";
        if (searchUrlParams == "") {
            return
        }
        var bid = -10;
        for (var i = 0; i < searchUrlParams.length; i ++) {
            if (searchUrlParams[i].split("=")[0] == 'bid') {
                try {
                    bid = parseInt(searchUrlParams[i].split('=')[1]);
                } catch (e) {
                    console.log(e);
                }
            }
        }
        axios({
            method: 'get',
            url: '/queryCommentsByBlogId?bid=' + bid
        }).then(function (res) {
            blogComments.commentsList = res.data.data;
            for (var i = 0; i < blogComments.commentsList.length; i ++) {
                if(blogComments.commentsList[i].parent > -1) {
                    blogComments.commentsList[i].options = '回复@' + blogComments.commentsList[i].parent_name;
                }
            }
        }).catch(function (res) {
            console.log("发送请求失败");
        });

        axios({
            method: 'get',
            url: '/queryCommentsCountByBlogId?bid=' + bid
        }).then(function (res) {
            blogComments.total = res.data.data[0].count;
        }).catch(function (res) {
            console.log("发送请求失败");
        });
    }
})