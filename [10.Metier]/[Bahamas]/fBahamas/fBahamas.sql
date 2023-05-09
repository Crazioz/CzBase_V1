INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_bahamas','Bahamas',1),
	('society_bahamas_black', 'Bahamas black', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_bahamas','Bahamas',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_bahamas', 'Bahamas', 1)
;

INSERT INTO `jobs` (`name`, `label`) VALUES
('bahamas', 'Bahamas');

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('bahamas', 0, 'barman', 'Barman', 200, 'null', 'null'),
('bahamas', 1, 'dancer', 'Danseur', 400, 'null', 'null'),
('bahamas', 2, 'viceboss', 'Gérant', 600, 'null', 'null'),
('bahamas', 3, 'boss', 'Patron', 1000, 'null', 'null');