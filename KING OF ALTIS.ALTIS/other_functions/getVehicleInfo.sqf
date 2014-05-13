_classname = _this;
_rank = 999;

if(_classname == "B_Quadbike_01_F") then
{
	_rank = 1; //atv
};
if(_classname == "B_MRAP_01_F") then
{
	_rank = 5; //hunter
};
if(_classname == "I_Heli_Transport_02_F") then 
{
	_rank = 20; //mohawk
};
if(_classname == "B_Heli_Light_01_F") then 
{
	_rank = 12; //littlebird
};
if(_classname == "B_Heli_Light_01_armed_F") then 
{
	_rank = 20; //armed littlebird
};
if(_classname == "O_Heli_Light_02_unarmed_F") then 
{
	_rank = 16; //unarmed orca
};
if(_classname == "O_Heli_Light_02_F") then 
{
	_rank = 24; //orca
};
if(_classname == "I_Heli_light_03_unarmed_F") then 
{
	_rank = 18; //unarmed hellcat
};
if(_classname == "I_Heli_light_03_F") then 
{
	_rank = 26; //hellcat
};
if(_classname == "B_G_Offroad_01_armed_F") then
{
	_rank = 8; //armed pickup
};
if(_classname == "B_Heli_Transport_01_F") then
{
	_rank = 22; //ghosthawk
};
if(_classname == "B_Heli_Attack_01_F") then
{
	_rank = 34; //blackfoot kampfheli
};
if(_classname == "O_Heli_Attack_02_F") then
{
	_rank = 32; //kajman
};
if(_classname == "B_MRAP_01_hmg_F") then
{
	_rank = 10; //hunter hmg
};
if(_classname == "B_MRAP_01_gmg_F") then
{
	_rank = 14; //hunter gmg
};
if(_classname == "O_MRAP_02_gmg_F") then
{
	_rank = 15; //iftri gmg
};
if(_classname == "I_MRAP_03_gmg_F") then
{
	_rank = 16; //strider gmg
};
if(_classname == "I_Truck_02_covered_F") then
{
	_rank = 8; //zamak
};
if(_classname == "O_MRAP_02_F") then
{
	_rank = 6; //ifrit
};
if(_classname == "O_MRAP_02_hmg_F") then
{
	_rank = 11; //ifrit hmg
};
if(_classname == "I_MRAP_03_F") then
{
	_rank = 7; //strider
};
if(_classname == "I_MRAP_03_hmg_F") then
{
	_rank = 12; //strider hmg
};
if(_classname == "B_Plane_CAS_01_F") then
{
	_rank = 36; //a10 jet
};
if(_classname == "O_Plane_CAS_02_F") then
{
	_rank = 40; //yak jet
};
if(_classname == "I_MBT_03_cannon_F") then
{
	_rank = 35; //kuma tank
};
if(_classname == "I_APC_Wheeled_03_cannon_F") then
{
	_rank = 21; //gorgon apc
};
if(_classname == "I_APC_tracked_03_cannon_F") then
{
	_rank = 22; //mora apc
};
if(_classname == "O_APC_Wheeled_02_rcws_F") then
{
	_rank = 18; //marid apc
};
if(_classname == "O_APC_Tracked_02_cannon_F") then
{
	_rank = 24; //kamysh apc
};
if(_classname == "O_APC_Tracked_02_AA_F") then
{
	_rank = 32; //tigris aa
};
if(_classname == "O_MBT_02_cannon_F") then
{
	_rank = 32; //varsuk tank
};
if(_classname == "B_APC_Tracked_01_AA_F") then
{
	_rank = 30; //cheetah aa
};
if(_classname == "B_APC_Tracked_01_rcws_F") then
{
	_rank = 19; //panther apc
};
if(_classname == "B_APC_Wheeled_01_cannon_F") then
{
	_rank = 20; //marshall apc
};
if(_classname == "B_MBT_01_cannon_F") then
{
	_rank = 28; //slammer mbt
};


_output = [_rank];
_output