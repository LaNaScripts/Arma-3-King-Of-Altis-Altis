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