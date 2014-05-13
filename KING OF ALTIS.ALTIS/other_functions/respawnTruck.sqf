if(isServer) then
{
_side = _this;

if(_side == "bluf") then
{
	spawntruck_blu = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_west");
	spawntruck_blu addMPEventHandler ["mpkilled",{"blu" spawn respawnTruck}];
	spawntruck_blu addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != west) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	
	publicVariable "spawntruck_blu";
};
if(_side == "blu") then
{
	_del = spawntruck_blu;
	spawntruck_blu = 0;
	publicVariable "spawntruck_blu";
	
	sleep 60;
	deleteVehicle _del;
	
	sleep 300;
	spawntruck_blu = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_west");
	spawntruck_blu addMPEventHandler ["mpkilled",{"blu" spawn respawnTruck}];
	spawntruck_blu addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != west) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	publicVariable "spawntruck_blu";
};
if(_side == "redf") then
{
	spawntruck_red = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_east");
	spawntruck_red addMPEventHandler ["mpkilled",{"red" spawn respawnTruck}];
	spawntruck_red addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != east) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	
	publicVariable "spawntruck_red";
};
if(_side == "red") then
{	
	_del = spawntruck_red;
	spawntruck_red = 0;
	publicVariable "spawntruck_red";
	
	sleep 60;
	deleteVehicle _del;
	
	sleep 300;
	spawntruck_red = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_east");
	spawntruck_red addMPEventHandler ["mpkilled",{"red" spawn respawnTruck}];
	spawntruck_red addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != east) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	
	publicVariable "spawntruck_red";
};
if(_side == "indf") then
{	
	spawntruck_ind = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_guerrila");
	spawntruck_ind addMPEventHandler ["mpkilled",{"ind" spawn respawnTruck}];
	spawntruck_ind addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != resistance) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	
	publicVariable "spawntruck_ind";
};
if(_side == "ind") then
{
	_del = spawntruck_ind;
	spawntruck_ind = 0;
	publicVariable "spawntruck_ind";
	
	sleep 60;
	deleteVehicle _del;
	
	sleep 300;
	spawntruck_ind = "B_Truck_01_covered_F" createVehicle (getMarkerPos "respawn_vehicle_guerrila");
	spawntruck_ind addMPEventHandler ["mpkilled",{"ind" spawn respawnTruck}];
	spawntruck_ind addEventHandler ["GetIn", {   _unit = _this select 2;   if (side _unit != resistance) then {    _veh = _this select 0;    _unit action ["eject", _veh];   };  }];
	
	publicVariable "spawntruck_ind";
};
};