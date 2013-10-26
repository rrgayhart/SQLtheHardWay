INSERT INTO person (id, first_name, last_name, age)
	VALUES (1, "Meeka", "G", 27);
	
INSERT INTO pet (id, name, breed, age, dead)
	VALUES (2, "Trajan", "Bunny", 1, 0);
	
INSERT INTO person_pet (person_id, pet_id)
	VALUES (1, 2);