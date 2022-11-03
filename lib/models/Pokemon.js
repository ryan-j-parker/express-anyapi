const pool = require('../utils/pool');

module.exports = class Pokemon {
  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.type = row.type;
    this.hp = row.hp;
    this.attack = row.attack;
    this.defense = row.defense;
    this.url = row.url;
  }

  static async getPokemon() {
    const { rows } = await pool.query('SELECT * from pokemon');
    return rows.map((mon) => new Pokemon(mon));
  }
};
