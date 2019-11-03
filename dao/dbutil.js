var mysql = require("mysql");

function createConnetion() {
    var connection = mysql.createConnection({
        host: '111.231.58.138',
        port: '3306',
        user: 'root',
        password: '123456',
        database: 'my_blog'
    })

    return connection;
}

module.exports.createConnetion = createConnetion;