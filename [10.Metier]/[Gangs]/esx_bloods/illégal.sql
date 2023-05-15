SET @faction_name = 'ballas'; -- Remplacer par le gang ou la faction que vous voulez
SET @society_name = 'society_ballas'; -- Idem avec society_
SET @faction_Name_Caps = 'Ballas'; -- Idem avec une majuscule



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @faction_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @faction_Name_Caps, 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @faction_Name_Caps, 1)
;

INSERT INTO `factions` (name, label) VALUES
  (@faction_name, @faction_Name_Caps)
;

INSERT INTO `faction_grades` (faction_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@faction_name, 0, 'recruit', 'Recrue', 0, '{}', '{}'),
  (@faction_name, 1, 'gangster', 'Gangster', 0, '{}', '{}'),
  (@faction_name, 2, 'bandit', 'Bandit', 0, '{}', '{}'),
  (@faction_name, 3, 'boss', 'Chef du Gang', 0, '{}', '{}')
;