// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: uniformConverter.sqf
//	@file Author: AgentRev
//	@file Created: 23/12/2013 01:10

// The purpose of this script is to convert a uniform class to a side-equivalent one that is compatible with the player
// Example: "U_O_GhillieSuit" becomes "U_I_GhillieSuit" if the player is on Independent side

private ["_uniform", "_side", "_uniforms", "_uniArray"];
exit
