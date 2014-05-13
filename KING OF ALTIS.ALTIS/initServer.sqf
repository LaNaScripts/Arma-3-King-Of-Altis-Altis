if (isServer) then
{
serverRunningQuery = false;

TICKETS_BLU = 0;
publicVariable "TICKETS_BLU";
TICKETS_RED = 0;
publicVariable "TICKETS_RED";
TICKETS_IND = 0;
publicVariable "TICKETS_IND";

createMarker ["objective_alpha_marker", getMarkerPos "objective_alpha"];
"objective_alpha_marker" setMarkerShape "ELLIPSE";
"objective_alpha_marker" setMarkerSize [300, 300];
"objective_alpha_marker" setMarkerBrush "Solid";
"objective_alpha_marker" setMarkerColor "ColorBlack";
"objective_alpha_marker" setMarkerAlpha 0.5;

createMarker ["objective_bravo_marker", getMarkerPos "objective_bravo"];
"objective_bravo_marker" setMarkerShape "ELLIPSE";
"objective_bravo_marker" setMarkerSize [300, 300];
"objective_bravo_marker" setMarkerBrush "Solid";
"objective_bravo_marker" setMarkerColor "ColorBlack";
"objective_bravo_marker" setMarkerAlpha 0.5;

createMarker ["objective_charlie_marker", getMarkerPos "objective_charlie"];
"objective_charlie_marker" setMarkerShape "ELLIPSE";
"objective_charlie_marker" setMarkerSize [300, 300];
"objective_charlie_marker" setMarkerBrush "Solid";
"objective_charlie_marker" setMarkerColor "ColorBlack";
"objective_charlie_marker" setMarkerAlpha 0.5;

createMarker ["objective_delta_marker", getMarkerPos "objective_delta"];
"objective_charlie_marker" setMarkerShape "ELLIPSE";
"objective_charlie_marker" setMarkerSize [300, 300];
"objective_charlie_marker" setMarkerBrush "Solid";
"objective_charlie_marker" setMarkerColor "ColorBlack";
"objective_charlie_marker" setMarkerAlpha 0.5;

createMarker ["objective_echo_marker", getMarkerPos "objective_echo"];
"objective_charlie_marker" setMarkerShape "ELLIPSE";
"objective_charlie_marker" setMarkerSize [300, 300];
"objective_charlie_marker" setMarkerBrush "Solid";
"objective_charlie_marker" setMarkerColor "ColorBlack";
"objective_charlie_marker" setMarkerAlpha 0.5;

[] execVM "serverLoop.sqf";
};