params ["_array"];
// _unit,_side,_pos,_dir,_kindof,_veh,_hide

// prevent markers to render double on the same position (e.g. full team in vehicle)
/*
if (!(_vehicle in GRAD_REPLAY_DATABASE_TEMP)) then {
	GRAD_REPLAY_DATABASE_TEMP = GRAD_REPLAY_DATABASE_TEMP + [_array];
};
*/

GRAD_REPLAY_DATABASE_TEMP = GRAD_REPLAY_DATABASE_TEMP + [_array];