UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 26948;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26949;

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 138298;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26947;

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredSpellCast1` = 0 WHERE `Id` = 26940;


REPLACE INTO `creature_questrelation` VALUES (63331, 28723);

UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `Id` = 28724;