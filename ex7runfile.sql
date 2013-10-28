DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Meeka", "G", 27);
    
INSERT INTO pet (id, name, breed, age, dead)
    VALUES (2, "Trajan", "Bunny", 1, 0);
    
INSERT INTO person_pet (person_id, pet_id)
    VALUES (1, 2);

INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

/* make sure there's dead pets */
SELECT name, age FROM pet WHERE dead = 1;

/* aww poor robot */
DELETE FROM pet WHERE name = "Gigantor";

/* make sure the robot is gone */
SELECT * FROM pet;

/* let's resurrect the robot */
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
SELECT * FROM pet;

INSERT INTO pet VALUES (4, "Theodoric", "Cat", 1, 0);
INSERT INTO person VALUES (4, "Joshua", "Miller", 33);
INSERT INTO person_pet VALUES (4, 4);
INSERT INTO person_pet VALUES (1, 4);
SELECT person.first_name from pet, person, person_pet 
    WHERE person.id = person_pet.person_id 
    AND pet.id = person_pet.pet_id 
    AND pet.name = "Theodoric";

