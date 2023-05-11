INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_vigneron', 'vigneron', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_vigneron', 'vigneron', 1),
	('society_vigneron_fridge', 'vigneron (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
 	('society_vigneron', 'vigneron', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('vigneron', 'Vigneron')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('vigneron', 0, 'recrue', 'Intérimaire', 1200, '{}', '{}'),
  ('vigneron', 1, 'novice', 'Vigneron', 1400, '{}', '{}'),
  ('vigneron', 2, 'cdisenior', 'Chef de chai', 1600, '{}', '{}'),
  ('vigneron', 3, 'boss', 'Patron', 2000, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`) VALUES
	('raisin', 'Raisin'),
	('jus_raisin', 'Jus de raisin'),
	('grand_cru', 'Grand cru'),
	('vine', 'Vin')
;