UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 26948;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26949;

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 138298;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26947;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26940;


REPLACE INTO `creature_questrelation` VALUES (63331, 28723);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` = 28724;


DELETE FROM `creature` WHERE `id`=63327;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(1006317, 63327, 1, 6452, 221, 1, 1, 0, 0, -2914.07, -250.674, 59.6051, 5.96681, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, '');


UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (36697);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 27023;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSourceItemId1` = 0, `RequiredSourceItemCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24861;

DELETE FROM `creature_template_addon` WHERE (`entry`=16971);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (16971, 0, 0, 3, 4097, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=59237);
DELETE FROM `creature_addon` WHERE (`guid`=59239);
DELETE FROM `creature_addon` WHERE (`guid`=59238);

DELETE FROM `creature_template_addon` WHERE (`entry`=16483);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (16483, 0, 0, 3, 4097, 0, '');


DELETE FROM `creature_addon` WHERE (`guid`=57188);
DELETE FROM `creature_addon` WHERE (`guid`=57189);
DELETE FROM `creature_addon` WHERE (`guid`=57190);
DELETE FROM `creature_addon` WHERE (`guid`=57191);
DELETE FROM `creature_addon` WHERE (`guid`=57192);
DELETE FROM `creature_addon` WHERE (`guid`=57193);
DELETE FROM `creature_addon` WHERE (`guid`=57194);
DELETE FROM `creature_addon` WHERE (`guid`=57195);
DELETE FROM `creature_addon` WHERE (`guid`=57196);
DELETE FROM `creature_addon` WHERE (`guid`=57197);
DELETE FROM `creature_addon` WHERE (`guid`=57198);
DELETE FROM `creature_addon` WHERE (`guid`=57199);
DELETE FROM `creature_addon` WHERE (`guid`=57200);
DELETE FROM `creature_addon` WHERE (`guid`=57201);
DELETE FROM `creature_addon` WHERE (`guid`=57202);
DELETE FROM `creature_addon` WHERE (`guid`=57203);
DELETE FROM `creature_addon` WHERE (`guid`=57204);
DELETE FROM `creature_addon` WHERE (`guid`=57205);


DELETE FROM `creature` WHERE `id`=16483;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(57188, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4395.52, -13349.5, 50.3295, 3.735, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57189, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4500.6, -13520.9, 60.8727, 0.383972, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57190, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4451.14, -13549.8, 49.6751, 4.92183, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57191, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4440.35, -13605.4, 46.1065, 6.10865, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57192, 16483, 530, 6456, 3528, 1, 1, 0, 0, -4400.71, -13688.8, 50.4839, 1.0472, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57193, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4149.65, -13885.1, 78.8713, 1.55334, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57194, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4062.29, -13669.5, 71.5797, 6.24828, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57195, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4290.41, -13703.7, 56.7776, 5.32325, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57196, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4319.21, -13652.2, 50.6171, 1.98968, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57197, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4284.38, -13489.6, 47.8416, 1.90241, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57198, 16483, 530, 6456, 3560, 1, 1, 0, 0, -4068.4, -13560.1, 53.0503, 1.8326, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57199, 16483, 530, 6456, 3560, 1, 1, 0, 0, -4119.94, -13413.6, 53.8843, 0.785398, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57200, 16483, 530, 6456, 3526, 1, 1, 0, 0, -3979.17, -13538.2, 53.0914, 5.49779, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57201, 16483, 530, 6456, 3526, 1, 1, 0, 0, -3915.55, -13720.7, 64.4439, 1.01229, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57202, 16483, 530, 6456, 3526, 1, 1, 0, 0, -3944.69, -13770.1, 65.4194, 2.58309, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57203, 16483, 530, 6456, 3526, 1, 1, 0, 0, -3884.84, -13844.6, 89.2872, 0.15708, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57204, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4234.76, -13382.2, 42.8695, 3.52556, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57205, 16483, 530, 6456, 3526, 1, 1, 0, 0, -4317.74, -13417.1, 43.9235, 3.56047, 300, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=65153;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(1007352, 65153, 0, 1519, 5148, 1, 3969, 0, 0, -8955.68, 522.032, 96.3564, 3.78266, 300, 0, 0, 388218, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `unit_flags` = 536871814, `dynamicflags` = 32, `type_flags` = 128 WHERE `entry` = 237;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (237);
DELETE FROM `creature_template_addon` WHERE (`entry`=237);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (237, 0, 0, 7, 1, 65, '');
UPDATE `creature_template` SET `unit_flags2` = 1 WHERE `entry` = 237;

UPDATE `creature_template` SET `unit_flags` = 536871814, `dynamicflags` = 32, `type_flags` = 128 WHERE `entry` = 238;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (238);
DELETE FROM `creature_template_addon` WHERE (`entry`=238);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (238, 0, 0, 7, 1, 65, '');
UPDATE `creature_template` SET `unit_flags2` = 1 WHERE `entry` = 238;

UPDATE `creature_template` SET `unit_flags` = 536871814, `dynamicflags` = 32, `type_flags` = 128 WHERE `entry` = 582;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (582);
DELETE FROM `creature_template_addon` WHERE (`entry`=582);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (582, 0, 0, 7, 1, 65, '');
UPDATE `creature_template` SET `unit_flags2` = 1 WHERE `entry` = 582;
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 238;
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 582;
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 237;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 42391;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 42413;
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 42386;
UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 42391;

UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 26214;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 26213;


UPDATE `quest_template` SET `NextQuestId` = 14075, `NextQuestIdChain` = 14075 WHERE `Id` = 14138;
UPDATE `quest_template` SET `PrevQuestId` = 14138, `ExclusiveGroup` = 0, `NextQuestIdChain` = 25473 WHERE `Id` = 14075;
UPDATE `quest_template` SET `PrevQuestId` = 14138, `ExclusiveGroup` = 0, `NextQuestIdChain` = 25473 WHERE `Id` = 14069;
UPDATE `quest_template` SET `PrevQuestId` = 14075, `NextQuestId` = 28349, `NextQuestIdChain` = 28349 WHERE `Id` = 25473;


DELETE FROM `creature_template_addon` WHERE (`entry`=34830);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (34830, 0, 0, 3, 1, 0, 78677);

DELETE FROM `creature_template_addon` WHERE (`entry`=35239);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (35239, 0, 0, 0, 1, 233, '');



UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` IN (34835);


SET @ENTRY := 16518;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,29528,0,0,0,33,16518,0,0,0,0,0,7,0,0,0,0,0,0,0,"on Spell Hit - Give Credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"on Spell Hit - Despawn");

UPDATE `quest_template` SET `RequiredSourceItemId1` = 22962, `RequiredSourceItemCount1` = 1, `RequiredItemId1` = 0, `RequiredItemCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 9303;

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (16518);


DELETE FROM `creature_template_addon` WHERE (`entry`=50372);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50372, 0, 0, 50331648, 1, 0, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=49044);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49044, 0, 0, 50331648, 1, 0, '');

-- Agatha SAI
SET @ENTRY := 49044;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,24959,0,0,0,86,73524,0,7,0,0,0,7,0,0,0,0,0,0,0,"On quest 24959 accept revive player"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,28,73523,0,0,0,0,0,7,0,0,0,0,0,0,0,"Remove aura to player"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,1000,0,0,0,0,7,0,0,0,0,0,0,0,"Talk to action invoker"),
(@ENTRY,0,3,0,52,0,100,0,0,49044,0,0,1,1,3000,0,0,0,0,7,0,0,0,0,0,0,0,"On text over say text 1");

DELETE FROM `spell_area` WHERE `spell` IN (73523);

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (39014);
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 28651;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 24968;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24968;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24965;

DELETE FROM `creature_template_addon` WHERE (`entry`=50372);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (50372, 0, 0, 50331648, 1, 0, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=49044);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49044, 0, 0, 50331648, 1, 0, '');

-- Agatha SAI
SET @ENTRY := 49044;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,24959,0,0,0,86,73524,0,7,0,0,0,7,0,0,0,0,0,0,0,"On quest 24959 accept revive player"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,28,73523,0,0,0,0,0,7,0,0,0,0,0,0,0,"Remove aura to player"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,1000,0,0,0,0,7,0,0,0,0,0,0,0,"Talk to action invoker"),
(@ENTRY,0,3,0,52,0,100,0,0,49044,0,0,1,1,3000,0,0,0,0,7,0,0,0,0,0,0,0,"On text over say text 1");

DELETE FROM `spell_area` WHERE `spell` IN (73523);

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (39014);
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 28651;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `Id` = 24968;
UPDATE `quest_template` SET `ExclusiveGroup` = 0, `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24968;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24965;



DELETE FROM `creature` WHERE `id`=53566;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(930082, 53566, 1, 876, 876, 1, 65535, 0, 0, 16212.5, 16388.4, -64.3793, 0.793394, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(940660, 53566, 860, 5736, 5843, 1, 2048, 39574, 0, 1379.64, 3217.03, 141.672, 4.46804, 600, 0, 0, 393941, 0, 0, 3, 0, 0, 0, 0, 0, ''),
(940754, 53566, 860, 5736, 5834, 1, 8, 0, 0, 1462, 3465.59, 181.597, 2.85204, 600, 0, 0, 393941, 0, 0, 16777219, 0, 0, 0, 0, 0, ''),
(943211, 53566, 860, 5736, 5834, 1, 65535, 0, 0, 1445.36, 3384.91, 173.803, 1.30321, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1006324, 53566, 860, 5736, 5843, 1, 1, 0, 0, 1379.78, 3216.75, 141.61, 4.55629, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature` WHERE `id`=54608;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(940584, 54608, 860, 5736, 5848, 1, 32768, 39574, 0, 1168.26, 3442.33, 104.855, 3.45022, 600, 0, 0, 393941, 0, 0, 2, 0, 0, 0, 0, 0, ''),
(1006325, 54608, 860, 5736, 5846, 1, 1, 0, 0, 1217.5, 3497.55, 91.5094, 2.22849, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=54135;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(940379, 54135, 860, 5736, 5825, 1, 2056, 39675, 0, 1331.78, 3942.8, 110.522, 6.00393, 600, 0, 0, 204, 0, 0, 3, 0, 0, 0, 0, 0, '');

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 56040, `RequiredNpcOrGo4` = 0, `RequiredNpcOrGoCount4` = 0, `RequiredSourceItemId3` = 0, `RequiredSourceItemId4` = 0, `RequiredSourceItemCount3` = 0, `RequiredSourceItemCount4` = 0 WHERE `Id` = 29664;

DELETE FROM `creature` WHERE `id`=54135;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(940379, 54135, 860, 5736, 5825, 1, 2056, 39675, 0, 1331.78, 3942.8, 110.522, 6.00393, 600, 0, 0, 204, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(1006822, 54135, 860, 5736, 5849, 1, 1, 0, 0, 1307.86, 3943.49, 124.704, 0.673159, 300, 0, 0, 204, 0, 0, 0, 0, 0, 0, 0, 0, '');


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