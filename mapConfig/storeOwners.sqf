// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 5, 30, []],   // Old Outpost General Store
				
			["GenStore2", 1, 180, []],  // Kill Farm General Store
				
			["GenStore3", 6, 320, []],  // Tsoukalia General Store
	
			["GenStore4", 3, 120, []],  // Girna General Store
							
			["GunStore1", 2, [55,2]],   // Camp Rogain Gun Store
	
			["GunStore3", 1, 165, []],  // Kamino Gun Store
	
			["GunStore4", 1, [295,2]],  // Central Gun Store
	
			["GunStore5", 1, 266, []],  // Agia Marina Gun Store
	
			["GunStore6", 3, 305, []],  // Agios Loannis Gun Store

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 5, 100, []],
	["VehStore2", 1, 157, ["Planes"]],
	["VehStore3", 4, 250, ["Boats"]],
	["VehStore4", 5, 100, ["Boats"]],
	["VehStore5", 0, 320, ["Planes"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_1"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore5", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore6", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
