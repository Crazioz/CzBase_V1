INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_tabac','Tabac',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_tabac','Tabac',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_tabac', 'Tabac', 1)
;

INSERT INTO `jobs` (`name`, `label`) VALUES
('tabac', 'Tabac');

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('tabac', 0, 'recrue','Tabagiste', 200, 'null', 'null'),
('tabac', 1, 'gerant','Gérant', 400, 'null', 'null'),
('tabac', 2, 'boss', 'Patron', 1000, 'null', 'null');

INSERT INTO `items` (name, label, weight) VALUES 
  ('tabac', 'Tabac', 1),
  ('tabacsec', 'Tabac Sec', 1),
  ('malboro', 'Marlboro', 1);