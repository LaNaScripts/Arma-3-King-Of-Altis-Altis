private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone1_air","_zone2_air","_zone3_air","_dis","_dis_air"];

_zone1 = getMarkerPos "BLUFOR_BASE";
_zone2 = getMarkerPos "OPFOR_BASE";
_zone3 = getMarkerPos "INDEPENDENT_BASE";

_zone1_air = getMarkerPos "BLUFOR_BASE_AIR";
_zone2_air = getMarkerPos "OPFOR_BASE_AIR";
_zone3_air = getMarkerPos "INDEPENDENT_BASE_AIR";

_dis = 800;                          
_dis_air = 4000;

_inArea = false;

while {true} do
{
   if (alive player) then
   {
   if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis)) && (!_inArea)) then 
   {     
      _eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
      _inArea = true;
      hint "Entering protected base area";
	  player allowDamage false;
   };

   if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis)) && (_inArea)) then 
   {    
      player removeEventHandler ["fired", _eh1];
      _inArea = false;
      hint "Leaving protected base area";
	  player allowDamage true;
   };

   if (((getPos player) select 2) < 100) then
   {
   if (_zone1 distance player < _dis) then
   {
		if ((side player == east) || (side player == resistance)) then
		{
			player setDammage 1;
		};
   } else
   {
		if (_zone2 distance player < _dis) then
		{
			if ((side player == west) || (side player == resistance)) then
			{
				player setDammage 1;
			};
		} else
		{
			if (_zone3 distance player < _dis) then
			{
				if ((side player == east) || (side player == west)) then
				{
					player setDammage 1;
				};
			};
		};
   };
   };
   
    if (_zone1_air distance player < _dis_air) then
   {
		if ((side player == east) || (side player == resistance)) then
		{
			player setDammage 1;
		};
   } else
   {
		if (_zone2_air distance player < _dis_air) then
		{
			if ((side player == west) || (side player == resistance)) then
			{
				player setDammage 1;
			};
		} else
		{
			if (_zone3_air distance player < _dis_air) then
			{
				if ((side player == east) || (side player == west)) then
				{
					player setDammage 1;
				};
			};
		};
   };
   };  
sleep 3;
};