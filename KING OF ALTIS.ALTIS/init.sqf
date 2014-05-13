enableSaving [false, false];

//global vars
player_stats_add = [0,0,0];
player_stats_got = 0;
player_stats = [0,0,0];
player_equip = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]];
player_vcooldown = false;
player_savecooldown = false;
player_loadoutcooldown = false;
if(isNil "spawntruck_blu") then
{	
	spawntruck_blu = 0;
};
if(isNil "spawntruck_red") then
{
	spawntruck_red = 0;
};
if(isNil "spawntruck_ind") then
{
	spawntruck_ind = 0;
};

//compile functions
getAllWeapons = compile preprocessFileLineNumbers "other_functions\getAllWeapons.sqf";

formatArray = compile preprocessFileLineNumbers "other_functions\formatArray.sqf";

displayMessage = compile preprocessFileLineNumbers "other_functions\displayMessage.sqf";

getRankInfo = compile preprocessFileLineNumbers "other_functions\getRankInfo.sqf";

getWeaponInfo = compile preprocessFileLineNumbers "other_functions\getWeaponInfo.sqf";

getVehicleInfo = compile preprocessFileLineNumbers "other_functions\getVehicleInfo.sqf";

filterItem = compile preprocessFileLineNumbers "other_functions\filterItem.sqf";


equipLoadout = compile preprocessFileLineNumbers "db_functions\equipLoadout.sqf";

saveLoadout = compile preprocessFileLineNumbers "db_functions\saveLoadout.sqf";

getPlayerStats = compile preprocessFileLineNumbers "db_functions\getPlayerStats.sqf";

updatePlayerStats = compile preprocessFileLineNumbers "db_functions\updatePlayerStats.sqf";


CBA_fnc_defaultParam = compile preprocessFileLineNumbers "cba_functions\fnc_defaultParam.sqf";

CBA_fnc_find = compile preprocessFileLineNumbers "cba_functions\fnc_find.sqf";

CBA_fnc_split = compile preprocessFileLineNumbers "cba_functions\fnc_split.sqf";


respawnTruck = compile preprocessFileLineNumbers "other_functions\respawnTruck.sqf";

deleteWreck = compile preprocessFileLineNumbers "other_functions\deleteWreck.sqf";

despawnVehicle = compile preprocessFileLineNumbers "other_functions\despawnVehicle.sqf";

call compile preprocessFile "=BTC=_TK_punishment\=BTC=_tk_init.sqf";
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";

//map player markers
onEachFrame
{
    private["_pos"];
    {
        if(player distance _x < 2000 && side _x == side player && alive _x && _x != player) then
        {
                _pos = visiblePosition _x;
                _pos set[2,(getPosATL _x select 2) + 2.2];
				
				_color = [0,0,0,0];
				if(side player == west) then
				{
					_color = [0,0,1,0.8];
				};
				if(side player == east) then
				{
					_color = [1,0,0,0.8];
				};
				if(side player == resistance) then
				{
					_color = [0,1,0,0.8];
				};
				
				if(player distance _x < 40) then
				{
					drawIcon3D ["\a3\ui_f\data\map\Markers\Military\box_ca.paa",_color,_pos,1,1,0,name _x,0,0.04];
				} else
				{
					drawIcon3D ["\a3\ui_f\data\map\Markers\Military\box_ca.paa",_color,_pos,1,1,0,"",0,0];
				};
        };
    } forEach allUnits;
};

if(isServer) then
{
	"bluf" spawn respawnTruck;
	"redf" spawn respawnTruck;
	"indf" spawn respawnTruck;
};

if(!isServer) then
{
	waitUntil {!isNull player};
	
	"player_stats_add" addPublicVariableEventHandler 
	{
		_xp = player_stats select 0;
		_kills = player_stats select 1;
		_deaths = player_stats select 2;
	
		_stats = _this select 1;
	
		_addxp = _stats select 0;
		_addkills = _stats select 1;
		_adddeaths = _stats select 2;

		_newxp = _xp + _addxp;
		_newkills = _kills + _addkills;
		_newdeaths	= _deaths + _adddeaths;
		
		player_stats = [_newxp, _newkills, _newdeaths];
	};
	
	"player_equip" addPublicVariableEventHandler 
	{
		_gear = _this select 1;
		_ammo = _gear select 0;
		_weapons = _gear select 1;
		_items = _gear select 2;
		_assignitems = _gear select 3;
		_headgear = _gear select 4;
		_goggles = _gear select 5;
		_vest = _gear select 6;
		_vestitems = _gear select 7;
		_uniform = _gear select 8;
		_uniformitems = _gear select 9;
		_backpack = _gear select 10;
		_packitems = _gear select 11;
		_handgunitems = _gear select 12;
		_primarywep = _gear select 13;
		_secondarywep = _gear select 14;
		
		_illegal = 0;
		_ret = false;
		
		removeAllWeapons player;
		removeAllAssignedItems player;
		removeAllItems player;
		removebackpack player;

		if (!((_uniform select 0) == "")) then 
		{
			if ((_uniform select 0) == "U_O_GhillieSuit") then
			{
				_ret = (_uniform select 0) call filterItem;
				if (!(_ret select 0)) then
				{
					removeUniform player;
					player addUniform (_uniform select 0);
				} else
				{
					_illegal = 1;
				};
			};
		};
		
		/*if (!((_vest select 0) == "")) then {
			removeVest player;
			player AddVest (_vest select 0);
		};*/
		
		if (!((_backpack select 0) == "")) then {
			_ret = (_backpack select 0) call filterItem;
			if (!(_ret select 0)) then
			{
				player addbackpack (_backpack select 0);
			} else
			{
				_illegal = 1;
			};
		};
		
		if (!((_headgear select 0) == "")) then 
		{
			if (!((_headgear select 0) == "H_HelmetO_ocamo" || (_headgear select 0) == "H_HelmetB_desert" || (_headgear select 0) == "H_HelmetIA")) then
			{
				_ret = (_headgear select 0) call filterItem;
				if (!(_ret select 0)) then
				{
					removeheadgear player;
					player addheadgear (_headgear select 0);
					player assignItem (_headgear select 0);
				} else
				{
					_illegal = 1;
				};
			};
		};
		
		if (!((_goggles select 0) == "")) then {
			removeGoggles player;
			player addGoggles (_goggles select 0);
			player assignItem (_goggles select 0);
		};

		{player addmagazine _x} forEach _ammo;
		
		{
		_ret = _x call filterItem;
			if (!(_ret select 0)) then
			{
				player additem _x;
			} else
			{
				_illegal = 1;
			};
		} forEach _items;
		
		{
		if(_x != "Binocular" && _x != "Rangefinder") then 
		{
			_ret = _x call filterItem;
			if (!(_ret select 0)) then
			{
				player additem _x; player assignItem _x;
			} else
			{
				_illegal = 1;
			};
		};
		} forEach _assignitems;
		
		{
		_ret = _x call filterItem;
			if (!(_ret select 0)) then
			{
				player addWeapon _x;
			} else
			{
				_illegal = 1;
			};
		} forEach _weapons;

		
		//{if(_x != "") then {player addSecondaryWeaponItem _x};} forEach _secondarywep;
		
		{
		if(_x != "") then 
		{
			_ret = _x call filterItem;
			if (!(_ret select 0)) then
			{
				player addHandgunItem _x;
			} else
			{
				_illegal = 1;
			};
		};
		} forEach _handgunitems;

		{
		if(_x != "") then 
		{
			_ret = _x call filterItem;
			if (!(_ret select 0)) then
			{
				player addPrimaryWeaponItem _x;
			} else
			{
				_illegal = 1;
			};
		};
		} forEach _primarywep;
		
		if (_illegal == 1) then
		{
			hint "Your rank is not high enough for some of the items you saved!";
		};
		
		// Muzzle Fix
		firstmuz = {
		   private "_ma";
		   _ma = getArray (configFile >> "CfgWeapons" >> _this >> "muzzles");
		   if (_ma select 0 != "this") exitWith {_ma select 0};
		   _this
		};

		_primary = primaryWeapon player;
		if (_primary != "") then {
			player selectWeapon (_primary call firstmuz);
		};
	};

	player addEventHandler ["respawn", {_this execVM "playerSpawned.sqf"}];
	player addMPEventHandler ["mpkilled", {_this execVM "playerKilledServer.sqf"}];
	
	_nil = execVM "initActions.sqf";
	
	_nil = [] execVM "player_markers.sqf";
 
	_nil = execVM "playerLoop.sqf";
	
	_nil = execVM "playerSaveLoop.sqf";
	
	_nil = execVM "safezone.sqf";
	
	waitUntil {alive player};
	
	player addRating 99999999;
	
	_nil = [] execVM "playerSpawned.sqf";
	
	player_stats_got = 0;
	[[player], "getPlayerStats", false, false] spawn BIS_fnc_MP;
};