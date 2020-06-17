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
	
	null = execVM "f\clientIntro.sqf";
	
	player addRating 100000;
	player setSpeaker "NoVoice";
	
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
