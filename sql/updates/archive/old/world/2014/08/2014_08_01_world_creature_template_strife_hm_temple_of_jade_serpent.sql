-- Strife - HM template - Temple of the Jade Forest
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `difficulty_entry_4`, `difficulty_entry_5`, `difficulty_entry_6`, `difficulty_entry_7`, `difficulty_entry_8`, `difficulty_entry_9`, `difficulty_entry_10`, `difficulty_entry_11`, `difficulty_entry_12`, `difficulty_entry_13`, `difficulty_entry_14`, `difficulty_entry_15`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('590512','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','40594','0','0','0','Strife (2)','','','0','92','92','4','0','35','35','0','0','1','1.14286','1.14286','1','1','0','0','0','0','2','0','0','1','0','0','0','0','0','0','0','0','0','0','0','10','2097224','0','59051','0','0','0','0','0','0','0','0','114571','113379','113315','113309','0','0','0','0','0','0','440000','450000','','0','3','1','16','5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','mob_strife','16048');

-- Updating main template
UPDATE creature_template SET difficulty_entry_2 = 590512 WHERE entry = 59051;