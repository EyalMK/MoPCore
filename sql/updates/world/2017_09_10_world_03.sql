-- Script/Quest: Fix: Never Trust a Big Barb and a Smile (25165)

SET @NPC_CLATTERING_SCORPID := 3125;


UPDATE `creature_template` SET `AIname`='', `ScriptName` = 'npc_clattering_scorpid' WHERE `entry`=@NPC_CLATTERING_SCORPID;

DELETE FROM `creature_text` WHERE `entry`=@NPC_CLATTERING_SCORPID;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@NPC_CLATTERING_SCORPID, 0, 0, 'Clattering Scorpid is casting Envenom! Place your totem down now!', 42, 0, 100, 0, 0, 0, 'Clattering Scorpid on Cast Envenom');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@NPC_CLATTERING_SCORPID;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC_CLATTERING_SCORPID;
