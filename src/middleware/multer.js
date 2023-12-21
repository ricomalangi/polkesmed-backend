const multer = require("multer");
const path = require("path");
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "src/assets/images/doctors");
    },
    filename: (req, file, cb) => {
        let filename = "dokter" + "-" + Date.now() + path.extname(file.originalname);
        req.body.filename = filename;
        cb(null, filename);
    },
});

const upload = multer({
    storage,
    limits: {
        fileSize: 5 * 1000 * 1000,
    },
});

module.exports = upload;
