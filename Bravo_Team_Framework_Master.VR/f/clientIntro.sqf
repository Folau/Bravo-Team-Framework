
_defaultTwo = "Undisclosed Location";

// player call BIS_fnc_locationDescription ??
_nearLoc = (nearestLocations [getPosATL player, ["NameCityCapital","NameCity","NameVillage","NameLocal"], 1000]); 

if (count _nearLoc > 0) then { 
	_defaultTwo = format["%1 - %2", text(_nearLoc select 0), toUpper worldName];
};


[player, _defaultTwo, 200, 100, 75, 1, [], 0, true] spawn BIS_fnc_establishingShot