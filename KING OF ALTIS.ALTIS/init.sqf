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