
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (`name`, `label`) VALUES
	('police', 'LSPD')
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('police', 0, 'recruit', 'Cadet', 0, '{}', '{}'),
	('police', 1, 'officer', 'Officier', 0, '{}', '{}'),
	('police', 2, 'sergeant', 'Sergent', 0, '{}', '{}'),
	('police', 3, 'lieutenant', 'Sergent-Chef', 0, '{}', '{}'),
	('police', 4, 'boss','Lieutenant', 0, '{}', '{}'),
	('police', 5, 'recruit', 'Lieutenant-Chef', 0, '{}', '{}'),
	('police', 6, 'officer', 'Capitaine', 0, '{}', '{}'),
	('police', 7, 'sergeant', 'Commandant', 0, '{}', '{}')
