-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    url VARCHAR NOT NULL,
)

INSERT INTO pokemon (name, type, attack, defense, hp, url)
VALUES
('Bulbasaur', 'grass/poison', 45, 49, 49, 'https://img.pokemondb.net/artwork/large/bulbasaur.jpg'),
('Dratini', 'dragon', 41, 64, 45, 'https://img.pokemondb.net/artwork/large/dratini.jpg'),
('Charmander', 'fire', 39, 52, 43, 'https://img.pokemondb.net/artwork/large/charmander.jpg'),
('Squirtle', 'water', 44, 48, 65, 'https://img.pokemondb.net/artwork/large/squirtle.jpg'),
('Rattata', 'normal', 30, 56, 35, 'https://img.pokemondb.net/artwork/large/rattata.jpg'),
('Sandshrew', 'ground', 50, 75, 85, 'https://img.pokemondb.net/artwork/large/sandshrew.jpg'),
('Abra', 'psychic', 25, 20, 15, 'https://img.pokemondb.net/artwork/large/abra.jpg'),
('Diglett', 'ground', 10, 55, 25, 'https://img.pokemondb.net/artwork/large/diglett.jpg'),
('Mankey', 'fighting', 40, 80, 35, 'https://img.pokemondb.net/artwork/large/mankey.jpg'),
('Machop', 'fighting', 70, 80, 50, 'https://img.pokemondb.net/artwork/large/machop.jpg'),
('Eevee', 'normal', 55, 55, 50, 'https://img.pokemondb.net/artwork/large/eevee.jpg'),
('Pidgey', 'flying', 40, 45, 40, 'https://img.pokemondb.net/artwork/large/pidgey.jpg');