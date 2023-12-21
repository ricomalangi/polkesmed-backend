const express = require("express");
const { update } = require("../controllers/JadwalPoliklinikController");
const router = express.Router();

router.put("/jadwal-poliklinik/:id", update);
module.exports = router;
