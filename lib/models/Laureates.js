const pool = require('../utils/pool');

module.exports = class Laureates {
  constructor(row) {
    this.id = row.id;
    this.firstname = row.firstname;
    this.surname = row.surname;
    this.motivation = row.motivation;
    this.share = row.share;
    this.category = row.category;
  }

  static async getLaureates() {
    const { rows } = await pool.query('SELECT * from nobel_table');
    return rows.map((nobel) => new Laureates(nobel));
  }
};
