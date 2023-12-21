const express = require("express");
const cors = require("cors");
require("dotenv").config();
const routes = require("./routes");
let path = require("path");

const app = express();

const port = process.env.PORT;

global.appRoot = path.resolve(__dirname);
app.use(express.json()); // To parse any incoming request in JSON format
app.use(express.urlencoded());
app.use(cors()); // For CORS policy

app.use("/images/doctor", express.static("src/assets/images/doctors"));
app.use("/images/layanan", express.static("src/assets/images/layanan"));
app.use(routes);

// 127.0.0.1 is same as localhost
app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`);
});
