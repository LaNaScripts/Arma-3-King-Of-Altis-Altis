    /* -------------------------------------------------------------------
    File: grpSpawn.sqf
    Author: Iceman77
        
    Description:
    Spawn a random group that patrols an area.
    The possible group types are infantry, motorized & mechanized.
        
    Parameters:
    _this select 0: <side> >> (EAST,WEST,RESISTANCE)
    _this select 1: <string> >> Marker Name (spawn position)
    _this select 2: <number> >> Patrol Radius
        
    Usage:
    [WEST,"myMarker", 100] call TAG_Grp_Spawn; 
    [EAST,"mymarker", 150] call TAG_Grp_Spawn; 
    [RESISTANCE,"mymarker", random 200] call TAG_Grp_Spawn; 
    ------------------------------------------------------------------- */
     
    TAG_Grp_Spawn = {
     
    if (!isServer) exitWith {};
     
    Private ["_grp","_grpType","_sideArray","_grpRandom","_infGrp","_motGrp","_mechGrp"];
     
    _side = _this select 0;    
    _spawnPos = _this select 1;
    _radius = _this select 2;
     
        switch (_side) do {
            case WEST : {
                _sideArray = ["West", "BLU_F"];
                _grpType = ["Infantry", "Motorized", "Mechanized"];
                _infGrp = ["BUS_InfSentry","BUS_InfSquad","BUS_InfSquad_Weapons","BUS_InfTeam","BUS_InfTeam_AA","BUS_InfTeam_AT","BUS_ReconPatrol","BUS_ReconSentry","BUS_ReconTeam","BUS_SniperTeam"] call BIS_fnc_selectRandom;
                _motGrp = ["BUS_MotInf_AA","BUS_MotInf_AT","BUS_MotInf_GMGTeam","BUS_MotInf_MGTeam","BUS_MotInf_MortTeam","BUS_MotInf_Team"] call BIS_fnc_selectRandom;
                _mechGrp = ["BUS_MechInf_AA","BUS_MechInf_AT","BUS_MechInf_Support","BUS_MechInfSquad"] call BIS_fnc_selectRandom;
                _grpRandom = [_infGrp, _motGrp, _mechGrp] call BIS_fnc_selectRandom;
            };
            
            case EAST : {
                _sideArray = ["East", "OPF_F"];
                _grpType = ["Infantry", "Motorized_MTP", "Mechanized"];
                _infGrp = ["OI_reconPatrol","OI_reconSentry","OI_reconTeam","OIA_InfSentry","OIA_InfSquad","OIA_InfSquad_Weapons","OIA_InfTeam","OIA_InfTeam_AA","OIA_InfTeam_AT","OI_SniperTeam"] call BIS_fnc_selectRandom;
                _motGrp = ["OIA_MotInf_AA","OIA_MotInf_AT","OIA_MotInf_GMGTeam","OIA_MotInf_MGTeam","OIA_MotInf_MortTeam","OIA_MotInf_Team"] call BIS_fnc_selectRandom;
                _mechGrp = ["OIA_MechInf_AA","OIA_MechInf_AT","OIA_MechInf_Support","OIA_MechInfSquad"] call BIS_fnc_selectRandom;
                _grpRandom = [_infGrp, _motGrp, _mechGrp] call BIS_fnc_selectRandom;
            };
            
            case RESISTANCE : {
                _sideArray = ["Indep", "IND_F"];
                _grpType = ["Infantry", "Motorized", "Mechanized"]; 
                _infGrp = ["HAF_InfSentry","HAF_InfSquad","HAF_InfSquad_Weapons","HAF_InfTeam","HAF_InfTeam_AA","HAF_InfTeam_AT","HAF_SniperTeam"] call BIS_fnc_selectRandom;
                _motGrp = ["HAF_MotInf_AA","HAF_MotInf_AT","HAF_MotInf_GMGTeam","HAF_MotInf_MGTeam","HAF_MotInf_MortTeam","HAF_MotInf_Team"] call BIS_fnc_selectRandom;
                _mechGrp = ["HAF_MechInf_AA","HAF_MechInf_AT","HAF_MechInf_Support","HAF_MechInfSquad"] call BIS_fnc_selectRandom;
                _grpRandom = [_infGrp, _motGrp, _mechGrp] call BIS_fnc_selectRandom;
            };
        };
        
        switch (_grpRandom) do {
            case _infGrp:{_grp = [getMarkerPos _spawnPos, _side, (configFile >> "CfgGroups" >> (_sideArray select 0) >> (_sideArray select 1) >> (_grpType select 0) >> _grpRandom)] call BIS_fnc_spawnGroup;};
            case _motGrp:{_grp = [getMarkerPos _spawnPos, _side, (configFile >> "CfgGroups" >> (_sideArray select 0) >> (_sideArray select 1) >> (_grpType select 1) >> _grpRandom)] call BIS_fnc_spawnGroup;};
            case _mechGrp:{_grp = [getMarkerPos _spawnPos, _side, (configFile >> "CfgGroups" >> (_sideArray select 0) >> (_sideArray select 1) >> (_grpType select 2) >> _grpRandom)] call BIS_fnc_spawnGroup;};
        };
      
            [_grp, getMarkerPos _spawnPos, _radius] call BIS_fnc_taskPatrol; 
       
    };