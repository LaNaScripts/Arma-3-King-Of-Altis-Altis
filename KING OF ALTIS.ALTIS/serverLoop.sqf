while {true} do
{
	sleep 10;
	_allPlayers = playableUnits;

	_bluCount = 0;
	_redCount = 0;
	_indCount = 0;

	_bluCountA = 0;
	_redCountA = 0;
	_indCountA = 0;
	
	_bluCountB = 0;
	_redCountB = 0;
	_indCountB = 0;
	
	_bluCountC = 0;
	_redCountC = 0;
	_indCountC = 0;
	
	_count = (count _allPlayers) -1;
	
	for "_i" from 0 to _count do 
	{
		_unit = _allPlayers select _i;
		if(isPlayer _unit) then
		{
		
			_distance = _unit distance (getMarkerPos "objective_main");
	
			if (_distance < 13000 && _distance > 300) then
			{
				player_stats_add = [1,0,0];
				_unit = _unit;
				owner _unit publicVariableClient "player_stats_add";
			
				if(side _unit == west) then {
				_bluCount = _bluCount + 1;
				TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
				_redCount = _redCount + 1;
				TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
				_indCount = _indCount + 1;
				TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				_unit = _unit;
				owner _unit publicVariableClient "player_stats_add";
			
				if(side _unit == west) then {
				_bluCount = _bluCount + 2;
				TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
				_redCount = _redCount + 2;
				TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
				_indCount = _indCount + 2;
				TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
			
			_distance = _unit distance (getMarkerPos "objective_alpha");
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				owner _unit publicVariableClient "player_stats_add";
				
				if(side _unit == west) then {
					_bluCountA = _bluCountA + 1;
					TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
					_redCountA = _redCountA + 1;
					TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
					_indCountA = _indCountA + 1;
					TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
			
			_distance = _unit distance (getMarkerPos "objective_bravo");
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				owner _unit publicVariableClient "player_stats_add";
				
				if(side _unit == west) then {
					_bluCountB = _bluCountB + 1;
					TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
					_redCountB = _redCountB + 1;
					TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
					_indCountB = _indCountB + 1;
					TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
			
			_distance = _unit distance (getMarkerPos "objective_charlie");
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				owner _unit publicVariableClient "player_stats_add";
				
				if(side _unit == west) then {
					_bluCountC = _bluCountC + 1;
					TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
					_redCountC = _redCountC + 1;
					TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
					_indCountC = _indCountC + 1;
					TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
		};
	};
	
	if (_bluCount > _redCount && _bluCount > _indCount) then {
		TICKETS_BLU = TICKETS_BLU + 1;
		"OBJECTIVE" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCount > _bluCount && _redCount > _indCount) then {
			TICKETS_RED = TICKETS_RED + 1;
			"OBJECTIVE" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCount > _bluCount && _indCount > _redCount) then {
				TICKETS_IND = TICKETS_IND + 1;
				"OBJECTIVE" setMarkerColor "ColorGreen";
			}
			else
			{
				"OBJECTIVE" setMarkerColor "ColorBlack";
			};
		};
	};
	
	if (_bluCountA > _redCountA && _bluCountA > _indCountA) then {
		TICKETS_BLU = TICKETS_BLU + 1;
		"objective_alpha_marker" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCountA > _bluCountA && _redCountA > _indCountA) then {
			TICKETS_RED = TICKETS_RED + 1;
			"objective_alpha_marker" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCountA > _bluCountA && _indCountA > _redCountA) then {
				TICKETS_IND = TICKETS_IND + 1;
				"objective_alpha_marker" setMarkerColor "ColorGreen";
			}
			else
			{
				"objective_alpha_marker" setMarkerColor "ColorBlack";
			};
		};
	};
	
	
	if (_bluCountB > _redCountB && _bluCountB > _indCountB) then {
		TICKETS_BLU = TICKETS_BLU + 1;
		"objective_bravo_marker" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCountB > _bluCountB && _redCountB > _indCountB) then {
			TICKETS_RED = TICKETS_RED + 1;
			"objective_bravo_marker" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCountB > _bluCountB && _indCountB > _redCountB) then {
				TICKETS_IND = TICKETS_IND + 1;
				"objective_bravo_marker" setMarkerColor "ColorGreen";
			}
			else
			{
				"objective_bravo_marker" setMarkerColor "ColorBlack";
			};
		};
	};
	
	
	if (_bluCountC > _redCountC && _bluCountC > _indCountC) then {
		TICKETS_BLU = TICKETS_BLU + 1;
		"objective_charlie_marker" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCountC > _bluCountC && _redCountC > _indCountC) then {
			TICKETS_RED = TICKETS_RED + 1;
			"objective_charlie_marker" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCountC > _bluCountC && _indCountC > _redCountC) then {
				TICKETS_IND = TICKETS_IND + 1;
				"objective_charlie_marker" setMarkerColor "ColorGreen";
			}
			else
			{
				"objective_charlie_marker" setMarkerColor "ColorBlack";
			};
		};
	};

	publicVariable "TICKETS_BLU";
	publicVariable "TICKETS_RED";
	publicVariable "TICKETS_IND";
	
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "BLUFOR_BASE",["WeaponHolder","GroundWeaponHolder"],100];
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "OPFOR_BASE",["WeaponHolder","GroundWeaponHolder"],100];
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "INDEPENDENT_BASE",["WeaponHolder","GroundWeaponHolder"],100];
	
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "BLUFOR_BASE_AIR",["WeaponHolder","GroundWeaponHolder"],100];
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "OPFOR_BASE_AIR",["WeaponHolder","GroundWeaponHolder"],100];
	{ deleteVehicle _x; } forEach nearestObjects [getMarkerPos "INDEPENDENT_BASE_AIR",["WeaponHolder","GroundWeaponHolder"],100];
};