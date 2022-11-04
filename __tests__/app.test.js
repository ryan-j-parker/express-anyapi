const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { pokemon } = require('../lib/pokemon-data');

const { laureates } = require('../lib/nobel-data');

describe('app routes', () => {
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

  it('/pokemon/:id should return pokemon by id', async () => {
    const res = await request(app).get('/pokemon/1');
    const bulbasaur = {
      id: '1',
      name: 'Bulbasaur',
      type: 'grass/poison',
      hp: 49,
      attack: 49,
      defense: 49,
      url: 'https://img.pokemondb.net/artwork/large/bulbasaur.jpg',
    };
    expect(res.body).toEqual(bulbasaur);
  });

  it('/laureates should return the list of 2022 nobel laureates', async () => {
    const res = await request(app).get('/laureates');
    const expected = laureates.map((nobel) => {
      return {
        id: nobel.id,
        lastName: nobel.last_name,
        category: nobel.category,
      };
    });
    expect(res.body).toEqual(expected);
  });

  afterAll(() => {
    pool.end();
  });
});
