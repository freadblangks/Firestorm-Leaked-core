ALTER TABLE `spell_area`
	CHANGE COLUMN `racemask` `racemask` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `aura_spell`;
	
UPDATE spell_area SET racemask=18875469
WHERE spell=73828;
UPDATE spell_area SET racemask=33555378
WHERE spell=73822;

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rog_marked_for_death';
INSERT INTO `spell_script_names` VALUES ('140149', 'spell_rog_marked_for_death'); -- visual

REPLACE INTO `trinity_string` (`entry`, `content_default`, `content_loc8`) VALUES 
(13080, '|cffff0000[RG Queue Announcer]:|r Rated Battleground %s -- [%u-%u] Started!|r', '|cffff0000[Анонс БГ]:|r Рейтинговое поле боя %s -- [%u-%u] Начинается!|r');

REPLACE INTO `trinity_string` (`entry`, `content_default`, `content_loc8`) VALUES 
(13200, 'Your message cant be sent, because contains illicit words.', 'Ваше сообщение не может быть отправлено, т.к содержит запрещенные символы.');

DELETE FROM `skill_discovery_template` WHERE `spellId` = 130326;
INSERT INTO `skill_discovery_template` (`reqSpell`, `spellId`, `reqSkillValue`, `chance`) VALUES
(114753, 130326, 600, 1),
(114757, 130326, 600, 1),
(114754, 130326, 600, 1),
(114761, 130326, 600, 1),
(114755, 130326, 600, 1),
(114756, 130326, 600, 1),
(114758, 130326, 600, 1),
(114760, 130326, 600, 1),
(114774, 130326, 600, 1),
(114765, 130326, 600, 1),
(114762, 130326, 600, 1),
(114763, 130326, 600, 1),
(114764, 130326, 600, 1),
(114759, 130326, 600, 1),
(114782, 130326, 600, 1),
(114775, 130326, 600, 1),
(114769, 130326, 600, 1),
(114770, 130326, 600, 1),
(114773, 130326, 600, 1),
(114771, 130326, 600, 1),
(114772, 130326, 600, 1),
(114776, 130326, 600, 1),
(114781, 130326, 600, 1),
(114777, 130326, 600, 1),
(114784, 130326, 600, 1),
(114767, 130326, 600, 1),
(114766, 130326, 600, 1),
(114778, 130326, 600, 1),
(114783, 130326, 600, 1),
(114779, 130326, 600, 1),
(114780, 130326, 600, 1);

DELETE FROM `skill_discovery_template` WHERE `reqSpell` = 61177 AND `spellId` IN (95825, 64256, 94000);
INSERT INTO `skill_discovery_template` VALUE
(95825, 61177, 385, 100),
(64256, 61177, 385, 100),
(94000, 61177, 385, 100);

DELETE FROM `skill_discovery_template` WHERE `reqSpell` = 112996 AND `spellId` IN (64254, 64307, 64294, 64298, 64311, 57037, 64297, 56946, 64273, 57232, 64285, 64277, 64300, 64274, 64309, 61177, 64323, 64315, 64257, 64252, 57191, 64271, 64284, 64295, 64287, 57164, 64288, 64281, 95825, 64308, 64250, 56999, 64279, 64270, 64289, 64249, 64251, 64256, 64304, 57127, 57155, 64248, 64275, 64314, 64276, 64268, 64282, 94711, 57014, 64310, 57202, 64278, 64313, 64247, 64286, 57208, 56950, 64246, 64302, 64318, 56949, 94000, 64303, 64253, 64283, 64305, 57267, 64280, 64296);
INSERT INTO `skill_discovery_template` VALUES
(64254, 112996, 525, 100),
(64307, 112996, 525, 100),
(64294, 112996, 525, 100),
(64298, 112996, 525, 100),
(64311, 112996, 525, 100),
(57037, 112996, 525, 100),
(64297, 112996, 525, 100),
(56946, 112996, 525, 100),
(64273, 112996, 525, 100),
(57232, 112996, 525, 100),
(64285, 112996, 525, 100),
(64277, 112996, 525, 100),
(64300, 112996, 525, 100),
(64274, 112996, 525, 100),
(64309, 112996, 525, 100),
(61177, 112996, 525, 100),
(64323, 112996, 525, 100),
(64315, 112996, 525, 100),
(64257, 112996, 525, 100),
(64252, 112996, 525, 100),
(57191, 112996, 525, 100),
(64271, 112996, 525, 100),
(64284, 112996, 525, 100),
(64295, 112996, 525, 100),
(64287, 112996, 525, 100),
(57164, 112996, 525, 100),
(64288, 112996, 525, 100),
(64281, 112996, 525, 100),
(95825, 112996, 525, 100),
(64308, 112996, 525, 100),
(64250, 112996, 525, 100),
(56999, 112996, 525, 100),
(64279, 112996, 525, 100),
(64270, 112996, 525, 100),
(64289, 112996, 525, 100),
(64249, 112996, 525, 100),
(64251, 112996, 525, 100),
(64256, 112996, 525, 100),
(64304, 112996, 525, 100),
(57127, 112996, 525, 100),
(57155, 112996, 525, 100),
(64248, 112996, 525, 100),
(64275, 112996, 525, 100),
(64314, 112996, 525, 100),
(64276, 112996, 525, 100),
(64268, 112996, 525, 100),
(64282, 112996, 525, 100),
(94711, 112996, 525, 100),
(57014, 112996, 525, 100),
(64310, 112996, 525, 100),
(57202, 112996, 525, 100),
(64278, 112996, 525, 100),
(64313, 112996, 525, 100),
(64247, 112996, 525, 100),
(64286, 112996, 525, 100),
(57208, 112996, 525, 100),
(56950, 112996, 525, 100),
(64246, 112996, 525, 100),
(64302, 112996, 525, 100),
(64318, 112996, 525, 100),
(56949, 112996, 525, 100),
(94000, 112996, 525, 100),
(64303, 112996, 525, 100),
(64253, 112996, 525, 100),
(64283, 112996, 525, 100),
(64305, 112996, 525, 100),
(57267, 112996, 525, 100),
(64280, 112996, 525, 100),
(64296, 112996, 525, 100);

DELETE FROM `skill_discovery_template` WHERE `spellId` = 64323 AND `reqSpell` = 112996;
