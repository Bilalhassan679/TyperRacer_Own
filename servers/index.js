//IMPORTS
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

//create a server
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

//listen to server
server.listen(port, "0.0.0.0", () => {
  console.log("Server started and running on Port : " + port);
});
