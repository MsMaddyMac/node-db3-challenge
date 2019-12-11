const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findSteps
}

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
    .where({ id })
    .first();
}

function findSteps(id) {
    return db('steps as st')
    .select('st.id', 's.scheme_name', 'st.step_number', 'st.instructions')
    .join('schemes as s', 'st.scheme_id', 's.id')
    .where({ scheme_id: id });
}
