/// @description State MACHINE
enum LevelStates {
	init,
	running,
	paused,
	finished
}

state = LevelStates.init
states_array[LevelStates.init] = ControllLevelStateInit
states_array[LevelStates.running] = ControllLevelStateRunning
states_array[LevelStates.paused] = ControllLevelStatePause
states_array[LevelStates.finished] = ControllLevelStateFinished

var _callback = function () {
	oPlayer.state = PlayerStates.free
	if instance_exists(oEnemy) {
		oEnemy.state = EnemyStates.free
	}
	state = LevelStates.running
}
	
var _timeSource = time_source_create(
	time_source_game,
	2,
	time_source_units_seconds,
	_callback
)

time_source_start(_timeSource)