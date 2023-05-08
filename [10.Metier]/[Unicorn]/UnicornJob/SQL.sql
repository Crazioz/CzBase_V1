INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_unicorn','Unicorn',1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_unicorn','Unicorn', 1)
;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_unicorn', 'Unicorn', 1)
;

INSERT INTO `jobs`(`name`, `label`) VALUES
	('unicorn', 'Unicorn')
;

INSERT INTO `job_grades` (id, job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('0', 'unicorn',0,'recrue','Recrue',12,'{}','{}'),
	('0', 'unicorn',1,'novice','Danseur',24,'{}','{}'),
	('0', 'unicorn',2,'experimente','DJ',36,'{}','{}'),
	('0', 'unicorn',3,'chief',"Barman",48,'{}','{}'),
	('0', 'unicorn',4,'boss','Patron',0,'{}','{}')
;