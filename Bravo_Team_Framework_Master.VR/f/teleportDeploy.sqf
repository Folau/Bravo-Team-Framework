params ["_pole"];

_pole addAction ["<t color='#22ffff'>Teleport Deploy</t>",{
	openmap [true, true];
	titleText["Select Map Position", "PLAIN"];
	_colour = "BLACK";
	onMapSingleClick 
		"openMap [false, false];
		player setPos [_pos select 0,_pos select 1,_pos select 2]; 
		
		onMapSingleClick ''; 
		true"
		;
}];