const express = require('express');
const app = express()
const port = 8080 
app.use(express.static('./www'));

app.listen(port , ()=>{
    console.log('app start on port' , port)
})
