UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 29774;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 29785;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 29786;
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 57799; 
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 54130; 
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 56730; 
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 57205; 
UPDATE `quest_template` SET `Method` = 2, `SuggestedPlayers` = 1, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 29414;

UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 54976;


UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (66691);



DELETE FROM `creature_template_addon` WHERE (`entry`=56394);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (56394, 0, 0, 65537, 1, 0, '');

UPDATE `creature` SET `phaseMask` = 1 WHERE `id` = 55999;
DELETE FROM `creature_addon` WHERE (`guid`=940754);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (940754, 0, 0, 0, 1, 415, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=65248);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (65248, 0, 0, 0, 1, 415, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=65070);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (65070, 0, 0, 0, 1, 415, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=65059);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (65059, 0, 0, 0, 1, 415, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=55632);
UPDATE `creature` SET `spawntimesecs` = 40 WHERE `id` = 57466;
UPDATE `creature` SET `spawntimesecs` = 40 WHERE `id` = 55632;
UPDATE `creature` SET `spawntimesecs` = 40 WHERE `id` = 55634;

UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 57799;

DELETE FROM `creature_template_addon` WHERE (`entry`=57799);

DELETE FROM `creature` WHERE `id`=56360;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(941846, 56360, 860, 5736, 5833, 1, 2, 0, 0, 293.687, 3971.57, 75.2216, 1.37483, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941849, 56360, 860, 5736, 5833, 1, 2, 0, 0, 290.729, 3980.01, 73.9982, 6.00393, 600, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(941855, 56360, 860, 5736, 5833, 1, 2, 0, 0, 237.805, 3993.78, 87.2768, 3.17509, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941859, 56360, 860, 5736, 5833, 1, 2, 0, 0, 233.376, 3986.44, 60.494, 1.68995, 600, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(941866, 56360, 860, 5736, 5833, 1, 2, 0, 0, 228.774, 4012.39, 76.5918, 0.0353085, 600, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(941867, 56360, 860, 5736, 5833, 1, 1, 40868, 0, 214.208, 4007.51, 89.0605, 4.28767, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941870, 56360, 860, 5736, 5833, 1, 2, 0, 0, 262.675, 3984.89, 66.5949, 4.70119, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941874, 56360, 860, 5736, 5833, 1, 2, 0, 0, 210.979, 4003.14, 75.2679, 0.46374, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941875, 56360, 860, 5736, 5833, 1, 2, 0, 0, 215.363, 4014.29, 75.8081, 2.25147, 600, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(941877, 56360, 860, 5736, 5833, 1, 2, 0, 0, 288.925, 4019.06, 76.3134, 1.7066, 600, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(941882, 56360, 860, 5736, 5833, 1, 2, 0, 0, 231.924, 3984.34, 75.1303, 4.81711, 600, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(941886, 56360, 860, 5736, 5833, 1, 2, 0, 0, 238.293, 4010.08, 88.0442, 1.82088, 600, 0, 0, 117, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(943162, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 271.915, 3960.11, 70.9075, 4.39551, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943163, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 261.641, 3947.82, 68.4827, 4.08135, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943164, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 265.888, 3933.38, 69.4676, 3.6753, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943165, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 301.08, 4003.23, 76.4319, 2.98911, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943166, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 279.359, 3987.99, 71.873, 4.17113, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943167, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 247.118, 3931.89, 65.1637, 4.4256, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(943168, 56360, 860, 5736, 5833, 1, 65535, 0, 56360, 253.343, 3934.02, 67.2523, 0.329745, 300, 0, 0, 352, 0, 0, 0, 0, 18432, 0, 0, 0, ''),
(1006826, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 295.495, 4016.52, 76.93, 3.03868, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006827, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 229.849, 4013.03, 76.7092, 3.66474, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006828, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 215.83, 4001.6, 75.456, 3.94149, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006835, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 261.151, 4018.4, 64.3039, 5.52555, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006836, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 283.455, 3908, 74.2173, 2.75462, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006837, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 217.965, 3911.45, 61.6746, 3.53537, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006838, 56360, 860, 5736, 5833, 1, 1, 0, 56360, 216.658, 3931.36, 61.2884, 1.63637, 300, 0, 0, 352, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=61796;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(1006856, 61796, 0, 1519, 6292, 1, 3969, 0, 0, -8316.34, 292.754, 156.833, 2.38391, 300, 0, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `quest_template` SET `Method` = 2, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 30989;

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` IN (53704,55946,56007,56008,56360);