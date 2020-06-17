// DO NOT TOUCH THIS FILE

// #Includes for the sections
// Credits
if ((rank player) in ['LIEUTENANT', 'CAPTAIN', 'MAJOR', 'COLONEL']) then {
	#include "7_Endex.sqf"
	
	//Spacer
	_spacer2 = player createDiaryRecord ["diary", ["",""]];
};



// #Includes for the sections
// Credits
#include "6_Credits.sqf"

//Spacer
_spacer1 = player createDiaryRecord ["diary", ["",""]];

// Enemy Forces
#include "5_Enemy_Forces.sqf"

// Friendly Forces
#include "4_Friendly_Forces.sqf"

// Execution
#include "3_Execution.sqf"

// Mission
#include "2_Mission.sqf"

// Situation
#include "1_Situation.sqf"

if ("DebugMode" call BIS_fnc_getParamValue == 1) then { systemChat "Briefing Compiled Successfully"; };