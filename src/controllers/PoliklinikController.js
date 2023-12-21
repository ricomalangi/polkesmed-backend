const Poliklinik = require("../models/Poliklinik");

const getAll = async (req, res) => {
    try {
        const [data] = await Poliklinik.getAll();
        res.status(200).json({
            status: 200,
            message: "success",
            data,
        });
    } catch (err) {
        res.status(500).json({
            status: 500,
            message: err,
        });
    }
};

const getById = async (req, res) => {
    try {
        const { id } = req.params;
        const [result] = await Poliklinik.getById(id);
        if (result.length) {
            res.status(200).json({
                status: 200,
                message: "success",
                data: result,
            });
        } else {
            res.status(404).json({
                status: 404,
                message: "Data Not Found",
            });
        }
    } catch (err) {
        res.status(500).json({
            status: 500,
            message: err,
        });
    }
};

const create = async (req, res) => {
    try {
        const { body } = req;
        const [result] = await Poliklinik.createData(body);
        if (result.affectedRows > 0) {
            res.status(201).json({
                status: 201,
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

const update = async (req, res) => {
    try {
        const { id } = req.params;
        const { body } = req;
        const [result] = await Poliklinik.updateData(body, id);
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

const deleteData = async (req, res) => {
    try {
        const { id } = req.params;
        const [result] = await Poliklinik.deleteData(id);
        if (result.affectedRows > 0) {
            res.status(200).json({
                status: 200,
                message: "success",
            });
        } else {
            res.status(404).json({
                status: 404,
                message: "Data Not Found",
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
    getAll,
    getById,
    create,
    update,
    deleteData,
};
