DELETE FROM `creature_addon` WHERE (`guid`=345921);
DELETE FROM `creature_addon` WHERE (`guid`=345694);
DELETE FROM `creature_addon` WHERE (`guid`=345695);

-- Fizz Lighter <Mage Trainer>
SET @ENTRY := 34689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,5000,15000,15000,11,69608,0,0,0,0,0,10,345921,34696,0,0,0,0,0,'Cast Fireball OOC'),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,'Play Emote on Gossip'),
(@ENTRY,0,2,0,19,0,100,0,14008,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Quest Add');
-- NPC talk text insert
SET @ENTRY := 34689;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'All what you have to do is let me show you how was a Visca cooperation. Then, head to one of the models to lead training on which Bamm is going to pull, start a pernicious attack and finish it with a Visca cooperation.',12,0,100,1,0,0, 'say Text');


SET @ENTRY := 34696;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,3000,5000,0,0,11,11939,0,0,0,0,0,1,0,0,0,0,0,0,0,'Summon Imp OOC'),
(@ENTRY,0,1,0,1,0,100,0,10000,10000,20000,20000,11,69607,0,0,0,0,0,10,345695,34689,0,0,0,0,0,'Cast Fireball OOC'),
(@ENTRY,0,2,0,64,0,100,0,0,0,0,0,10,1,3,5,6,0,0,1,0,0,0,0,0,0,0,'Play Emote on Gossip');

UPDATE `creature_template` SET `type_flags` = 0 WHERE `entry` = 34696;
UPDATE `gameobject` SET `phaseMask` = 1 WHERE `id` = 201603;

UPDATE `quest_template` SET `NextQuestId` = 26712 WHERE `Id` = 24520;
UPDATE `quest_template` SET `PrevQuestId` = 24520, `NextQuestId` = 14109, `NextQuestIdChain` = 14109 WHERE `Id` = 26712;
UPDATE `quest_template` SET `PrevQuestId` = 24520, `NextQuestId` = 14110, `NextQuestIdChain` = 14110 WHERE `Id` = 26711;

UPDATE `creature` SET `phaseMask` = 1046 WHERE `guid` = 1001642;

UPDATE `quest_template` SET `PrevQuestId` = 14110, `NextQuestIdChain` = 14115 WHERE `Id` = 14153;
UPDATE `quest_template` SET `PrevQuestId` = 14110, `NextQuestIdChain` = 14115 WHERE `Id` = 14113;

DELETE FROM `creature_questrelation` WHERE `id`=35120 AND `quest`=26712;

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` IN (35200,35294,35234);

UPDATE `creature_template` SET `faction_A` = 189, `faction_H` = 189 WHERE `entry` = 35200;

UPDATE `quest_template` SET `NextQuestId` = 14125, `NextQuestIdChain` = 14125 WHERE `Id` = 14122;
UPDATE `quest_template` SET `PrevQuestId` = 14125, `NextQuestIdChain` = 14126 WHERE `Id` = 14125;

UPDATE `gameobject` SET `phaseMask` = 2050 WHERE `id` = 195525;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 14122;


