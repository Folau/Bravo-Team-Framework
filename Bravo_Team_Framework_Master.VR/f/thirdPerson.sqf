// ----------------------------------------------------------------------------
// 				NO 3RD PERSON - {God-Father} @ 1PARA Community
// ----------------------------------------------------------------------------
// 0 = Disable, 1 = In Vehicles Only, 2 = Not Allowed (TvT)
if (!hasInterface || (difficultyOption "ThirdPersonView" == 0) || !isMultiplayer) exitWith {};

sleep 5;

// Default to off
if ("ThirdPerson" call BIS_fnc_getParamValue == 0) exitWith {};

[] call {
	// 3rd in Vehicles Only
	if ("ThirdPerson" call BIS_fnc_getParamValue == 1) exitWith { 
		[] spawn {
			while {(true)} do {
				if (cameraView == "External" && lifeState player != "INCAPACITATED") then { if ((vehicle player) == player) then {  player switchCamera "Internal"; }; };
				sleep 0.1;
			};
		};	
	};
	
	// 3rd Disabled Everywhere
	if ("ThirdPerson" call BIS_fnc_getParamValue == 2) exitWith { 
		[] spawn {
			(FindDisplay 46) displayAddEventHandler ["keydown",{(_this select 1) in (actionKeys "TacticalView")}];
			while {(true)} do {
                if (cameraView == "External") then { if ((vehicle player) == cameraOn) then { (vehicle player) switchCamera "Internal"; }; };
                sleep 0.1;
            };
		};
	};
};