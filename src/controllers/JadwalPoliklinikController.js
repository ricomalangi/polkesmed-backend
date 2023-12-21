const JadwalPoliklinik = require("../models/JadwalPoliklinik");

const update = async (req, res) => {
    try {
        const { id } = req.params;
        const { body } = req;
        const [result] = await JadwalPoliklinik.updateData(body, id);
        if (result.affectedRows > 0) {
            res.status(200).json({
                status: 200,
                message: "success",
                data: body,
            });
        } else {
            res.status(500).json({
                status: 500,
                message: "Internal Server Error",
            });
        }
    } catch (err) {
        res.status(500).json({
            status: 500,
            message: err,
        });
    }
};

module.exports = {
    update,
};
