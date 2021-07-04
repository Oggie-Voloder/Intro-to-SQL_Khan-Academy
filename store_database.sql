CREATE TABLE inventory (
  id        INTEGER PRIMARY KEY, 
  name      TEXT, 
  price     REAL, 
  aisle     INTEGER, 
  stock_qty INTEGER
);

INSERT INTO inventory VALUES (1, "WoW: Shadowlands", 59.95, 1, 81);
INSERT INTO inventory VALUES (2, "Call of Duty", 89.95, 2, 156);
INSERT INTO inventory VALUES (3, "Elden Ring", 99.95, 1, 30);
INSERT INTO inventory VALUES (4, "Valorant", 5.00, 2, 1000);
INSERT INTO inventory VALUES (5, "Overwatch", 49.99, 2, 60);
INSERT INTO inventory VALUES (6, "Overwatch: Legendary Edition", 69.99, 2, 20);
INSERT INTO inventory VALUES (7, "Hollow Knight", 19.50, 3, 50);
INSERT INTO inventory VALUES (8, "Shovel Knight", 7.49, 3, 50);
INSERT INTO inventory VALUES (9, "Hope for Rain", 44.44, 4, 10);
INSERT INTO inventory VALUES (10, "NBA 2K21", 60.00, 5, 120);
INSERT INTO inventory VALUES (11, "FIFA 21", 60.00, 5, 160);
INSERT INTO inventory VALUES (12, "Assetto Corsa", 59.99, 6, 40);
INSERT INTO inventory VALUES (13, "iRacing", 109.99, 6, 15);
INSERT INTO inventory VALUES (14, "Real Racing", 59.99, 6, 60);
INSERT INTO inventory VALUES (15, "Super Mario Bros", 47.50, 3, 600);

SELECT name, price FROM inventory ORDER BY price;
SELECT aisle, AVG(price) FROM inventory GROUP BY aisle;
