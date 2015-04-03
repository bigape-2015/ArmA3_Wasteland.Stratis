// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: setMissionSkill.sqf
//	@file Author: AgentRev
//	@file Created: 21/10/2013 19:14
//	@file Args:

if (!isServer) exitWith {};

private ["_unit", "_skill", "_accuracy"];
_unit = _this;

if (["A3W_missionsDifficulty"] call isConfigOn) then
{
	_skill = 0.5; // Default skill for ARMA3 is 0.5
	_accuracy = 1; // Relative multiplier; absolute default accuracy for ARMA3 is 0.25
}
else
{
	_skill = 0.33;
	_accuracy = 0.75;
};

_unit allowFleeing 0;
_unit setSkill _skill;
_unit setSkill ["aimingShake", 0.9]; //since they won't use weapon rest
_unit setSkill ["aimingSpeed", 0.8];//how fast they turn and/or aim
_unit setSkill ["aimingAccuracy", 0.6]; //affects how quickly they work-out the correct lead on you
_unit setSkill ["spotTime", 0.8]; //they'll react quicker
_unit setSkill ["commanding", 0.8]; //share information within a group faster - only works for groups with a leader
_unit setSkill ["courage", 0.8]; //override the other setting that sets this to 1.

// Available skills are explained here: http://community.bistudio.com/wiki/AI_Sub-skills
// Skill values are between 0 and 1
