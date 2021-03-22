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
	     console.log("Put PC into sleep");
	     res.send(results);
	});
});

app.get( '/pweroff', (req, res) => {
	PythonShell.run('scripts/pweroff.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Power off the PC");
	     res.send(results);
	});
});

app.get( '/play', (req, res) => {
	PythonShell.run('scripts/play.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Play current media");
	     res.send(results);
	});
});


app.get( '/pause', (req, res) => {
	PythonShell.run('scripts/pause.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Pause current media");
	     res.send(results);
	});
});

app.get( '/fastfaward', (req, res) => {
	PythonShell.run('scripts/fastfoward.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Fast forward current media");
	     res.send(results);
	});
});

app.get( '/fastbackward', (req, res) => {
	PythonShell.run('scripts/fastbackward.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Fast backward current media");
	     res.send(results);
	});
});

app.get( '/increasevolumn', (req, res) => {
	PythonShell.run('scripts/increase.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Increase volumn");
	     res.send(results);
	});
});


app.get( '/decreasevolumn', (req, res) => {
	PythonShell.run('scripts/decreasevolumn.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Decrease volumn");
	     res.send(results);
	});
});

app.get( '/playnext', (req, res) => {
	PythonShell.run('scripts/playnext.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Skip current media to next media");
	     res.send(results);
	});
});


app.get( '/playprevious', (req, res) => {
	PythonShell.run('scripts/playprevious.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Skip current media to previous media");
	     res.send(results);
	});
});


app.get( '/mute', (req, res) => {
	PythonShell.run('scripts/mute.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Mute the PC sounds");
	     res.send(results);
	});
});


app.get( '/unmute', (req, res) => {
	PythonShell.run('scripts/unmute.py', null, function (err, results) {
	  if (err) throw err;
	     console.log("Unmute the PC sounds");
	     res.send(results);
	});
});


