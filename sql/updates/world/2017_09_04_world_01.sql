DELETE FROM `creature` WHERE `id`=63327;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`npcflag2`,`unit_flags`,`unit_flags2`,`dynamicflags`,`isActive`,`protec_anti_doublet`) VALUES
(1006317, 63327, 1, 6452, 221, 1, 1, 0, 0, -2914.07, -250.674, 59.6051, 5.96681, 300, 0, 0, 393941, 0, 0, 0, 0, 0, 0, 0, 0, '');


UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` IN (36697);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 27023;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSourceItemId1` = 0, `RequiredSourceItemCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 24861;