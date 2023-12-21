const db_pool = require("../config/database");
const { v4: uuidv4 } = require("uuid");
const fs = require("fs/promises");
const { dirname } = require("path");

const getAllDoctors = () => {
    const SQLQuery = "SELECT td.*, tp.nama_poliklinik FROM tb_dokter td LEFT JOIN tb_poliklinik tp ON td.poliklinik_id = tp.uuid ORDER BY td.id DESC";
    return db_pool.execute(SQLQuery);
};

const getById = (id) => {
    const SQLQuery = "SELECT td.*, tp.nama_poliklinik, tp.uuid FROM tb_dokter td LEFT JOIN tb_poliklinik tp ON td.poliklinik_id = tp.uuid WHERE td.uuid=?";
    return db_pool.execute(SQLQuery, [id]);
};

const createNewDoctor = (body) => {
    const SQLQuery = "INSERT into tb_dokter (uuid, nama_dokter, poliklinik_id, picture) VALUES (?,?,?,?)";

    return db_pool.execute(SQLQuery, [uuidv4(), body.nama_dokter, body.poliklinik_id, body.filename]);
};

const updateDoctor = async (body, id) => {
    let SQLQuery;
    if (body.filename == undefined || body.filename == "" || body.filename == null) {
        SQLQuery = "UPDATE tb_dokter SET nama_dokter=?, poliklinik_id=? WHERE uuid=?";
        return db_pool.execute(SQLQuery, [body.nama_dokter, body.poliklinik_id, id]);
    } else {
        let response = await getById(id);
        let imageExist = response[0][0].picture;
        let directoryPath = appRoot + "/assets/images/doctors/";
        if (imageExist) {
            try {
                await fs.unlink(`${directoryPath}${imageExist}`);
            } catch (e) {
                console.log(e);
            }
        }
        SQLQuery = "UPDATE tb_dokter SET nama_dokter=?, poliklinik_id=?, picture=? WHERE uuid=?";
        return db_pool.execute(SQLQuery, [body.nama_dokter, body.poliklinik_id, body.filename, id]);
    }
};

const deleteDoctor = async (id) => {
    let response = await getById(id);
    let imageExist = response[0][0].picture;
    let directoryPath = appRoot + "/assets/images/doctors/";
    if (imageExist) {
        try {
            await fs.unlink(`${directoryPath}${imageExist}`);
        } catch (e) {
            console.log(e);
        }
    }
    const SQLQuery = "DELETE FROM tb_dokter WHERE uuid=?";
    return db_pool.execute(SQLQuery, [id]);
};

module.exports = {
    getAllDoctors,
    createNewDoctor,
    updateDoctor,
    deleteDoctor,
    getById,
};
