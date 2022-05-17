//IMPORTS
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
const getSentences = require("./api/getSentences");
const Game = require("./models/Game");

//create a server
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
var io = require("socket.io")(server);

//Middleware
app.use(express.json());

//connect to Database
const DB =
  "mongodb+srv://bilal:12345@cluster0.iemma.mongodb.net/myFirstDatabase?retryWrites=true&w=majority";

//listening to socket.io event from the client(flutter code)
// io.on("connection", (socket) => {
//   console.log(socket.id);
//   socket.on("create-game", async ({ nickname }) => {
//     try {
//       let game = new Game();
//       const sentence = await getSentences();
//       game.words = sentence;
//       let player = {
//         socketID: socket.id,
//         nickname,
//         isPartyLeader: true,
//       };
//       game.players.push(player);
//       game = await game.save();
//     } catch (e) {
//       console.log(e);
//     }
//   });
// });

io.on("connection", (socket) => {
  console.log(socket.id);
  socket.on("test", (data) => {
    console.log(data);
  });
});

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Succesful!!");
  })
  .catch((e) => {
    console.log(e);
  });

//listen to server
server.listen(port, "0.0.0.0", () => {
  console.log("Server started and running on Port : " + port);
});
