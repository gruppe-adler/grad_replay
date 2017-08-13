params ["_control"];

if (isMultiplayer && !(serverCommandAvailable "#kick")) exitWith {};

grad_replay_playbackPosition = 
	floor (
		linearConversion [
			0,
			10,
			sliderPosition ctrlIDC (_control select 0),
			0,
			count GRAD_REPLAY_DATABASE_LOCAL,
			true]
		);
(_control select 0) ctrlSetTooltip format ["%1 / %2", grad_replay_playbackPosition, count GRAD_REPLAY_DATABASE_LOCAL];
// systemchat format ['sliderPosition: %1 %', grad_replay_playbackPosition];