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


SET @ENTRY := 16518;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,29528,0,0,0,33,16518,0,0,0,0,0,7,0,0,0,0,0,0,0,"on Spell Hit - Give Credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"on Spell Hit - Despawn");

UPDATE `quest_template` SET `RequiredSourceItemId1` = 22962, `RequiredSourceItemCount1` = 1, `RequiredItemId1` = 0, `RequiredItemCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 9303;

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (16518);