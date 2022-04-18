/* Create table about fictional characters and their properties */

CREATE TABLE expansions (id INTEGER PRIMARY KEY, title TEXT);
CREATE TABLE races (id INTEGER PRIMARY KEY, race TEXT, faction TEXT);
CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, race_id TEXT, expansion_id TEXT);

INSERT INTO expansions VALUES (1, "Vanilla");
INSERT INTO expansions VALUES (2, "The Burning Crusade");
INSERT INTO expansions VALUES (3, "Wrath of the Lich King");
INSERT INTO expansions VALUES (4, "Cataclysm");
INSERT INTO expansions VALUES (5, "Mists of Pandaria");
INSERT INTO expansions VALUES (6, "Warlords of Draenor");
INSERT INTO expansions VALUES (7, "Legion");
INSERT INTO expansions VALUES (8, "Battle for Azeroth");
INSERT INTO expansions VALUES (9, "Shadowlands");

INSERT INTO races VALUES (1, "Human", "Alliance");
INSERT INTO races VALUES (2, "Orc", "Horde");
INSERT INTO races VALUES (4, "Night Elf", "Alliance");
INSERT INTO races VALUES (5, "Undead", "Horde/Scourge");

INSERT INTO characters (name, race_id, expansion_id) VALUES ("Arthas Menethil", 1, 3);
INSERT INTO characters (Name, race_id, expansion_id) VALUES ("Illidan Stormrage", 4, 2);
INSERT INTO characters (name, race_id, expansion_id) VALUES ("Jaina Proudmoore", 1, 8);
INSERT INTO characters (name, race_id, expansion_id) VALUES ("Lord Marrowgar", 5, 3);

/* Show raw characters table data */
SELECT * FROM characters;

/* Show characters table with human-readable race and expansion title*/
SELECT characters.name, races.race, expansions.title
    FROM characters
    JOIN races
    ON characters.race_id = races.id
    JOIN expansions
    ON characters.expansion_id = expansions.id;

/* Show characters with shared race */
SELECT a.name AS character, b.name AS "character of same race" FROM characters a
    JOIN characters b
    ON a.race_id = b.race_id
    WHERE a.id != b.id;

/* Show characters with shared expansion */
SELECT characters.name, character_set.name FROM characters
    JOIN characters character_set
    ON characters.expansion_id = character_set.expansion_id
    WHERE characters.id != character_set.id;
