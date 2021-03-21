const express = require('express');
const {PythonShell} = require('python-shell')
const app = express();
const PORT = 5022;

app.listen(PORT, () => {
    console.log('Server has started');
});

app.get( '/sleep', (req, res) => {
	PythonShell.run('scripts/sleep.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});

app.get( '/pweroff', (req, res) => {
	PythonShell.run('scripts/pweroff.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});

app.get( '/play', (req, res) => {
	PythonShell.run('scripts/play.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});


app.get( '/pause', (req, res) => {
	PythonShell.run('scripts/pause.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});


app.get( '/increasevolumn', (req, res) => {
	PythonShell.run('scripts/increase.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});


app.get( '/decreasevolumn', (req, res) => {
	PythonShell.run('scripts/decreasevolumn.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
});
