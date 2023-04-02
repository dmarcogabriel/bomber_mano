function ControllLevelStateInit(){}

function ControllLevelStateRunning() {
	if !audio_is_playing(snd_Level_01)
		audio_play_sound(snd_Level_01, 1, true)
	if keyPause {
		state = LevelStates.paused
	}
}

function ControllLevelStatePause() {
	audio_pause_sound(snd_Level_01)
	oPlayer.state = PlayerStates.freeze
	oEnemy.state = PlayerStates.freeze
	
	if keyPause {
		oPlayer.state = PlayerStates.free
		oEnemy.state = PlayerStates.free
		state = LevelStates.running
	}
}

function ControllLevelStateFinished() {
	audio_pause_sound(snd_Level_01)
	// Go to next level
	if !alarm[1] alarm[1] = room_speed * 3
}