INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_beekers', 'Beeker\'s', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_beekers', 'Beeker\'s', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_beekers', 'Beeker\'s', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('beekers', 'Beeker\'s')
;

INSERT INTO `job_grades` (id, job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('550', 'beekers',0,'recrue','Recrue',12,'{}','{}'),
	('551', 'beekers',1,'novice','Novice',24,'{}','{}'),
	('552', 'beekers',2,'experimente','Experimente',36,'{}','{}'),
	('553', 'beekers',3,'chief',"Chef d\'équipe",48,'{}','{}'),
	('554', 'beekers',4,'boss','Patron',0,'{}','{}')
;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('boulont', 'Boulont', 1, 0, 1),
    ('kitrepa', 'Kit-de-réparation', 1, 0, 1)
;