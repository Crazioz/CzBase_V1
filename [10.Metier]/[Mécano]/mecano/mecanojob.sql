INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'Mécano', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'Mécano', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mechanic', 'Mécano', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'Mécano')
;

INSERT INTO `job_grades` (id, job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('90', 'mechanic',0,'recrue','Recrue',12,'{}','{}'),
	('91', 'mechanic',1,'novice','Novice',24,'{}','{}'),
	('92', 'mechanic',2,'experimente','Experimente',36,'{}','{}'),
	('93', 'mechanic',3,'chief',"Chef d\'équipe",48,'{}','{}'),
	('94', 'mechanic',4,'boss','Patron',0,'{}','{}')
;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('boulont', 'Boulont', 1, 0, 1),
    ('kitrepa', 'Kit-de-réparation', 1, 0, 1)
;