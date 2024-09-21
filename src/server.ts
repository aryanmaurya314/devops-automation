import express from "express";

const app = express();

app.get("/", function (_req, res) {
  res.send("Hello from server!");
});

app.listen(3000, function () {
  console.log("Server started at http://localhost:3000");
});
