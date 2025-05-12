const { log } = require("console");
const express = require("express");
const app = express();
const path = require("path");

const port = 9000;

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "/views"));

app.get("/", (req, res) => {
    res.render("home.ejs");
});

app.get("/ig/:username", (req, res) => {
    // const followers = ["Adam","Virat","Sohan","Rohit"];
    // let { username } = req.params;
    // res.render("instagram.ejs",{username, followers});

    let { username } = req.params;
    const instaData = require("./data.json");
    const data = instaData[username];

    // console.log(data);
    if (data) {
        res.render("instagram.ejs", { data });
    } else {
        res.render("error.ejs");
    }
});

app.get("/hello", (req, res) => {
    res.send("hello");
});

app.get("/rollback", (req, res) => {
    let diceVal = Math.floor(Math.random() * 6) + 1;
    res.render("rolldice.ejs", { num: diceVal });
});

app.listen(port, () => {
    console.log(`listing on port ${port}`);
});