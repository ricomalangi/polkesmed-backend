const express = require("express");
const { getAll, getById, create, update, deleteData } = require("../controllers/PoliklinikController");
const router = express.Router();

router.get("/poliklinik", getAll);
router.get("/poliklinik/:id", getById);
router.post("/poliklinik", create);
router.put("/poliklinik/:id", update);
router.delete("/poliklinik/:id", deleteData);

module.exports = router;
