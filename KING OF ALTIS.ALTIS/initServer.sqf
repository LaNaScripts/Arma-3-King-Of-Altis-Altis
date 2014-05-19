if (isServer) then
{
serverRunningQuery = false;

TICKETS_BLU = 0;
publicVariable "TICKETS_BLU";
TICKETS_RED = 0;
publicVariable "TICKETS_RED";
TICKETS_IND = 0;
publicVariable "TICKETS_IND";

createMarker ["OBJECTIVE", getMarkerPos "objective_main"];
"OBJECTIVE" setMarkerShape "ELLIPSE";
"OBJECTIVE" setMarkerSize [12000, 12000];
"OBJECTIVE" setMarkerBrush "FDiagonal";
"OBJECTIVE" setMarkerColor "ColorBlack";
"OBJECTIVE" setMarkerAlpha 0.1;

createMarker ["OBJECTIVEINNER", getMarkerPos "objective_main"];
"OBJECTIVEINNER" setMarkerShape "ELLIPSE";
"OBJECTIVEINNER" setMarkerSize [300, 300];
"OBJECTIVEINNER" setMarkerBrush "FDiagonal";
"OBJECTIVEINNER" setMarkerColor "ColorBlack";
"OBJECTIVEINNER" setMarkerAlpha 0.5;

[] execVM "serverLoop.sqf";
};