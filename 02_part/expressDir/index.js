const express = require('express');
const app = express();

let port = 6000;

app.listen(port, () => {
    console.log(`app listening on port ${port}`);
});


//app.use((req, res) => {
    // console.log(req);
 //   console.log("requiest received");
    // res.send("this is the basic responce");
    

 //   res.send({
 //       name : "apple",
 //       color : "red",
  //  });
    

   // code = "<h>Players</h><ul><li>Virat Kolhi</li><li>Hardik Pandya</li></ul>";
    // res.send(code);
// })


    app.get("/", (req, res) => {
        res.send("You connected root path");
    });

    app.get("/rcb", (req, res) => {
        res.send("I am the rcb fan");
    });

    app.get("/csk", (req, res) => {
        res.send("I am the csk fan");
    });

    app.get("/mi",(req, res) => {
        res.send("I am the mi fan")
    });
    
    app.get("*", (req, res) => {
        res.send("This is not exist ")
    });
    app.post("/", (req, res) => {
        res.send("You sent a post request")
    });
