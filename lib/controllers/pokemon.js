const { Router } = require('express');

const Pokemon = require('../models/Pokemon');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const mon = await Pokemon.getPokemonById(req.params.id);
    res.json(mon);
  })
  .get('/', async (req, res) => {
    const pokemans = await Pokemon.getPokemon();
    const filtered = pokemans.map(({ id, name, type }) => ({ id, name, type }));
    res.json(filtered);
  });
