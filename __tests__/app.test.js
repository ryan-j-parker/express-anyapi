const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('pokemon routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('/pokemon should return a list of pokemon', async () => {
    const response = await request(app).get('/pokemon');
    const expected = pokemon.map((mon) => {
      return { id: mon.id, name: mon.name, type: mon.type };
    });
    expect(response.body).toEqual(expected);
  });
  afterAll(() => {
    pool.end();
  });
});
