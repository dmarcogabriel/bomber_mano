function PlayerStateFreeze() {
	speed = 0
	image_speed = 0
}

function PlayerStateFree(){
	#region movimentation
	var _moveH = (keyRight - keyLeft)
	var _moveV = (keyDown - keyUp)
	
	if _moveH == 0 and _moveV == 0 {
		image_speed = 0
		sprite_index = idleSprite
	} else {
		image_speed = 1
		sprite_index = walkSprite
	}
	
	if _moveH < 0 {
		dir = Position.left
	} else if _moveH > 0 {
		dir = Position.right
	}
	if _moveV < 0 {
		dir = Position.up
	} else if _moveV > 0 {
		dir = Position.down
	}
		
	
	if x == tar_x and y == tar_y {
		hsp = 0
		vsp = 0
		if abs(_moveH) {
			tar_x = x + _moveH * SPRITE_SIZE
			_moveV = 0
		} else if abs(_moveV) {
			tar_y = y + _moveV * SPRITE_SIZE
		}
		
		if !place_meeting(tar_x, tar_y, oWall) {
			hsp = _moveH * spd
			vsp = _moveV * spd
		} else {
			tar_x = x
			tar_y = y
		}
	} else {
		x += hsp
		y += vsp
	}
	#endregion
	
	CollisionResolution()
	SpriteAnimate()
	DamageAnimationRun()

	if invincible and !alarm[0]
		alarm[0] = room_speed * 5
		
	#region drop bomb
	if (
		key_bomb and
		!place_meeting(x, y, o_Bomb) and
		dropped_bombs <= bombs_amount
	) {
		var _x = (floor(x / SPRITE_SIZE) * SPRITE_SIZE) + (SPRITE_SIZE / 2)
		var _y = (floor(y / SPRITE_SIZE) * SPRITE_SIZE)  + (SPRITE_SIZE / 2)
		instance_create_layer(
			_x,
			_y,
			"instances",
			o_Bomb,
			{ owner: id }
		)
		dropped_bombs++

	}
	#endregion
}

function PlayerStateDamage() {
	if healthPoints <= 0 {
		audio_play_sound(snd_Player_Death, 10, false)
		state = PlayerStates.dead
		return
	}
	if !invincible invincible = true
	audio_play_sound(choose(snd_Damage_01, snd_Damage_02, snd_Damage_03), 10, false)
	state = PlayerStates.free
}

function PlayerStateDead() {
	image_speed = 4
	sprite_index = walkSprite // todo: add death sprites here
	if !alarm[1]
		alarm[1] = room_speed * 4
}