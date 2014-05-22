_item = _this select 0;
_spawnpoint = _this select 1;
	
if (!player_vcooldown) then
{
	_iteminfo = _item call getVehicleInfo;
	_neededrank = _iteminfo select 0;

	_xp = player_stats select 0;
	_rankinfo = _xp call getRankInfo;
	_playerrank = _rankinfo select 0;

	if (_playerrank >= _neededrank) then
	{
		player_vcooldown = true;
		_veh = 0;
		
		hint "Your vehicle will spawn in a few seconds!";
		sleep 10;
		
		if (_spawnpoint == "blu") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_blu");
		};
		if (_spawnpoint == "bluair") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_blu_air");
		};
		if (_spawnpoint == "red") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_red");
		};
		if (_spawnpoint == "redair") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_red_air");
		};
		if (_spawnpoint == "ind") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_ind");
		};
		if (_spawnpoint == "indair") then
		{
			_veh = _item createVehicle (getMarkerPos "vspawn_ind_air");
		};
		
		sleep 0.5;
		clearMagazineCargoGlobal _veh;
		clearWeaponCargoGlobal _veh;
		_veh disableTIEquipment true;
		
		_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
		[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
		
		sleep 180;
		player_vcooldown = false;
	};
} else {hint "Your vehicle cooldown is active. Please wait a few minutes!";};