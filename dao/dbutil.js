var mysql = require("mysql");

function createConnetion() {
    var connection = mysql.createConnection({
        host: '111.231.58.138',
        port: '3306',
        user: 'root',
        password: 'leebin@19851001',
        database: 'my_blog'
    })

    return connection;
}

module.exports.createConnetion = createConnetion;