const db_pool = require("../config/database");
const { v4: uuidv4 } = require("uuid");

const table = "tb_poliklinik";

const updateData = (body, id) => {
    let jadwal = JSON.stringify(body.jadwal);

    const SQLQuery = `UPDATE ${table} SET jadwal=? WHERE uuid=?`;
    return db_pool.execute(SQLQuery, [jadwal, id]);
};

module.exports = {
    updateData,
};
