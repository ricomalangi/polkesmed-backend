const express = require("express");
const { getAll, create, update, getById, deleteDoctor } = require("../controllers/DoctorController");
const upload = require("../middleware/multer");
const router = express.Router();

router.get("/doctor", getAll);
router.get("/doctor/:id", getById);
router.post("/doctor", upload.single("picture"), create);
router.put("/doctor/:id", upload.single("picture"), update);
router.delete("/doctor/:id", deleteDoctor);
module.exports = router;
