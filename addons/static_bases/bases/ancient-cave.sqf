/*************************************************************************
	ancient-cave.sqf

	Author: 
	  bigAPE (shizweak.es)

	Description:
	  Constructs the Atlantian Cave

	Parameter(s):
	  None
	
	Example:
  	  ["pythos-compound"] execVM "addons\static_bases\loadStaticBase.sqf";
*************************************************************************/

private ["_name","_midpoint","_objects"];

/*
	["Land_HumanSkeleton_F",[6062.5298,4155.7002,6],326.81601],
	["Land_HumanSkeleton_F",[6065.5898,4150.1099,4],177.11099],
	["Land_HumanSkull_F",[6065.5898,4158.8999,6],0],
	["Land_HumanSkull_F",[6084.0298,4156.3999,3.2],0],
*/

_name = "Ancient Cave";
_midpoint = [];
_objects = [
	["Land_Sea_Wall_F",[6077,4151.1401,11.1296],192.597],
	["Land_Sea_Wall_F",[6078.23,4151.1401,11.1296],192.597],
	["Land_Amphitheater_F",[6067,4153.9102,0.2],285.073],
	["Land_AncientPillar_fallen_F",[6075.3799,4158.3901,1.0872999],35.919102],
	["Land_AncientPillar_fallen_F",[6106.27,4148.5898,0.68930602],29.516199],
	["Campfire_burning_F",[6066.3301,4154.2402,3.25],359.39899],
	["Land_Ancient_Wall_8m_F",[6072.5,4158.04,2.5],130],
	["Land_Ancient_Wall_4m_F",[6073.1201,4148.1001,1.0680701],61.643398],
	["Land_WoodenBox_F",[6077.3901,4147.29,0],192.424],
	["Land_Cages_F",[6070,4159.5,3.05],60.9],
	["Land_WoodPile_F",[6068.3,4158.2,3.1],230.35]
];

[_name, _midpoint, _objects]
