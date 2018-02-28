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

