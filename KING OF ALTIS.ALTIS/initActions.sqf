cargobox_blu addAction ["Save Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_blu addAction ["Equip saved Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];  
cargobox_red addAction ["Save Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_red addAction ["Equip saved Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];
cargobox_ind addAction ["Save Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_ind addAction ["Equip saved Loadout", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];
 
 
 
flagpole_blu addAction ["Teleport to Spawn-Truck", {
if(typeName spawntruck_blu == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_blu;
}
else{
	hint "Truck was destroyed and will respawn soon.";
};
}];
flagpole_blu addAction ["Teleport to AIRBASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "BLUFOR_BASE_AIR");
}];
flagpole_blu addAction ["Save stats manually", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint "Your stats were saved manually on the server.";
		sleep 60;
		player_savecooldown = false;
	};
}];
flagpole_red addAction ["Teleport to Spawn-Truck", {
if(typeName spawntruck_red == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_red;
}
else{
	hint "Truck was destroyed and will respawn soon.";
};
}];
flagpole_red addAction ["Teleport to AIRBASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "OPFOR_BASE_AIR");
}];
flagpole_red addAction ["Save stats manually", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint "Your stats were saved manually on the server.";
		sleep 60;
		player_savecooldown = false;
	};
}];
flagpole_ind addAction ["Teleport to Spawn-Truck", {
if(typeName spawntruck_ind == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_ind;
}
else{
	hint "Truck was destroyed and will respawn soon.";
};
}];
flagpole_ind addAction ["Teleport to AIRBASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "INDEPENDENT_BASE_AIR");
}];
flagpole_ind addAction ["Save stats manually", {
	if (!player_savecooldown) then
	{
		player_savecooldown = true;
		[[player, player_stats], "updatePlayerStats", false, false] spawn BIS_fnc_MP;
		sleep 0.5;
		hint "Your stats were saved manually on the server.";
		sleep 60;
		player_savecooldown = false;
	};
}];


flagpole_blu_air addAction ["Teleport to BASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "respawn_west");
}];
flagpole_red_air addAction ["Teleport to BASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "respawn_east");
}];
flagpole_ind_air addAction ["Teleport to BASE", {
	hint "You will be teleported in 10 seconds!";
	sleep 10;
	_this select 1 setPos (getMarkerPos "respawn_guerrila");
}];
	
	
	trader_weapons_blu addAction ["Buy Katiba Carbine (Rank 1)", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_blu addAction ["Buy Katiba (Rank 2)", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Mk20 (Rank 3)", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy TRG-21 (Rank 4)", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Vector (Rank 4)", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Scorpion (Rank 5)", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy MX (Rank 6)", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy MX GL (Rank 12)", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy MXM (Rank 7)", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy PDW 2000 (Rank 8)", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy MX SW (Rank 8)", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Mk200 (Rank 10)", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Mk18 ABR (Rank 16)", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Zafir (Rank 20)", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy M320 LRR (Rank 26)", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy GM6 Lynx(Rank 30)", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy ACP Pistol (Rank 5)", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Revolver (Rank 16)", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy NLAW Launcher (Rank 6)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Alamut Launcher (Rank 10)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_blu addAction ["Buy Smoke Grenade (Rank 3)", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Red Smoke (Rank 8)", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Green Smoke (Rank 8)", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Blue Smoke (Rank 8)", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Purple Smoke (Rank 22)", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Backpack (for toolkit and rockets) (Rank 6)", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Parachute (Rank 1)", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Medikit (Rank 5)", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Toolkit (Rank 6)", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Binoculars (Rank 8)", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Rangefinder (Rank 18)", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy UAV Terminal (Rank 20)", {"B_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Green Flare GL (Rank 12)", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Red Flare GL (Rank 12)", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy White Smoke GL (Rank 12)", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Green Smoke GL (Rank 12)", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Red Smoke GL (Rank 12)", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Blue Chemlight (Rank 6)", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Green Chemlight (Rank 6)", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_blu addAction ["Buy Red Chemlight (Rank 6)", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	
	trader_mags_blu addAction ["Buy Magazine (Rank 1)", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy Tracer Magazine (Rank 8)", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy ACO optic (Rank 3)", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy HOLOSIGHT (Rank 5)", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy MRCO optic (Rank 8)", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy ARCO optic (Rank 12)", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy RCO optic (Rank 14)", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy SOS optic (Rank 16)", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy 9mm Supressor (Rank 18)", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy .45 Supressor (Rank 18)", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy 5.56 Supressor (Rank 18)", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy 6.5 Supressor (Rank 18)", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy 7.62 Supressor (Rank 18)", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy IR Laserpointer (turn on with L) (Rank 10)", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_blu addAction ["Buy Flashlight (Rank 6)", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_blu addAction ["Buy Ghillie Suit (Rank 18)", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Bandanna (Rank 6)", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Beret (Rank 10)", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Cap (Rank 12)", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Beanie (Rank 14)", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Booniehat Green (Rank 16)", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Booniehat Tan (Rank 16)", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Military Cap (Rank 18)", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_blu addAction ["Buy Shemag (Rank 20)", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	
	
	
	
	trader_cars_blu addAction ["Buy ATV (Rank 1)", {["B_Quadbike_01_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Hunter (Rank 5)", {["B_MRAP_01_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Ifrit (Rank 6)", {["O_MRAP_02_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Strider (Rank 7)", {["I_MRAP_03_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Armed Pickup (Rank 8)", {["B_G_Offroad_01_armed_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Zamak (Rank 8)", {["I_Truck_02_covered_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Hunter HMG (Rank 10)", {["B_MRAP_01_hmg_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Ifrit HMG(Rank 11)", {["O_MRAP_02_hmg_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Strider HMG (Rank 12)", {["I_MRAP_03_hmg_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Hunter GMG (Rank 14)", {["B_MRAP_01_gmg_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Ifrit GMG (Rank 15)", {["O_MRAP_02_gmg_F","blu"] execVM "buyVehicle.sqf"}];
	trader_cars_blu addAction ["Buy Strider GMG (Rank 16)", {["I_MRAP_03_gmg_F","blu"] execVM "buyVehicle.sqf"}];
	
	trader_heavy_blu addAction ["Buy Marid - light wheeled APC (Rank 18)", {["O_APC_Wheeled_02_rcws_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Panther - light APC (Rank 19)", {["B_APC_Tracked_01_rcws_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Marshall - wheeled APC (Rank 20)", {["B_APC_Wheeled_01_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Gorgon - wheeled APC (Rank 21)", {["I_APC_Wheeled_03_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Mora - APC (Rank 22)", {["I_APC_tracked_03_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Kamysh  - APC (Rank 24)", {["O_APC_Tracked_02_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Cheetah - AA (Rank 30)", {["B_APC_Tracked_01_AA_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Tigris - AA (Rank 32)", {["O_APC_Tracked_02_AA_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Slammer - MBT (Rank 28)", {["B_MBT_01_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Varsuk - MBT (Rank 32)", {["O_MBT_02_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Kuma - MBT (Rank 35)", {["I_MBT_03_cannon_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Little Bird (Rank 12)", {["B_Heli_Light_01_F","blu"] execVM "buyVehicle.sqf"}];
	trader_heavy_blu addAction ["Buy Armed Little Bird (Rank 20)", {["B_Heli_Light_01_armed_F","blu"] execVM "buyVehicle.sqf"}];
	
	trader_air_blu addAction ["Buy Orca (Rank 16)", {["O_Heli_Light_02_unarmed_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Hellcat (Rank 18)", {["I_Heli_light_03_unarmed_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Mohawk - Transport(Rank 20)", {["I_Heli_Transport_02_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Ghost Hawk (Rank 22)", {["B_Heli_Transport_01_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Armed Orca (Rank 24)", {["O_Heli_Light_02_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Armed Hellcat (Rank 26)", {["I_Heli_light_03_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Kajman (Rank 32)", {["O_Heli_Attack_02_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Blackfoot (Rank 34)", {["B_Heli_Attack_01_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy A10 - Jet (Rank 36)", {["B_Plane_CAS_01_F","bluair"] execVM "buyVehicle.sqf"}];
	trader_air_blu addAction ["Buy Yak - Jet (Rank 40)", {["O_Plane_CAS_02_F","bluair"] execVM "buyVehicle.sqf"}];
	
	trader_cars_blu addAction ["Buy Quadrocopter (control with UAV Terminal) (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["B_UAV_01_F", getMarkerPos "vspawn_blu", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	
	
	
	trader_weapons_red addAction ["Buy Katiba Carbine (Rank 1)", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_red addAction ["Buy Katiba (Rank 2)", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Mk20 (Rank 3)", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy TRG-21 (Rank 4)", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Vector (Rank 4)", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Scorpion (Rank 5)", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy MX (Rank 6)", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy MX GL (Rank 12)", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy MXM (Rank 7)", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy PDW 2000 (Rank 8)", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy MX SW (Rank 8)", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Mk200 (Rank 10)", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Mk18 ABR (Rank 16)", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Zafir (Rank 20)", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy M320 LRR (Rank 26)", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy GM6 Lynx(Rank 30)", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy ACP Pistol (Rank 5)", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Revolver (Rank 16)", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy NLAW Launcher (Rank 6)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Alamut Launcher (Rank 10)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_red addAction ["Buy Smoke Grenade (Rank 3)", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Red Smoke (Rank 8)", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Green Smoke (Rank 8)", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Blue Smoke (Rank 8)", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Purple Smoke (Rank 22)", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Backpack (for toolkit and rockets) (Rank 6)", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Parachute (Rank 1)", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Medikit (Rank 5)", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Toolkit (Rank 6)", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Binoculars (Rank 8)", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Rangefinder (Rank 18)", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy UAV Terminal (Rank 20)", {"O_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Green Flare GL (Rank 12)", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Red Flare GL (Rank 12)", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy White Smoke GL (Rank 12)", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Green Smoke GL (Rank 12)", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Red Smoke GL (Rank 12)", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Blue Chemlight (Rank 6)", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Green Chemlight (Rank 6)", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_red addAction ["Buy Red Chemlight (Rank 6)", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	
	trader_mags_red addAction ["Buy Magazine (Rank 1)", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy Tracer Magazine (Rank 8)", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy ACO optic (Rank 3)", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy HOLOSIGHT (Rank 5)", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy MRCO optic (Rank 8)", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy ARCO optic (Rank 12)", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy RCO optic (Rank 14)", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy SOS optic (Rank 16)", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy 9mm Supressor (Rank 18)", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy .45 Supressor (Rank 18)", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy 5.56 Supressor (Rank 18)", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy 6.5 Supressor (Rank 18)", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy 7.62 Supressor (Rank 18)", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy IR Laserpointer (turn on with L) (Rank 10)", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_red addAction ["Buy Flashlight (Rank 6)", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_red addAction ["Buy Ghillie Suit (Rank 18)", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Bandanna (Rank 6)", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Beret (Rank 10)", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Cap (Rank 12)", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Beanie (Rank 14)", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Booniehat Green (Rank 16)", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Booniehat Tan (Rank 16)", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Military Cap (Rank 18)", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_red addAction ["Buy Shemag (Rank 20)", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	
	
	
	trader_cars_red addAction ["Buy ATV (Rank 1)", {["B_Quadbike_01_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Hunter (Rank 5)", {["B_MRAP_01_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Ifrit (Rank 6)", {["O_MRAP_02_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Strider (Rank 7)", {["I_MRAP_03_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Armed Pickup (Rank 8)", {["B_G_Offroad_01_armed_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Zamak (Rank 8)", {["I_Truck_02_covered_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Hunter HMG (Rank 10)", {["B_MRAP_01_hmg_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Ifrit HMG(Rank 11)", {["O_MRAP_02_hmg_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Strider HMG (Rank 12)", {["I_MRAP_03_hmg_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Hunter GMG (Rank 14)", {["B_MRAP_01_gmg_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Ifrit GMG (Rank 15)", {["O_MRAP_02_gmg_F","red"] execVM "buyVehicle.sqf"}];
	trader_cars_red addAction ["Buy Strider GMG (Rank 16)", {["I_MRAP_03_gmg_F","red"] execVM "buyVehicle.sqf"}];
	
	trader_heavy_red addAction ["Buy Marid - light wheeled APC (Rank 18)", {["O_APC_Wheeled_02_rcws_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Panther - light APC (Rank 19)", {["B_APC_Tracked_01_rcws_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Marshall - wheeled APC (Rank 20)", {["B_APC_Wheeled_01_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Gorgon - wheeled APC (Rank 21)", {["I_APC_Wheeled_03_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Mora - APC (Rank 22)", {["I_APC_tracked_03_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Kamysh  - APC (Rank 24)", {["O_APC_Tracked_02_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Cheetah - AA (Rank 30)", {["B_APC_Tracked_01_AA_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Tigris - AA (Rank 32)", {["O_APC_Tracked_02_AA_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Slammer - MBT (Rank 28)", {["B_MBT_01_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Varsuk - MBT (Rank 32)", {["O_MBT_02_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Kuma - MBT (Rank 35)", {["I_MBT_03_cannon_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Little Bird (Rank 12)", {["B_Heli_Light_01_F","red"] execVM "buyVehicle.sqf"}];
	trader_heavy_red addAction ["Buy Armed Little Bird (Rank 20)", {["B_Heli_Light_01_armed_F","red"] execVM "buyVehicle.sqf"}];
	
	trader_air_red addAction ["Buy Orca (Rank 16)", {["O_Heli_Light_02_unarmed_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Hellcat (Rank 18)", {["I_Heli_light_03_unarmed_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Mohawk - Transport(Rank 20)", {["I_Heli_Transport_02_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Ghost Hawk (Rank 22)", {["B_Heli_Transport_01_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Armed Orca (Rank 24)", {["O_Heli_Light_02_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Armed Hellcat (Rank 26)", {["I_Heli_light_03_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Kajman (Rank 32)", {["O_Heli_Attack_02_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Blackfoot (Rank 34)", {["B_Heli_Attack_01_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy A10 - Jet (Rank 36)", {["B_Plane_CAS_01_F","redair"] execVM "buyVehicle.sqf"}];
	trader_air_red addAction ["Buy Yak - Jet (Rank 40)", {["O_Plane_CAS_02_F","redair"] execVM "buyVehicle.sqf"}];
	
	
	
	trader_cars_red addAction ["Buy Quadrocopter (control with UAV Terminal) (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["O_UAV_01_F", getMarkerPos "vspawn_red", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	
	
	
	trader_weapons_ind addAction ["Buy Katiba Carbine (Rank 1)", {"arifle_Katiba_C_F" execVM "buyWeapon.sqf"}]; 
	trader_weapons_ind addAction ["Buy Katiba (Rank 2)", {"arifle_Katiba_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Mk20 (Rank 3)", {"arifle_Mk20_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy TRG-21 (Rank 4)", {"arifle_TRG21_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Vector (Rank 4)", {"SMG_01_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Scorpion (Rank 5)", {"SMG_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy MX (Rank 6)", {"arifle_MX_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy MX GL (Rank 12)", {"arifle_MX_GL_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy MXM (Rank 7)", {"arifle_MXM_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy PDW 2000 (Rank 8)", {"hgun_PDW2000_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy MX SW (Rank 8)", {"arifle_MX_SW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Mk200 (Rank 10)", {"LMG_Mk200_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Mk18 ABR (Rank 16)", {"srifle_EBR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Zafir (Rank 20)", {"LMG_Zafir_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy M320 LRR (Rank 26)", {"srifle_LRR_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy GM6 Lynx(Rank 30)", {"srifle_GM6_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy ACP Pistol (Rank 5)", {"hgun_ACPC2_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Revolver (Rank 16)", {"hgun_Pistol_heavy_02_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy NLAW Launcher (Rank 6)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Alamut Launcher (Rank 10)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
	trader_items_ind addAction ["Buy Smoke Grenade (Rank 3)", {"SmokeShell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Red Smoke (Rank 8)", {"SmokeShellRed" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Green Smoke (Rank 8)", {"SmokeShellGreen" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Blue Smoke (Rank 8)", {"SmokeShellBlue" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Purple Smoke (Rank 22)", {"SmokeShellPurple" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Backpack (for toolkit and rockets) (Rank 6)", {"B_AssaultPack_blk" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Parachute (Rank 1)", {"B_Parachute" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Medikit (Rank 5)", {"FirstAidKit" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Toolkit (Rank 6)", {"ToolKit" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Binoculars (Rank 8)", {"Binocular" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Rangefinder (Rank 18)", {"Rangefinder" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy UAV Terminal (Rank 20)", {"I_UavTerminal" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Green Flare GL (Rank 12)", {"UGL_FlareGreen_F" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Red Flare GL (Rank 12)", {"UGL_FlareRed_F" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy White Smoke GL (Rank 12)", {"1Rnd_Smoke_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Green Smoke GL (Rank 12)", {"1Rnd_SmokeGreen_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Red Smoke GL (Rank 12)", {"1Rnd_SmokeRed_Grenade_shell" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Blue Chemlight (Rank 6)", {"Chemlight_blue" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Green Chemlight (Rank 6)", {"Chemlight_green" execVM "buyWeapon.sqf"}];
	trader_items_ind addAction ["Buy Red Chemlight (Rank 6)", {"Chemlight_red" execVM "buyWeapon.sqf"}];
	
	trader_mags_ind addAction ["Buy Magazine (Rank 1)", {"mag" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy Tracer Magazine (Rank 8)", {"magtr" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy ACO optic (Rank 3)", {"optic_Aco" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy HOLOSIGHT (Rank 5)", {"optic_Holosight" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy MRCO optic (Rank 8)", {"optic_MRCO" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy ARCO optic (Rank 12)", {"optic_Arco" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy RCO optic (Rank 14)", {"optic_Hamr" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy SOS optic (Rank 16)", {"optic_SOS" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy 9mm Supressor (Rank 18)", {"muzzle_snds_L" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy .45 Supressor (Rank 18)", {"muzzle_snds_acp" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy 5.56 Supressor (Rank 18)", {"muzzle_snds_M" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy 6.5 Supressor (Rank 18)", {"muzzle_snds_H" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy 7.62 Supressor (Rank 18)", {"muzzle_snds_B" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy IR Laserpointer (turn on with L) (Rank 10)", {"acc_pointer_IR" execVM "buyWeapon.sqf"}];
	trader_mags_ind addAction ["Buy Flashlight (Rank 6)", {"acc_flashlight" execVM "buyWeapon.sqf"}];
	
	trader_clothes_ind addAction ["Buy Ghillie Suit (Rank 18)", {"U_O_GhillieSuit" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Bandanna (Rank 6)", {"H_Bandanna_camo" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Beret (Rank 10)", {"H_Beret_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Cap (Rank 12)", {"H_Cap_tan_specops_US" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Beanie (Rank 14)", {"H_Watchcap_blk" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Booniehat Green (Rank 16)", {"H_Booniehat_indp" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Booniehat Tan (Rank 16)", {"H_Booniehat_tan" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Military Cap (Rank 18)", {"H_MilCap_oucamo" execVM "buyWeapon.sqf"}];
	trader_clothes_ind addAction ["Buy Shemag (Rank 20)", {"H_Shemag_khk" execVM "buyWeapon.sqf"}];
	
	
	
	
	trader_cars_ind addAction ["Buy ATV (Rank 1)", {["B_Quadbike_01_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Hunter (Rank 5)", {["B_MRAP_01_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Ifrit (Rank 6)", {["O_MRAP_02_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Strider (Rank 7)", {["I_MRAP_03_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Armed Pickup (Rank 8)", {["B_G_Offroad_01_armed_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Zamak (Rank 8)", {["I_Truck_02_covered_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Hunter HMG (Rank 10)", {["B_MRAP_01_hmg_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Ifrit HMG(Rank 11)", {["O_MRAP_02_hmg_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Strider HMG (Rank 12)", {["I_MRAP_03_hmg_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Hunter GMG (Rank 14)", {["B_MRAP_01_gmg_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Ifrit GMG (Rank 15)", {["O_MRAP_02_gmg_F","ind"] execVM "buyVehicle.sqf"}];
	trader_cars_ind addAction ["Buy Strider GMG (Rank 16)", {["I_MRAP_03_gmg_F","ind"] execVM "buyVehicle.sqf"}];
	
	trader_heavy_ind addAction ["Buy Marid - light wheeled APC (Rank 18)", {["O_APC_Wheeled_02_rcws_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Panther - light APC (Rank 19)", {["B_APC_Tracked_01_rcws_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Marshall - wheeled APC (Rank 20)", {["B_APC_Wheeled_01_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Gorgon - wheeled APC (Rank 21)", {["I_APC_Wheeled_03_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Mora - APC (Rank 22)", {["I_APC_tracked_03_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Kamysh  - APC (Rank 24)", {["O_APC_Tracked_02_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Cheetah - AA (Rank 30)", {["B_APC_Tracked_01_AA_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Tigris - AA (Rank 32)", {["O_APC_Tracked_02_AA_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Slammer - MBT (Rank 28)", {["B_MBT_01_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Varsuk - MBT (Rank 32)", {["O_MBT_02_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Kuma - MBT (Rank 35)", {["I_MBT_03_cannon_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Little Bird (Rank 12)", {["B_Heli_Light_01_F","ind"] execVM "buyVehicle.sqf"}];
	trader_heavy_ind addAction ["Buy Armed Little Bird (Rank 20)", {["B_Heli_Light_01_armed_F","ind"] execVM "buyVehicle.sqf"}];
	
	trader_air_ind addAction ["Buy Orca (Rank 16)", {["O_Heli_Light_02_unarmed_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Hellcat (Rank 18)", {["I_Heli_light_03_unarmed_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Mohawk - Transport(Rank 20)", {["I_Heli_Transport_02_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Ghost Hawk (Rank 22)", {["B_Heli_Transport_01_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Armed Orca (Rank 24)", {["O_Heli_Light_02_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Armed Hellcat (Rank 26)", {["I_Heli_light_03_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Kajman (Rank 32)", {["O_Heli_Attack_02_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Blackfoot (Rank 34)", {["B_Heli_Attack_01_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy A10 - Jet (Rank 36)", {["B_Plane_CAS_01_F","indair"] execVM "buyVehicle.sqf"}];
	trader_air_ind addAction ["Buy Yak - Jet (Rank 40)", {["O_Plane_CAS_02_F","indair"] execVM "buyVehicle.sqf"}];
	
	
	trader_cars_ind addAction ["Buy Quadrocopter (control with UAV Terminal) (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = createVehicle ["I_UAV_01_F", getMarkerPos "vspawn_ind", [], 0,""];  
			createVehicleCrew _veh;  
			_veh disableTIEquipment true;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];