var blogList = new Vue({
    el: '#blog_list',
    data: {
        blogList: []
    },
    computed: {

    },
    created: function () {
        axios({
            method: 'get',
            url: '/queryAllBlog'
        }).then(function (res) {
            var result = res.data.data;
            for (var i = 0; i < result.length; i ++) {
                result[i].link = "/blog_detail.html?bid=" + result[i].id;
            }
            blogList.blogList = res.data.data;
        }).catch(function () {
            console.log('请求失败')
        })
    }
});