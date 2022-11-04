const { Router } = require('express');

const Pokemon = require('../models/Pokemon');

module.exports = Router()
  .get('/', async (req, res) => {
    const pokemans = await Pokemon.getPokemon();
    const filtered = pokemans.map(({ id, name, type }) => ({ id, name, type }));
    res.json(filtered);
  });
  
