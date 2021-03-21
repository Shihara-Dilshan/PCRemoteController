const express = require('express');
const {PythonShell} = require('python-shell')
const app = express();
const PORT = 5022;

app.listen(PORT, () => {
    console.log('Server has started');
});

app.get( '/play', (req, res) => {
	PythonShell.run('scripts/play.py', null, function (err, results) {
	  if (err) throw err;
	  // results is an array consisting of messages collected during execution
	     res.send(results);
	});
})
