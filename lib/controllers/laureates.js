const { Router } = require('express');

const Laureates = require('../models/Laureates');

module.exports = Router()
  .get('/', async (req, res) => {
    const laureates = await Laureates.getLaureates();
    const filtered = laureates.map(({ id, surname, category }) => ({
      id,
      surname,
      category,
    }));
    res.json(filtered);
  })
  .get('/:id', async (req, res) => {
    const nobel = await Laureates.getLaureateById(req.params.id);
    res.json(nobel);
  });
