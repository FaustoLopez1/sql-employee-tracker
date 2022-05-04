const mysql = require('mysql');
const express = require('express');
const inquirer = require('inquirer');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // TODO: Add MySQL password here
    password: 'Mysqlmolly12!',
    database: 'department_db'
  }
);
db.connect(function(err){
  if (err) throw err;
  options();
})

function options() {
  inquirer
    .prompt({
      name: 'action',
      type: 'list',
      message: 'What would you like to do?',
      choices: [
        'View All Employees',
        'Add Employee',
        'Update Employee Role',
        'View All Roles',
        'Add Role',
        'View All Departments',
        'Add Department',
        'QUIT'
      ]
    }).then(function (answer) {
      switch (answer.action) {
        case 'View All Employees':
          viewEmployees();
          break;
        case 'View All Departments':
          viewDepartments();
          break;
        case 'View All Roles':
          viewRoles();
          break;
        case 'Add Employee':
          addEmployee();
          break;
        case 'Add Department':
          addDepartment();
          break;
        case 'Add Role':
          addRole();
          break;
        case 'Update Employee Role':
          updateRole();
          break;
        case 'Quit':
          QuitApp();
          break;
        default:
          break;
      }
    })
};

function viewEmployees() {
  const query = 'SELECT * FROM employee';
  db.query(query, function(err, res) {
      if (err) throw err;
      console.log(res.length + ' employees found!');
      console.table('All Employees:', res); 
      options();
  })
};
