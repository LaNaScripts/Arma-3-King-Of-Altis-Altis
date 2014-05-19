cargobox_blu addAction ["Save Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 1, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_blu addAction ["Equip saved Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];  
cargobox_red addAction ["Save Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 1, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_red addAction ["Equip saved Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];
cargobox_ind addAction ["Save Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 1, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_ind addAction ["Equip saved Loadout ONE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 1],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];


cargobox_blu addAction ["Save Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 2, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_blu addAction ["Equip saved Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 2],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];  
cargobox_red addAction ["Save Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 2, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_red addAction ["Equip saved Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 2],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];
cargobox_ind addAction ["Save Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 2, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_ind addAction ["Equip saved Loadout TWO", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 2],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];


cargobox_blu addAction ["Save Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 3, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_blu addAction ["Equip saved Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 3],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];  
cargobox_red addAction ["Save Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 3, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_red addAction ["Equip saved Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 3],"equipLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];
cargobox_ind addAction ["Save Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_gear = [player] call getAllWeapons;
		sleep 2;
		[[_gear, 3, _this select 1],"saveLoadout",false,false] spawn BIS_fnc_MP;
		sleep 30;
		player_loadoutcooldown = false;
	};
}];                
cargobox_ind addAction ["Equip saved Loadout THREE", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[[_this select 1, 3],"equipLoadout",false,false] spawn BIS_fnc_MP;
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
	trader_weapons_blu addAction ["Buy NLAW Launcher (Rank 18)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_blu addAction ["Buy Alamut Launcher (Rank 22)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
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
	
	
	trader_cars_blu addAction ["Buy ATV (Rank 1)", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_blu");
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Hunter (Rank 12)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Little Bird (Rank 14)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Armed Pickup (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Ghost Hawk (Rank 22)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh setVehicleAmmo 0;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Hunter HMG (Rank 24)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Zamak (Rank 26)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Ifrit (Rank 28)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Strider (Rank 30)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Strider HMG (Rank 32)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_blu");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_blu addAction ["Buy Armed Ghost Hawk (Rank 34)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh setVehicleAmmo 0.4;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
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
	trader_weapons_red addAction ["Buy NLAW Launcher (Rank 18)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_red addAction ["Buy Alamut Launcher (Rank 22)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
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
	
	
	trader_cars_red addAction ["Buy ATV (Rank 1)", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_red");
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Hunter (Rank 12)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Little Bird (Rank 14)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawn_red");
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Armed Pickup (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Ghost Hawk (Rank 22)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_red");
			_veh setVehicleAmmo 0;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Hunter HMG (Rank 24)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Zamak (Rank 26)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Ifrit (Rank 28)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Strider (Rank 30)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Strider HMG (Rank 32)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_red");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_red addAction ["Buy Armed Ghost Hawk (Rank 34)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_red");
			_veh setVehicleAmmo 0.4;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
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
	trader_weapons_ind addAction ["Buy NLAW Launcher (Rank 18)", {"launch_NLAW_F" execVM "buyWeapon.sqf"}];
	trader_weapons_ind addAction ["Buy Alamut Launcher (Rank 22)", {"launch_RPG32_F" execVM "buyWeapon.sqf"}];
	
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
	
	
	trader_cars_ind addAction ["Buy ATV (Rank 1)", {
	if (!player_vcooldown) then
	{
		player_vcooldown = true;
		_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_ind");
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		sleep 360;
		player_vcooldown = false;
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Hunter (Rank 12)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Little Bird (Rank 14)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Armed Pickup (Rank 20)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			player_vcooldown = true;
			_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.75;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Ghost Hawk (Rank 22)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh setVehicleAmmo 0;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Hunter HMG (Rank 24)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			player_vcooldown = true;
			_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Zamak (Rank 26)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			player_vcooldown = true;
			_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Ifrit (Rank 28)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			player_vcooldown = true;
			_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Strider (Rank 30)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Strider HMG (Rank 32)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			player_vcooldown = true;
			_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_ind");
			sleep 0.5;
			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			_veh setVehicleAmmo 0.5;
			_veh disableTIEquipment true;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
	trader_cars_ind addAction ["Buy Armed Ghost Hawk (Rank 34)", {
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			player_vcooldown = true;
			_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh setVehicleAmmo 0.4;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			sleep 360;
			player_vcooldown = false;
		};
	} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};
	}];
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