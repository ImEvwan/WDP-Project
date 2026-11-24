const con = require("./db_connect");

async function createUserTable() {
    let sql = `
        CREATE TABLE IF NOT EXISTS User (
            UserID INT NOT NULL AUTO_INCREMENT,
            FirstName VARCHAR(255) NOT NULL,
            LastName VARCHAR(255) NOT NULL,
            Username VARCHAR(255) NOT NULL UNIQUE,
            Password VARCHAR(255) NOT NULL,
            PRIMARY KEY (UserID)
        );
    `;

    await con.query(sql);
}

createUserTable();

async function getAllUsers() {
    let sql = `
        SELECT UserID, FirstName, LastName, Username
        FROM User;
    `;

    return await con.query(sql);
}

module.exports = { getAllUsers };