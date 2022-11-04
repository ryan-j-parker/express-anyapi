const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { pokemon } = require('../lib/pokemon-data');

describe('pokemon routes', () => {
  
  beforeEach(() => {
    return setup(pool);
  });
  
  it('/pokemon should return a list of pokemon', async () => {
    const res = await request(app).get('/pokemon');
  
    const expected = pokemon.map((mon) => {
      return { id: mon.id, name: mon.name, type: mon.type };
    });
  
    expect(res.body).toEqual(expected);
  });
  
  afterAll(() => {
    pool.end();
  });

});
