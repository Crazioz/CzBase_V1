INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
('ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
('ambulance', 2, 'chief_doctor', "Medecin-chef", 60, '', ''),
('ambulance', 3, 'boss', 'Chirurgien', 80, '', '');

INSERT INTO `jobs` (name, label) VALUES
	('ambulance','Ambulance')
;

INSERT INTO `items` (name, label) VALUES
	('bandage','Bandage'),
	('medikit','Medikit')
;

ALTER TABLE `users`
	ADD `is_dead` TINYINT(1) NULL DEFAULT '0'
;