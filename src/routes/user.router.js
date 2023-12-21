const express = require("express");
const { getAll, getById, create, update, deleteData } = require("../controllers/UserController");
const router = express.Router();

router.get("/user", getAll);
router.get("/user/:id", getById);
router.post("/user", create);
router.put("/user/:id", update);
router.delete("/user/:id", deleteData);

module.exports = router;
