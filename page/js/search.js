var searchBar = new Vue({
    el: "#search_bar",
    data: {
        searchWord: "",
        link: ""
    },
    computed: {
        search: function () {
            return function () {
                console.log(this.searchWord)
                if(!this.searchWord || this.searchWord == "") {
                    return
                }
                location.href = '/?word=' + this.searchWord
            }
        }
    }
});