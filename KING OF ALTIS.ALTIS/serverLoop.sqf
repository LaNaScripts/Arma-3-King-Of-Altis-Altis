while {true} do
{
	sleep 10;
	_allPlayers = playableUnits;

	_bluCountA = 0;
	_redCountA = 0;
	_indCountA = 0;
	
	_bluCountB = 0;
	_redCountB = 0;
	_indCountB = 0;
	
	_bluCountC = 0;
	_redCountC = 0;
	_indCountC = 0;
	
	_bluCountD = 0;
	_redCountD = 0;
	_indCountD = 0;
	
	_bluCountE = 0;
	_redCountE = 0;
	_indCountE = 0;
	
	_count = (count _allPlayers) -1;
	
	for "_i" from 0 to _count do 
	{
		_unit = _allPlayers select _i;
		if(isPlayer _unit) then
		{
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
			
			_distance = _unit distance (getMarkerPos "objective_delta");
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				owner _unit publicVariableClient "player_stats_add";
				
				if(side _unit == west) then {
					_bluCountD = _bluCountD + 1;
					TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
					_redCountD = _redCountD + 1;

					TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
					_indCountD = _indCountD + 1;
					TICKETS_IND = TICKETS_IND + 0.1;
				};
			};
			
			_distance = _unit distance (getMarkerPos "objective_echo");
		
			if (_distance < 300) then
			{
				player_stats_add = [2,0,0];
				owner _unit publicVariableClient "player_stats_add";
				
				if(side _unit == west) then {
					_bluCountE = _bluCountE + 1;
					TICKETS_BLU = TICKETS_BLU + 0.1;
				};
				if(side _unit == east) then {
					_redCountE = _redCountE + 1;

					TICKETS_RED = TICKETS_RED + 0.1;
				};
				if(side _unit == resistance) then {
					_indCountE = _indCountE + 1;
					TICKETS_IND = TICKETS_IND + 0.1;
				};
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
	
	if (_bluCountD > _redCountD && _bluCountD > _indCountD) then {

		TICKETS_BLU = TICKETS_BLU + 1;
		"objective_delta_marker" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCountD > _bluCountD && _redCountD > _indCountD) then {
			TICKETS_RED = TICKETS_RED + 1;
			"objective_delta_marker" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCountD > _bluCountD && _indCountD > _redCountD) then {
				TICKETS_IND = TICKETS_IND + 1;
				"objective_delta_marker" setMarkerColor "ColorGreen";
			}
			else
			{
				"objective_delta_marker" setMarkerColor "ColorBlack";
			};
		};
	};
	
	if (_bluCountE > _redCountE && _bluCountE > _indCountE) then {

		TICKETS_BLU = TICKETS_BLU + 1;
		"objective_echo_marker" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCountE > _bluCountE && _redCountE > _indCountE) then {
			TICKETS_RED = TICKETS_RED + 1;
			"objective_echo_marker" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCountE > _bluCountE && _indCountE > _redCountE) then {
				TICKETS_IND = TICKETS_IND + 1;
				"objective_echo_marker" setMarkerColor "ColorGreen";
			}
			else
			{
				"objective_echo_marker" setMarkerColor "ColorBlack";
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