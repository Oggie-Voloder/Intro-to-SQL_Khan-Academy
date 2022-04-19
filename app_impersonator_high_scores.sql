/* What does the app's SQL look like? */
/* App is a game that stores user high scores*/

/* Create table to store scores */
CREATE TABLE scores (id INTEGER PRIMARY KEY AUTOINCREMENT, user TEXT, score INTEGER, date TEXT);

/* Add new scores to table */
INSERT INTO scores (user, score, date) VALUES ("Varrkarus", 95, "2022-04-16");
INSERT INTO scores (user, score, date) VALUES ("Varrkarus", 9994, "2022-04-19");
INSERT INTO scores (user, score, date) VALUES ("Varrkarus", 12345, "2022-04-19");
INSERT INTO scores (user, score, date) VALUES ("Aethyria", 4697, "2022-04-19");
INSERT INTO scores (user, score, date) VALUES ("Aethyria", 12346, "2022-04-22");
INSERT INTO scores (user, score, date) VALUES ("Aethyria", 10342, "2022-04-22");
INSERT INTO scores (user, score, date) VALUES ("Sephoria", 348, "2022-03-01");

/* Update at least 1 row of data */
UPDATE scores SET date="2022-04-21" WHERE user="Aethyria" AND date="2022-04-22";

/* Delete at least 1 row of data */
DELETE FROM scores WHERE id=1;

SELECT * FROM scores;

/* Show highest score for each user, descending from highest score to lowest score */
SELECT scores.user, MAX(scores.score) AS high_score FROM scores GROUP BY user ORDER BY high_score DESC;

/* Create and display top 3 table - all-time */
SELECT user, score, date FROM scores ORDER BY score DESC LIMIT 3;

/* Create and display top 3 table - today-only (2022-04-19) */
SELECT user, score FROM scores WHERE date="2022-04-19" ORDER BY score DESC LIMIT 3;
