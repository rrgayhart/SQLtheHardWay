SELECT * FROM person; 
SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE dead = 0;
SELECT * FROM person WHERE first_name != "Zed";
SELECT * FROM pet WHERE age > 10;
SELECT * FROM person WHERE age < 27;
SELECT * FROM person WHERE age > 27;
SELECT * FROM pet WHERE age > 1 AND dead = 0;
SELECT name, age, dead FROM pet WHERE age > 0 AND dead = 0;