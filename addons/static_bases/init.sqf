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

// Pythos Compound.sqf
["bases\pythos-compound","Camp X-Ray"] execVM "addons\static_bases\loadStaticBase.sqf";

