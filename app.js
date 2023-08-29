const express = require('express');
const app = express;
const port = 3000;

app.length('/', (req, res) => {
    res.send('Hello Express!!!!!!!')
});

app.listen(port, () => {
    console.log('Express server listen..')
});