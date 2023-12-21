const db_pool = require("../config/database");
const { v4: uuidv4 } = require("uuid");
const bcrypt = require("bcrypt");

const table = "tb_user";

const getAll = () => {
    const SQLQuery = `SELECT * FROM ${table}`;
    return db_pool.execute(SQLQuery);
};

const getById = (id) => {
    const SQLQuery = `SELECT * FROM ${table} WHERE uuid=?`;
    return db_pool.execute(SQLQuery, [id]);
};

const createData = async (body) => {
    const SQLQuery = `INSERT into ${table} (uuid, email, password, role) VALUES (?,?,?,?)`;
    const password = await bcrypt.hash(body.password, 10);
    const uuid = uuidv4();
    let result = await db_pool.execute(SQLQuery, [uuid, body.email, password, body.role]);
    if (result[0].affectedRows > 0 && body.role == "pasien") {
        const SQLQuery = `INSERT into tb_pasien (uuid_user, nama_pasien, no_hp, usia, jenis_kelamin, alamat, golongan_darah) VALUES (?,?,?,?,?,?,?)`;
        db_pool.execute(SQLQuery, [uuid, body.nama_pasien, body.no_hp, body.usia, body.jenis_kelamin, body.alamat, body.golongan_darah]);
    }
    return result;
};

const updateData = async (body, id) => {
    if (body.password) {
        const SQLQuery = `UPDATE ${table} SET email=?, password=? WHERE uuid=?`;
        const password = await bcrypt.hash(body.password, 10);
        return db_pool.execute(SQLQuery, [body.email, password, id]);
    }
    const SQLQuery = `UPDATE ${table} SET email=? WHERE uuid=?`;
    return db_pool.execute(SQLQuery, [body.email, id]);
};

const deleteData = (id) => {
    const SQLQuery = `DELETE FROM ${table} WHERE uuid=?`;
    return db_pool.execute(SQLQuery, [id]);
};

module.exports = {
    getAll,
    createData,
    updateData,
    deleteData,
    getById,
};
