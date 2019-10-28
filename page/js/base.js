var randomTags = new Vue({
    el: '#random_tags',
    data: {
       tags: []
    },
    computed: {
        randomColor: function () {
            return function () {
                var red = Math.random() * 255;
                var green = Math.random() * 255;
                var blue = Math.random() * 255;
                return "rgb(" + red + ", " + green + "," + blue + ")";
            }
        },
        randomSize: function () {
            return  function () {
                return (Math.random() * 20 + 12) + 'px' ;
            }
        }
    },
    created: function () {
        axios({
            method: 'get',
            url: '/queryRandomTags'
        }).then(function (res) {
            var result = res.data.data;
            var temp = [];
            for (var i = 0; i < result.length; i ++) {
                temp.push({text:result[i].tag, link: "/?tag=" + result[i].tag});
            }
            randomTags.tags = temp;
        }).catch(function () {
            console.log('请求错误')
        });
    }
});

var newHot = new Vue({
    el: '#new_hot',
    data: {
        titleList: []
    },
    created: function () {
        axios({
            method: 'get',
            url: '/queryHotBlog'
        }).then(function (res) {
            var result = []
            for (var i = 0; i < res.data.data.length; i ++ ) {
                var temp = {};
                temp.title = res.data.data[i].title;
                temp.link = '/blog_detail.html?bid=' + res.data.data[i].id;
                result.push(temp);
            }
            newHot.titleList = result;
        })
    }
});

var newComments = new Vue({
    el: '#new_comments',
    data: {
        commentList:[
            {name: '这里是用户名',date: '2018-10-01',content:'这时评论内容打发顺丰阿斯顿发=阿斯顿发阿斯顿发阿斯顿发安抚阿三发顺丰安抚啊方式'},
            {name: '这里是用户名',date: '2018-10-01',content:'这时评论内容打发顺丰阿斯顿发=阿斯顿发阿斯顿发阿斯顿发安抚阿三发顺丰安抚啊方式'},
            {name: '这里是用户名',date: '2018-10-01',content:'这时评论内容打发顺丰阿斯顿发=阿斯顿发阿斯顿发阿斯顿发安抚阿三发顺丰安抚啊方式'},
            {name: '这里是用户名',date: '2018-10-01',content:'这时评论内容打发顺丰阿斯顿发=阿斯顿发阿斯顿发阿斯顿发安抚阿三发顺丰安抚啊方式'}
        ]
    },
    created: function () {
        axios({
            method: 'get',
            url: '/queryNewComments'
        }).then(function (res) {
            var result = res.data.data;
            var tempArr = [];
            for (var i = 0; i < result.length; i ++ ) {
                var temp = {}
                temp.name = result[i].user_name;
                temp.date = result[i].ctime;
                temp.content = result[i].comments;
                tempArr.push(temp);
            }
            newComments.commentList = tempArr;
        })
    }
});