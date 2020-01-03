'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
var randomWords = require('random-words');
app.get('/', (req, res) => {
	res.send(randomWords({exactly:1, wordsPerString:2, separator:'-'}) + "\n");
});

app.listen(PORT, HOST);
console.log(`Welcome to Faststart 2020 - running on http://${HOST}:${PORT}`);
