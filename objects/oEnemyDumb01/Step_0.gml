/// @description dumb enemy 01
event_inherited()

if state == EnemyStates.free {
	image_speed = 1
	EnemyStateFree()
	SpriteAnimate()
	if place_meeting(x, y, oPlayer) {
		var _player_inst = instance_place(x, y, oPlayer)
		if !_player_inst.invincible and _player_inst.state != PlayerStates.dead {
			_player_inst.healthPoints -= atk
			_player_inst.state = PlayerStates.damage
		}
	}
}

