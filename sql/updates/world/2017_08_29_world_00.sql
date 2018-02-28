-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115118;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6076.279,`position_y`=5022.369,`position_z`=-97.27872, `orientation`=1.92469 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6076.279, 5022.369, -97.27872, "Mistwhisper Warrior (115118)"),
(@PATH,2, 6073.912, 5027.189, -98.66564, "Mistwhisper Warrior (115118)"),
(@PATH,3, 6069.456, 5037.847, -100.15359, "Mistwhisper Warrior (115118)"),
(@PATH,4, 6066.423, 5046.919, -100.29566, "Mistwhisper Warrior (115118)"),
(@PATH,5, 6059.255, 5078.035, -107.41468, "Mistwhisper Warrior (115118)"),
(@PATH,6, 6053.842, 5079.862, -114.40554, "Mistwhisper Warrior (115118)"),
(@PATH,7, 6044.036, 5078.437, -120.69016, "Mistwhisper Warrior (115118)"),
(@PATH,8, 6029.512, 5063.146, -121.83036, "Mistwhisper Warrior (115118)"),
(@PATH,9, 6020.393, 5049.251, -111.10869, "Mistwhisper Warrior (115118)"),
(@PATH,10, 6023.269, 5042.015, -107.08974, "Mistwhisper Warrior (115118)"),
(@PATH,11, 6027.248, 5042.369, -105.55319, "Mistwhisper Warrior (115118)"),
(@PATH,12, 6026.281, 5047.535, -109.54904, "Mistwhisper Warrior (115118)"),
(@PATH,13, 6034.767, 5050.237, -106.80716, "Mistwhisper Warrior (115118)"),
(@PATH,14, 6051.003, 5048.421, -102.99414, "Mistwhisper Warrior (115118)"),
(@PATH,15, 6060.786, 5042.432, -101.58311, "Mistwhisper Warrior (115118)"),
(@PATH,16, 6066.781, 5032.418, -100.07182, "Mistwhisper Warrior (115118)"),
(@PATH,17, 6073.152, 5027.766, -98.92539, "Mistwhisper Warrior (115118)"),
(@PATH,18, 6076.279, 5022.369, -97.27872, "Mistwhisper Warrior (115118)");

-- Mistwhisper Warrior SAI
SET @GUID := -115118;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,21000,21000,0,0,53,1,1151180,1,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - OOC - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151180,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11511800,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,17,1151180,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 17 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,18,1151180,0,0,54,80000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 18 Reached - Pause Waypoint (80000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11511801,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 18 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11511800;
SET @GUID_2 := 11511801;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,20,0,0,0,0,1,0,0,0,6059.255,5078.035,-107.41468,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2300,2300,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.92469,"Mistwhisper Warrior - On Script - Set Orientation (1.92469)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)"),
(@GUID_2,9,2,0,0,0,100,0,4000,4000,0,0,45,1,1,0,0,0,0,10,115131,28109,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Data 1 1 (Creature GUID: 115131)");

-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115131;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6049.850,`position_y`=5022.839,`position_z`=-97.13569, `orientation`=1.309 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6049.850, 5022.839, -97.13569, "Mistwhisper Warrior (115131)"),
(@PATH,2, 6070.703, 5030.742, -99.99801, "Mistwhisper Warrior (115131)"),
(@PATH,3, 6068.607, 5040.355, -100.52777, "Mistwhisper Warrior (115131)"),
(@PATH,4, 6066.521, 5046.998, -100.30171, "Mistwhisper Warrior (115131)"),
(@PATH,5, 6051.849, 5063.708, -107.04435, "Mistwhisper Warrior (115131)"),
(@PATH,6, 6042.695, 5056.325, -106.7539, "Mistwhisper Warrior (115131)"),
(@PATH,7, 6030.988, 5049.38, -107.8774, "Mistwhisper Warrior (115131)"),
(@PATH,8, 6025.083, 5055.31, -117.65057, "Mistwhisper Warrior (115131)"),
(@PATH,9, 6020.028, 5059.921, -122.47513, "Mistwhisper Warrior (115131)"),
(@PATH,10, 6013.858, 5045.651, -112.89965, "Mistwhisper Warrior (115131)"),
(@PATH,11, 6033.597, 5052.935, -109.58926, "Mistwhisper Warrior (115131)"),
(@PATH,12, 6040.261, 5044.233, -102.60479, "Mistwhisper Warrior (115131)"),
(@PATH,13, 6046.975, 5029.368, -98.10837, "Mistwhisper Warrior (115131)"),
(@PATH,14, 6049.850, 5022.839, -97.13569, "Mistwhisper Warrior (115131)");

-- Mistwhisper Warrior SAI
SET @GUID := -115131;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,38,0,100,0,1,1,0,0,53,1,1151310,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Data Set 1 1 - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151310,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11513100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,13,1151310,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 13 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,14,1151310,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 14 Reached - Pause Waypoint (10000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11513101,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 14 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11513100;
SET @GUID_2 := 11513101;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,15,0,0,0,0,1,0,0,0,6051.849,5063.708,-107.04435,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2000,2000,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.309,"Mistwhisper Warrior - On Script - Set Orientation (1.309)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)");

-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115134;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6042.082,`position_y`=5002.574,`position_z`=-96.88744, `orientation`=3.00614 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6042.082, 5002.574, -96.88744, "Mistwhisper Warrior (115134)"),
(@PATH,2, 6038.291, 5002.377, -97.56532, "Mistwhisper Warrior (115134)"),
(@PATH,3, 6033.761, 5001.425, -98.98548, "Mistwhisper Warrior (115134)"),
(@PATH,4, 6029.836, 5000.640, -100.53482, "Mistwhisper Warrior (115134)"),
(@PATH,5, 6009.945, 4995.829, -104.38526, "Mistwhisper Warrior (115134)"),
(@PATH,6, 5999.171, 4992.893, -106.56662, "Mistwhisper Warrior (115134)"),
(@PATH,7, 6000.089, 4975.017, -105.71107, "Mistwhisper Warrior (115134)"),
(@PATH,8, 5999.520, 4962.056, -106.83031, "Mistwhisper Warrior (115134)"),
(@PATH,9, 6003.883, 4976.588, -105.60076, "Mistwhisper Warrior (115134)"),
(@PATH,10, 6010.285, 4962.893, -105.37159, "Mistwhisper Warrior (115134)"),
(@PATH,11, 6012.646, 4980.371, -104.45238, "Mistwhisper Warrior (115134)"),
(@PATH,12, 6024.401, 4989.641, -102.73515, "Mistwhisper Warrior (115134)"),
(@PATH,13, 6036.152, 4998.426, -98.49916, "Mistwhisper Warrior (115134)"),
(@PATH,14, 6042.082, 5002.574, -96.88744, "Mistwhisper Warrior (115134)");

-- Mistwhisper Warrior SAI
SET @GUID := -115134;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,90000,90000,0,0,53,1,1151340,1,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - OOC - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151340,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11513400,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,13,1151340,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 13 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,14,1151340,0,0,54,90000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 14 Reached - Pause Waypoint (90000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11513401,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 14 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11513400;
SET @GUID_2 := 11513401;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,15,0,0,0,0,1,0,0,0,6009.945,4995.829,-104.38526,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2500,2500,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.00614,"Mistwhisper Warrior - On Script - Set Orientation (3.00614)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)");

-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115119;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6120.375,`position_y`=5039.646,`position_z`=-95.20983, `orientation`=2.25697 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6120.375, 5039.646, -95.20983, "Mistwhisper Warrior (115119)"), -- Speed 1.0
(@PATH,2, 6118.195, 5041.949, -95.49123, "Mistwhisper Warrior (115119)"), -- Speed 1.5
(@PATH,3, 6113.741, 5045.897, -96.22935, "Mistwhisper Warrior (115119)"), -- Speed 2.19048
(@PATH,4, 6110.252, 5052.47, -98.66798, "Mistwhisper Warrior (115119)"),
(@PATH,5, 6084.526, 5069.534, -107.4278, "Mistwhisper Warrior (115119)"), -- Speed 1.19048
(@PATH,6, 6074.85, 5071.989, -111.1413, "Mistwhisper Warrior (115119)"),
(@PATH,7, 6056.504, 5077.211, -123.9296, "Mistwhisper Warrior (115119)"),
(@PATH,8, 6058.536, 5091.251, -129.2216, "Mistwhisper Warrior (115119)"),
(@PATH,9, 6068.095, 5081.961, -124.7609, "Mistwhisper Warrior (115119)"),
(@PATH,10, 6073.99, 5077.042, -117.69684, "Mistwhisper Warrior (115119)"),
(@PATH,11, 6086.55, 5069.287, -107.26804, "Mistwhisper Warrior (115119)"),
(@PATH,12, 6097.033, 5062.563, -102.58751, "Mistwhisper Warrior (115119)"),
(@PATH,13, 6106.331, 5053.845, -100.07466, "Mistwhisper Warrior (115119)"),
(@PATH,14, 6112.457, 5047.144, -96.25162, "Mistwhisper Warrior (115119)"),
(@PATH,15, 6113.741, 5045.897, -96.22935, "Mistwhisper Warrior (115119)"),
(@PATH,16, 6118.195, 5041.949, -95.49123, "Mistwhisper Warrior (115119)"),
(@PATH,17, 6120.375, 5039.646, -95.20983, "Mistwhisper Warrior (115119)");

-- Mistwhisper Warrior SAI
SET @GUID := -115119;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,1000,1000,0,0,53,1,1151190,1,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - OOC - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151190,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11511900,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,16,1151190,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 16 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,17,1151190,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 17 Reached - Pause Waypoint (60000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11511901,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 17 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11511900;
SET @GUID_2 := 11511901;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,20,0,0,0,0,1,0,0,0,6084.529,5069.529,-107.428,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2500,2500,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.25697,"Mistwhisper Warrior - On Script - Set Orientation (2.25697)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)");

-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115129;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6186.96,`position_y`=5115.189,`position_z`=-97.13298, `orientation`=1.75684 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6186.96, 5115.189, -97.13298, "Mistwhisper Warrior (115129)"),
(@PATH,2, 6185.408, 5120.904, -97.11131, "Mistwhisper Warrior (115129)"),
(@PATH,3, 6182.593, 5129.377, -99.16285, "Mistwhisper Warrior (115129)"),
(@PATH,4, 6180.341, 5137.248, -100.29631, "Mistwhisper Warrior (115129)"),
(@PATH,5, 6169.454, 5171.301, -106.38567, "Mistwhisper Warrior (115129)"),
(@PATH,6, 6167.896, 5179.186, -115.19417, "Mistwhisper Warrior (115129)"),
(@PATH,7, 6171.421, 5188.312, -123.32645, "Mistwhisper Warrior (115129)"),
(@PATH,8, 6155.185, 5194.644, -123.80791, "Mistwhisper Warrior (115129)"),
(@PATH,9, 6148.170, 5203.403, -121.30748, "Mistwhisper Warrior (115129)"),
(@PATH,10, 6148.380, 5183.957, -119.47844, "Mistwhisper Warrior (115129)"),
(@PATH,11, 6162.051, 5179.651, -115.67862, "Mistwhisper Warrior (115129)"),
(@PATH,12, 6172.432, 5164.499, -105.91606, "Mistwhisper Warrior (115129)"),
(@PATH,13, 6183.426, 5151.992, -103.54115, "Mistwhisper Warrior (115129)"),
(@PATH,14, 6190.964, 5140.732, -101.17592, "Mistwhisper Warrior (115129)"),
(@PATH,15, 6188.271, 5124.495, -97.32618, "Mistwhisper Warrior (115129)"),
(@PATH,16, 6186.96, 5115.189, -97.13298, "Mistwhisper Warrior (115129)");

-- Mistwhisper Warrior SAI
SET @GUID := -115129;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,25000,25000,0,0,53,1,1151290,1,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - OOC - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151290,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11512900,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,15,1151290,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 15 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,16,1151290,0,0,54,65000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 16 Reached - Pause Waypoint (65000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11512901,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 16 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11512900;
SET @GUID_2 := 11512901;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,20,0,0,0,0,1,0,0,0,6169.454,5171.301,-106.38567,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2500,2500,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.75684,"Mistwhisper Warrior - On Script - Set Orientation (1.75684)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)");

-- Pathing for Mistwhisper Warrior Entry: 28109 'TDB FORMAT' 
SET @NPC := 115123;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `unit_flags`=770,`spawndist`=0,`MovementType`=0,`position_x`=6141.807,`position_y`=5068.366,`position_z`=-96.85513, `orientation`=2.97562 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,0,0,0,1,0, '');
DELETE FROM `waypoints` WHERE `entry`=@PATH;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PATH,1, 6141.807, 5068.366, -96.85513, "Mistwhisper Warrior (115123)"),
(@PATH,2, 6137.790, 5069.112, -97.67894, "Mistwhisper Warrior (115123)"),
(@PATH,3, 6133.453, 5071.221, -99.17060, "Mistwhisper Warrior (115123)"),
(@PATH,4, 6126.267, 5075.662, -100.76831, "Mistwhisper Warrior (115123)"),
(@PATH,5, 6098.898, 5090.030, -105.27037, "Mistwhisper Warrior (115123)"),
(@PATH,6, 6092.695, 5100.245, -112.38995, "Mistwhisper Warrior (115123)"),
(@PATH,7, 6095.387, 5106.863, -116.79693, "Mistwhisper Warrior (115123)"),
(@PATH,8, 6098.387, 5104.705, -121.49202, "Mistwhisper Warrior (115123)"),
(@PATH,9, 6071.477, 5093.633, -115.18718, "Mistwhisper Warrior (115123)"),
(@PATH,10, 6066.579, 5097.074, -118.16359, "Mistwhisper Warrior (115123)"),
(@PATH,11, 6081.762, 5098.026, -110.27392, "Mistwhisper Warrior (115123)"),
(@PATH,12, 6093.626, 5083.836, -112.96647, "Mistwhisper Warrior (115123)"),
(@PATH,13, 6110.486, 5086.624, -104.46540, "Mistwhisper Warrior (115123)"),
(@PATH,14, 6120.071, 5082.021, -101.50028, "Mistwhisper Warrior (115123)"),
(@PATH,15, 6134.647, 5073.206, -98.80255, "Mistwhisper Warrior (115123)"),
(@PATH,16, 6141.807, 5068.366, -96.85513, "Mistwhisper Warrior (115123)");

-- Mistwhisper Warrior SAI
SET @GUID := -115123;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=28109;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,44000,44000,0,0,53,1,1151230,1,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - OOC - Start Waypoint"),
(@GUID,0,1,2,40,0,100,0,4,1151230,0,0,54,2700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Pause Waypoint (2700 ms)"),
(@GUID,0,2,0,61,0,100,0,0,0,0,0,80,11512300,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,15,1151230,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 15 Reached - Set Run (0)"),
(@GUID,0,4,5,40,0,100,0,16,1151230,0,0,54,85000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 16 Reached - Pause Waypoint (85000 ms)"),
(@GUID,0,5,0,61,0,100,0,0,0,0,0,80,11512301,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Waypoint 16 Reached - Run Script");

-- Actionlist SAI
SET @GUID   := 11512300;
SET @GUID_2 := 11512301;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GUID, @GUID_2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active On"),
(@GUID,9,1,0,0,0,100,0,0,0,0,0,97,20,15,0,0,0,0,1,0,0,0,6098.898,5090.030,-105.27037,0,"Mistwhisper Warrior - On Script - Jump To Pos"),
(@GUID,9,2,0,0,0,100,0,2500,2500,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Active Off"),
(@GUID_2,9,0,0,0,0,100,0,600,600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.97562,"Mistwhisper Warrior - On Script - Set Orientation (2.97562)"),
(@GUID_2,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mistwhisper Warrior - On Script - Set Run (1)");
