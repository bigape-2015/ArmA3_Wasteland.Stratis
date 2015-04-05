/*************************************************************************
	init.sqf 

	Author: 
	  bigAPE (shizweak.es)

	Description:
	  Initialises static base definitions for server

	Parameter(s):
	  None
	
	Example:
  	  //execVM "addons\static_bases\init.sqf";
*************************************************************************/

diag_log "###################################";
diag_log "##      Loading Static Bases     ##";
diag_log "###################################";

_bases = [
	["bases\pythos-compound"]
];

_loadBase = compile preprocessFileLineNumbers "addons\static_bases\loadStaticBase.sqf";

for "_i" from 0 to ((count _bases)-1) step 1 do {
	(_bases select _i) call _loadBase;
};