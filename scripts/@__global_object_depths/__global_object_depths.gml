// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 1; // obj_main
global.__objectDepths[1] = -10; // obj_control
global.__objectDepths[2] = -10; // obj_control_battle
global.__objectDepths[3] = 0; // Cont_Controller
global.__objectDepths[4] = -50; // obj_cursor
global.__objectDepths[5] = 0; // obj_door
global.__objectDepths[6] = 0; // obj_int_door
global.__objectDepths[7] = 0; // obj_region
global.__objectDepths[8] = 0; // obj_treas
global.__objectDepths[9] = 0; // obj_trigger
global.__objectDepths[10] = -900; // obj_transition
global.__objectDepths[11] = -2; // obj_effect
global.__objectDepths[12] = -999; // obj_fader
global.__objectDepths[13] = 0; // obj_p_enemy
global.__objectDepths[14] = 0; // obj_p_npc


global.__objectNames[0] = "obj_main";
global.__objectNames[1] = "obj_control";
global.__objectNames[2] = "obj_control_battle";
global.__objectNames[3] = "Cont_Controller";
global.__objectNames[4] = "obj_cursor";
global.__objectNames[5] = "obj_door";
global.__objectNames[6] = "obj_int_door";
global.__objectNames[7] = "obj_region";
global.__objectNames[8] = "obj_treas";
global.__objectNames[9] = "obj_trigger";
global.__objectNames[10] = "obj_transition";
global.__objectNames[11] = "obj_effect";
global.__objectNames[12] = "obj_fader";
global.__objectNames[13] = "obj_p_enemy";
global.__objectNames[14] = "obj_p_npc";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for