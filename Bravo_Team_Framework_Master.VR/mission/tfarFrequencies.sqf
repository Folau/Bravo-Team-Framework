if ("DebugMode" call BIS_fnc_getParamValue == 1) then{ systemChat "Setting up TFAR frequencies"; };

// Encryption code for side.
// Sides can communicate with the each other if these values are not different!
tf_west_radio_code = "1";
tf_east_radio_code = "2";
tf_guer_radio_code = "3";

// TFAR Frequencies
// Sets the LR and SR Frequencies for each side.
TFAR_defaultFrequencies_sr_west = ["100","110","120","130","140","150","160","170"];
TFAR_defaultFrequencies_lr_west = ["69","70","71","72","73","74","75","76","52.8"];
TFAR_defaultFrequencies_sr_east = ["100","110","120","130","140","150","160","170"];
TFAR_defaultFrequencies_lr_east = ["69","70","71","72","73","74","75","76","52.8"];
TFAR_defaultFrequencies_sr_independent = ["100","110","120","130","140","150","160","170"];
TFAR_defaultFrequencies_lr_independent = ["69","70","71","72","73","74","75","76","52.8"];

tf_freq_west =    [0 ,7, TFAR_defaultFrequencies_sr_west,0, tf_west_radio_code, -1, 0, getPlayerUID player, false];
tf_freq_west_lr = [0 ,7, TFAR_defaultFrequencies_lr_west,0, tf_west_radio_code, -1, 0,false];
tf_freq_east  =   [0 ,7, TFAR_defaultFrequencies_sr_east,0, tf_east_radio_code, -1, 0, getPlayerUID player, false];
tf_freq_east_lr = [0 ,7, TFAR_defaultFrequencies_lr_east,0, tf_east_radio_code, -1, 0,false];
tf_freq_guer  =   [0 ,7, TFAR_defaultFrequencies_sr_independent,0, tf_guer_radio_code, -1, 0, getPlayerUID player, false];
tf_freq_guer_lr = [0 ,7, TFAR_defaultFrequencies_lr_independent,0, tf_guer_radio_code, -1, 0,false];