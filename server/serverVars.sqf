// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Version: 1.1
//  @file Name: serverVars.sqf
//  @file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//  @file Created: 20/11/2012 05:19
//  @file Args:

if (!isServer) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

#include "functions\setupServerPVars.sqf"

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
  "C_Quadbike_01_F",
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_SUV_01_F",
	"C_Offroad_01_F",
	"I_G_Offroad_01_F",
	"C_Van_01_box_F",
	"C_Van_01_transport_F"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
  "B_Quadbike_01_F",
	"O_Quadbike_01_F",
	"I_Quadbike_01_F",
	"I_G_Quadbike_01_F",
//	"O_Truck_02_covered_F",
//	"I_Truck_02_covered_F",
//	"O_Truck_02_transport_F",
//	"I_Truck_02_transport_F",
	"I_G_Offroad_01_armed_F"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
//	"I_Truck_02_Fuel_F",
//	"O_Truck_02_Fuel_F",
//	"I_Truck_02_medical_F",
//	"O_Truck_02_medical_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
//	"B_Lifeboat",
//	"O_Lifeboat",
//	"C_Rubberboat",
//	"B_SDV_01_F",
//	"O_SDV_01_F",
//	"I_SDV_01_F",
//	"B_Boat_Transport_01_F",
//	"O_Boat_Transport_01_F",
//	"I_Boat_Transport_01_F",
//	"I_G_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"O_Boat_Armed_01_hmg_F",
	"I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
  "B_supplyCrate_F",
  "Land_Sacks_goods_F",
  "Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
  "B_supplyCrate_F",
  "B_supplyCrate_F",
  "CamoNet_INDP_open_F",
  "CamoNet_INDP_open_F",
  "Land_BagBunker_Large_F",
  "Land_BagBunker_Large_F",
  "Land_BagBunker_Small_F",
  "Land_BagBunker_Small_F",
  "Land_BagBunker_Tower_F",
  "Land_BagBunker_Tower_F",
  "Land_BarGate_F",
  "Land_Canal_Wall_Stairs_F",
  "Land_Canal_WallSmall_10m_F",
  "Land_Canal_WallSmall_10m_F",
  "Land_CncBarrierMedium4_F",
  "Land_CncShelter_F",
  "Land_CncWall4_F",
  "Land_HBarrier_1_F",
  "Land_HBarrier_3_F",
  "Land_HBarrier_5_F",
  "Land_HBarrier_5_F",
  "Land_HBarrier_5_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierTower_F",
  "Land_HBarrierWall4_F",
  "Land_HBarrierWall4_F",
  "Land_HBarrierWall6_F",
  "Land_HBarrierWall6_F",
  "Land_MetalBarrel_F",
  "Land_Mil_ConcreteWall_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Pipes_large_F",
  "Land_RampConcrete_F",
  "Land_RampConcreteHigh_F",
  "Land_Sacks_goods_F",
  "Land_Shoot_House_Wall_F",
  "Land_BarrelWater_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
  "B_Mortar_01_F",
  "O_Mortar_01_F",
  "I_Mortar_01_F",
  "I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
  "B_Heli_Light_01_F",
	"B_Heli_Light_01_F",
	"O_Heli_Light_02_unarmed_F",
	"I_Heli_light_03_unarmed_F"
  // don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
 "B_Plane_CAS_01_F",
 "O_Plane_CAS_02_F",
 "I_Plane_Fighter_03_CAS_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
//	"hgun_P07_F",
//	"hgun_Rook40_F",
//	"hgun_ACPC2_F",
//	"arifle_SDAR_F",
	"SMG_01_F",	// Vermin .45 ACP
	"SMG_02_F",	// Sting 9mm
	"hgun_PDW2000_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_TRG21_GL_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_F",
	"arifle_Mk20_GL_F",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_MXC_F",
	"arifle_MX_F",
	"arifle_MX_GL_F",
	"arifle_MX_SW_F",
	"arifle_MXM_F",
	"srifle_EBR_F",
	"LMG_Mk200_F",
	"LMG_Zafir_F"
];

vehicleAddition =
[
 "muzzle_snds_L", // 9mm
	"muzzle_snds_M", // 5.56mm
	"muzzle_snds_H", // 6.5mm
	"muzzle_snds_H_MG", // 6.5mm LMG
	"muzzle_snds_B", // 7.62mm
	"muzzle_snds_acp", // .45 ACP
	"optic_Arco",
	"optic_SOS",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_aco_smg",
	"optic_Holosight",
	"optic_Holosight_smg",
	"acc_flashlight",
	"acc_pointer_IR",
	"Medikit",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 =
[
  "Chemlight_blue",
	"Chemlight_green",
	"Chemlight_yellow",
	"Chemlight_red",
	"HandGrenade",
	"MiniGrenade",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellYellow"
];

// Each array item in the following random*Cargo arrays is an array
// containg [cargo type, weapon amount, item amount, weapon duplicates,
// item duplicates] to be passed to randomCargoFill.sqf, used to fill
// already existing box/vehicle.

randomMissionBasicCargo = [
  ["box_west_basic", 5, 5, true, true],
  ["box_east_basic", 5, 5, true, true]
];

randomMissionSpecialCargo = [
  ["box_west_special", 5, 5, true, true],
  ["box_east_special", 5, 5, true, true]
];

randomMissionExplosiveCargo = [
  ["box_west_explosive", 3, 5, true, true],
  ["box_east_explosive", 3, 5, true, true]
];

// Combine all into a randomMissionCargo array
randomMissionCargo = (
  randomMissionBasicCargo +
  randomMissionSpecialCargo +
  randomMissionExplosiveCargo
);

// Each array item in the randomWeaponBoxes arrays is an array
// containg [cargo type, weapon amount, item amount, box class] to
// be passed to randomWeaponsBox.sqf, used to spawn and fill a 
// box/vehicle (e.g. box class could be a vehicle class).

randomWeaponBoxes = [
  ["box_west_basic", 4, 5, "Box_NATO_Wps_F"],
  ["box_west_special", 4, 5, "Box_NATO_WpsSpecial_F"],
  ["box_west_explosive", 2, 5, "Box_NATO_AmmoOrd_F"],
  ["box_east_basic", 4, 5, "Box_East_Wps_F"],
  ["box_east_special", 4, 5, "Box_East_WpsSpecial_F"],
  ["box_east_explosive", 2, 5, "Box_East_AmmoOrd_F"]
];


// Each item is an array containing a [weapon class, magazine
// amount, random attachment amount, random alt muzzle
// magazine amount] followed by an array of cargo types it has
// a chance to  randomly spawn in
randomCargoWeapons = [

// PISTOL/SMG/SHOTGUN
  [["hgun_P07_F", 2, 2, 0], ["box_west_basic", "box_east_basic"]],                  
  [["hgun_ACPC2_F", 2, 2, 0], ["box_west_basic", "box_east_basic"]],                   
  [["hgun_Rook40_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                
  [["hgun_Pistol_heavy_01_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                 
  [["hgun_Pistol_heavy_02_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                  
  [["SMG_01_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   
  [["SMG_02_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   
  [["hgun_PDW2000_F", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                             


// ASSAULT RIFLE
  [["srifle_EBR_F", 3, 2, 2], ["box_west_special"]],                                   
  [["arifle_Katiba_F", 3, 2, 2], ["box_east_basic"]],                              
  [["arifle_MXC_F", 3, 2, 2], ["box_west_basic"]],                              
  [["arifle_MX_F", 3, 2, 2], ["box_west_basic"]],                        
  [["arifle_MX_GL_F", 3, 2, 2], ["box_west_basic"]],                  

  [["arifle_TRG21_F", 3, 2, 2], ["box_east_basic"]],                                    
  [["arifle_TRG20_F", 3, 2, 2], ["box_east_basic"]],                              
  [["arifle_TRG21_GL_F", 3, 2, 2], ["box_east_basic"]],                               
  [["arifle_Mk20_F", 3, 2, 2], ["box_west_basic"]],                               
  [["arifle_Mk20C_plain_F", 3, 2, 2], ["box_west_basic"]],                         
  [["arifle_Mk20_GL_F", 3, 2, 2], ["box_west_basic"]],                      
  [["arifle_Mk20_GL_plain_F", 3, 2, 2], ["box_west_basic"]],                                   

  [["srifle_DMR_01_F", 3, 2, 2], ["box_east_special"]],                                 
  [["arifle_MXC_Black_F", 3, 2, 2], ["box_west_basic"]],                              
  [["arifle_MX_Black_F", 3, 2, 2], ["box_west_basic"]],                             
  [["arifle_MX_GL_Black_F", 3, 2, 2], ["box_west_basic"]],                              
  [["arifle_Katiba_GL_F", 3, 2, 2], ["box_east_basic"]],      

// SNIPER
  [["srifle_LRR_F", 4, 1, 0], ["box_east_special"]],                                                                     

  [["arifle_MXM_Black_F", 4, 1, 0], ["box_west_special"]],                                 
  [["arifle_MXM_F", 4, 1, 0], ["box_west_special"]],                                                                   

// LMG
  [["LMG_Zafir_F", 1, 2, 2], ["box_east_special"]],                                                                
  [["arifle_MX_SW_F", 1, 2, 2], ["box_west_special"]],                            
  [["LMG_Mk200_F", 1, 2, 2], ["box_west_special"]],                                
  [["arifle_MX_SW_Black_F", 1, 2, 2], ["box_west_special"]],                                 
                              
// LAUNCHER
  [["launch_RPG32_F", 2, 2, 0], ["box_east_explosive"]],                                
  [["launch_I_Titan_F", 1, 1, 0], ["box_east_explosive"]],                               
  [["launch_O_Titan_short_F", 1, 1, 0], ["box_east_explosive"]],                                            

  [["launch_NLAW_F", 2, 2, 0], ["box_west_explosive"]],                              
  [["launch_B_Titan_F", 1, 1, 0], ["box_west_explosive"]],                               
  [["launch_B_Titan_short_F", 1, 1, 0], ["box_west_explosive"]]                                
                                
];

// Each item is an array containg an item class, followed by
// an array of each cargo type it has a chance to randomly
randomCargoItems = [
  ["SmokeShell", ["box_west_special","box_west_explosive"]],                          
  ["HandGrenade", ["box_west_basic","box_west_special","box_west_explosive"]],          
  ["1Rnd_HE_Grenade_shell", ["box_west_explosive"]],                                       
  ["SLAMDirectionalMine_Wire_Mag", ["box_west_explosive"]],                                        
  ["ClaymoreDirectionalMine_Remote_Mag", ["box_west_explosive"]],                                       

  ["MiniGrenade", ["box_east_basic", "box_east_special", "box_east_explosive"]],       
  ["SmokeShell", ["box_east_special", "box_east_explosive"]],                        
                      
  ["APERSMine_Range_Mag", ["box_east_explosive"]],                                           
  ["ATMine_Range_Mag", ["box_east_explosive"]],                                           

  ["ItemGPS", ["box_west_basic", "box_east_basic"]],                                    // GPS
  ["FirstAidKit", ["box_west_basic", "box_east_basic"]],                                // First Aid Kit
  ["Medikit", ["box_west_basic", "box_east_basic"]],                                    // Medikit
  ["ToolKit", ["box_west_basic", "box_east_basic"]],                                    // Toolkit
  ["Binocular", ["box_west_basic", "box_east_basic"]],                                  // Binoculars
  ["Rangefinder", ["box_west_basic", "box_east_basic"]],                                // Rangefinder
  ["Laserdesignator", ["box_west_basic", "box_east_basic"]]                             // Laser Designator
];

aiRandomClasses = [
  "C_man_1_3_F",
  "C_man_polo_1_F",
  "C_man_polo_2_F",
  "C_man_polo_3_F",
  "C_man_polo_4_F",
  "C_man_polo_5_F",
  "C_man_polo_6_F"
];

aiLoadoutsBasic = [
  [
    ["U_IG_Guerilla1_1", "U_I_CombatUniform_shortsleeve"],                                                                                         // Uniforms
    ["V_HarnessOSpec_brn", "V_HarnessOGL_gry", "V_TacVestCamo_khk", "V_Chestrig_rgr"],                    // Vests
    ["H_Booniehat_indp", "H_Shemag_khk", "H_MilCap_ocamo", "H_HelmetIA_net"],                                // Headgear
    ["arifle_Katiba_F","arifle_Mk20C_plain_F","arifle_TRG20_F","LMG_Zafir_F"],                                         // Rifles
    ["B_Kitbag_mcamo", "launch_RPG32_F", "RPG32_F"]                                                         // Backpack, Launcher, Missile
  ],
  [
    ["U_OG_Guerilla2_2", "U_O_CombatUniform_ocamo"],                                                                                            // Uniforms
    ["V_BandollierB_cbr", "V_Rangemaster_belt", "V_PlateCarrierIA1_dgtl", "V_TacVestIR_blk"],                                 // Vests
    ["H_Bandanna_khk", "H_Shemag_olive", "H_Beret_grn", "H_Watchcap_blk"],         						// Headgear
    ["arifle_MXC_F","arifle_Mk20C_plain_F","arifle_TRG20_F","LMG_Zafir_F"],                                             // Rifles
    ["B_Carryall_ocamo", "launch_NLAW_F", "NLAW_F"]                                                              // Backpack, Launcher, Missile
  ]
];

aiLoadoutsCrewman = [
  [
    ["U_O_SpecopsUniform_ocamo"],                                                     // Uniforms
    ["SMG_01_F", "SMG_02_F", "arifle_Katiba_F"]         // Rifles
  ],
  [
    ["U_I_pilotCoveralls"],                                                        // Uniforms
    ["SMG_01_F", "SMG_02_F", "arifle_Katiba_F"]                   // Rifles
  ] 
];