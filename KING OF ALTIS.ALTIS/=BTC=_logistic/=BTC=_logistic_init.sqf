/*
Created by =BTC= Giallustio
Version: 0.13
Date: 20/03/2013
Visit us at: http://www.blacktemplars.altervista.org/
*/
if (isServer) then 
{
	BTC_id_repo = 10;publicVariable "BTC_id_repo";
	BTC_cargo_repo = "Land_HBarrierBig_F" createVehicle [- 5000,- 5000,0];publicVariable "BTC_cargo_repo";
};
if (isDedicated) exitwith {};
BTC_active_lift      = 1;
BTC_active_fast_rope = 1;
BTC_active_cargo     = 0;
//Common
BTC_dir_action = "=BTC=_logistic\=BTC=_addAction.sqf";
BTC_l_placement_area = 20;
if (BTC_active_lift == 1) then
{
	//Lift
	BTC_lift_pilot    = [];
	BTC_lift          = 1;
	BTC_lifted        = 0;
	BTC_lift_min_h    = 5;
	BTC_lift_max_h    = 15;
	BTC_lift_radius   = 4;
	BTC_def_hud       = 0;
	BTC_def_pip       = 0;
	BTC_l_def_veh_pip = [];
	BTC_l_pip_cond    = false;
	BTC_cargo_lifted  = objNull;
	BTC_Hud_Cond      = false;
	BTC_HUD_x         = (SafeZoneW+2*SafeZoneX) - 0.155;//+ 0.045;
	BTC_HUD_y         = (SafeZoneH+2*SafeZoneY) + 0.045;
	_lift = [] execVM "=BTC=_logistic\=BTC=_lift\=BTC=_lift_init.sqf";
	BTC_get_liftable_array =
	{
		_chopper = _this select 0;
		_array   = [];
		switch (typeOf _chopper) do
		{
			//orca
			case "O_Heli_Light_02_unarmed_F"     : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F"];};
			case "O_Heli_Light_02_F"             : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F"];};
			//hellcat
			case "I_Heli_light_03_unarmed_F"     : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F"];};
			case "I_Heli_light_03_F"             : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F"];};
			//blackhawk
			case "B_Heli_Transport_01_F"         : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F"];};
			
			//mohawk
			case "I_Heli_Transport_02_F"         : {_array = ["B_Quadbike_01_F","B_MRAP_01_F","B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","O_MRAP_02_F","O_MRAP_02_hmg_F","I_MRAP_03_F","I_MRAP_03_hmg_F","B_MRAP_01_gmg_F","O_MRAP_02_gmg_F","I_MRAP_03_gmg_F",
															  "B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","O_APC_Wheeled_02_rcws_F","O_APC_Tracked_02_cannon_F","O_APC_Tracked_02_AA_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F"];};

		};
		_array
	};
};
if (BTC_active_fast_rope == 1) then
{
	//Fast roping
	BTC_fast_rope_h = 35;
	BTC_fast_rope_h_min = 5;
	BTC_roping_chopper = ["O_Heli_Light_02_unarmed_F","O_Heli_Light_02_F","I_Heli_light_03_unarmed_F","I_Heli_light_03_F","B_Heli_Transport_01_F","I_Heli_Transport_02_F"];
	_rope = [] execVM "=BTC=_logistic\=BTC=_fast_roping\=BTC=_fast_roping_init.sqf";
};
//Functions
BTC_l_paradrop =
{
	_veh          = _this select 0;
	_dropped      = _this select 1;
	_chute_type   = _this select 2;
	private ["_chute"];
	_dropped_type = typeOf _dropped;
	if (typeOf _veh == "B_Heli_Light_01_F") then {_chute = createVehicle [_chute_type, [((position _veh) select 0) - 5,((position _veh) select 1) - 10,((position _veh) select 2)- 4], [], 0, "FLY"];} else {_chute = createVehicle [_chute_type, [((position _veh) select 0) - 5,((position _veh) select 1) - 3,((position _veh) select 2)- 4], [], 0, "FLY"];};
	_smoke        = "SmokeshellGreen" createVehicle position _veh;
	_chem         = "Chemlight_green" createVehicle position _veh;
    _smoke attachto [_dropped,[0,0,0]];
	_chem attachto [_dropped,[0,0,0]]; 
	_dropped attachTo [_chute,[0,0,0]];
	_heigh = 0;
	while {((getPos _chute) select 2) > 0.3} do {sleep 1;_heigh = (getPos _chute) select 2;};
	detach _dropped;
	//if (_dropped_type isKindOf "ReammoBox") then {_dropped setPos [getpos _dropped select 0, getpos _dropped select 1, _heigh];};
};
BTC_l_obj_fall =
{
	_obj    = _this select 0;
	_height = (getPos _obj) select 2;
	_fall   = 0.09;
	while {((getPos _obj) select 2) > 0.1} do 
	{

		_fall = (_fall * 1.1);
		_obj setPos [getPos _obj select 0, getPos _obj select 1, _height];
		_height = _height - _fall;
		//hint format ["%1 - %2", (getPos _obj) select 2,_height];
		sleep 0.01;
	};
	//if (((getPos _obj) select 2) < 0.3) then {_obj setPos [getPos _obj select 0, getPos _obj select 1, 0.2];};
};