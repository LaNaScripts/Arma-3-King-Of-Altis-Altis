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
"OBJECTIVEINNER" setMarkerAlpha 0.6;

createMarker ["objective_alpha_marker", getMarkerPos "objective_alpha"];
"objective_alpha_marker" setMarkerShape "ELLIPSE";
"objective_alpha_marker" setMarkerSize [500, 500];
"objective_alpha_marker" setMarkerBrush "Solid";
"objective_alpha_marker" setMarkerColor "ColorBlack";
"objective_alpha_marker" setMarkerAlpha 0.5;

createMarker ["objective_bravo_marker", getMarkerPos "objective_bravo"];
"objective_bravo_marker" setMarkerShape "ELLIPSE";
"objective_bravo_marker" setMarkerSize [500, 500];
"objective_bravo_marker" setMarkerBrush "Solid";
"objective_bravo_marker" setMarkerColor "ColorBlack";
"objective_bravo_marker" setMarkerAlpha 0.5;

createMarker ["objective_charlie_marker", getMarkerPos "objective_charlie"];
"objective_charlie_marker" setMarkerShape "ELLIPSE";
"objective_charlie_marker" setMarkerSize [500, 500];
"objective_charlie_marker" setMarkerBrush "Solid";
"objective_charlie_marker" setMarkerColor "ColorBlack";
"objective_charlie_marker" setMarkerAlpha 0.5;

[] execVM "serverLoop.sqf";
};