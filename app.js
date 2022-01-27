// get the client
const mysql = require('mysql2');

//create the connection to database
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Celeste102!',
  database: 'new_world',
});

connection.connect(function (err) {
  if (err) throw err;
  connection.query('SELECT capital FROM NLD', function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});
