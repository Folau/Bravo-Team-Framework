/*
Bravo Team Mission Framework

Author: Folau

See README for usage instructions.

*/

waitUntil { isServer || !isNull player };

// Scripts that should be executed only on clients (typically Briefings, immersion, etc)
if hasInterface then {
	null = execVM "briefing\briefingMain.sqf";
	
	// Disable map shift-click
	if ("ShiftClick" call BIS_fnc_getParamValue == 0) then {						
		onMapSingleClick {_shift};
	};
	
	execVM "f\thirdPerson.sqf";
	
	_markerArray = ["respawn_west", "respawn_east", "respawn_guerrila"];
	
	for "_i" from 1 to count _markerArray do {
	
		_flagMarker = _markerArray select (_i - 1);
		
		if (_flagMarker in allMapMarkers) then {
		
			_haloPos = getMarkerPos _flagMarker;
			_haloFlag = "Flag_BI_F" createVehicleLocal _haloPos; 
			_teleportDeploy = [_haloFlag] execVM "f\teleportDeploy.sqf";
		};
	};
	
	player addRating 100000;
	player setSpeaker "NoVoice";
	
	null = execVM "f\clientIntro.sqf";	
};

// Any code to be executed on the server
if isServer then {
	null = execVM "mission\missionMain.sqf";

};

// Default TFAR Frequencies
if (isClass (configFile >> "CfgPatches" >> "task_force_radio_items")) then {
	null = execVM "mission\tfarFrequencies.sqf";
};
	

if ("DebugMode" call BIS_fnc_getParamValue == 1) then{ systemChat "Initialisation Complete"; };
