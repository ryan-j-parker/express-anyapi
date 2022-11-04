-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS pokemon_table;

CREATE TABLE pokemon_table (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    url VARCHAR NOT NULL
);

INSERT INTO pokemon_table (name, type, attack, defense, hp, url)
VALUES
('Bulbasaur', 'grass/poison', 49, 49, 49, 'https://img.pokemondb.net/artwork/large/bulbasaur.jpg'),
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

DROP TABLE IF EXISTS nobel_table;

CREATE TABLE nobel_table (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    firstname VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    motivation VARCHAR NOT NULL,
    share INT NOT NULL,
    category VARCHAR NOT NULL,
);

INSERT INTO nobel_table (firstname, surname, motivation, share, category)
VALUES
 ('Carolyn' 'Bertozzi', 'for the development of click chemistry and bioorthogonal chemistry', '3', 'chemistry'),
 ('Morten' 'Meldal', 'for the development of click chemistry and bioorthogonal chemistry', '3', 'chemistry'),
 ('Barry' 'Sharpless', 'for the development of click chemistry and bioorthogonal chemistry', '3', 'chemistry'),
 ('Ben' 'Bernanke', 'for research on banks and financial crises', '3', 'economics'),
 ('Douglas' 'Diamond', 'for research on banks and financial crises', '3', 'economics'),
 ('Philip' 'Dybvig', 'for research on banks and financial crises', '3', 'economics'),
 ('Annie' 'Ernaux', 'for the courage and clinical acuity with which she uncovers the roots, estrangements and collective restraints of personal memory', '1', 'literature'),
 ('Ales' 'Bialiatski ', 'The Peace Prize laureates represent civil society in their home countries. They have for many years promoted the right to criticise power and protect the fundamental rights of citizens. They have made an outstanding effort to document war crimes, human right abuses and the abuse of power. Together they demonstrate the significance of civil society for peace and democracy', '3', 'peace'),
 ('The Peace Prize laureates represent civil society in their home countries. They have for many years promoted the right to criticise power and protect the fundamental rights of citizens. They have made an outstanding effort to document war crimes, human right abuses and the abuse of power. Together they demonstrate the significance of civil society for peace and democracy', '3', 'Memorial', 'peace'),
 ('The Peace Prize laureates represent civil society in their home countries. They have for many years promoted the right to criticise power and protect the fundamental rights of citizens. They have made an outstanding effort to document war crimes, human right abuses and the abuse of power. Together they demonstrate the significance of civil society for peace and democracy', '3', 'Center for Civil Liberties', 'peace'),
 ('Alain' 'Aspect', 'for experiments with entangled photons, establishing the violation of Bell inequalities and  pioneering quantum information science', '3', 'physics'),
 ('for experiments with entangled photons, establishing the violation of Bell inequalities and  pioneering quantum information science', '3', 'physics'),
 ('Anton' 'Zeilinger', 'for experiments with entangled photons, establishing the violation of Bell inequalities and  pioneering quantum information science', '3', 'physics',)
 ('Svante' 'Pääbo', 'for his discoveries concerning the genomes of extinct hominins and human evolution', '1', 'medicine');