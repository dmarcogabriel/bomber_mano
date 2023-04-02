/// @desc Selector
if !disabled {
	keyUp = keyboard_check_pressed(ord("W"))
	keyDown = keyboard_check_pressed(ord("S"))
	keySelect = keyboard_check_pressed(vk_enter)

	if keyUp and oMenuCursor.y > 48 {
		oMenuCursor.y -= 16
	}

	if keyDown and oMenuCursor.y < 80 {
		oMenuCursor.y += 16
	}

	if oMenuCursor.y == 48 {
		oPlayerSelected.sprite_index = sPlayerWalk01
		oPlayerThumb.sprite_index = sPlayerThumb01
	}
	
	if oMenuCursor.y == 64 {
		oPlayerSelected.sprite_index = sPlayerWalk02
		oPlayerThumb.sprite_index = sPlayerThumb02
	}

	if oMenuCursor.y == 80 {
		oPlayerSelected.sprite_index = sPlayerWalk03
		oPlayerThumb.sprite_index = sPlayerThumb03
	}

	if keySelect {
		disabled = true
		
		audio_play_sound(sndShot, 10, false)
		alarm[0] = room_speed * 2
		instance_create_layer(oMenuCursor.x + 16, oMenuCursor.y, "instances", oCursorShot)

		var _walkSprite
		var _idleSprite
		var _thumbSprite

		if oMenuCursor.y == 48 {
			_walkSprite = sPlayerWalk01
			_idleSprite = sPlayerIdle01
			_thumbSprite = sPlayerThumb01
		}
	
		if oMenuCursor.y == 64 {
			_walkSprite = sPlayerWalk02
			_idleSprite = sPlayerIdle02
			_thumbSprite = sPlayerThumb02
		}
	
		if oMenuCursor.y == 80 {
			_walkSprite = sPlayerWalk03
			_idleSprite = sPlayerIdle03
			_thumbSprite = sPlayerThumb03
		}

		oSharedOptions.playerShared.sprites.walk = _walkSprite
		oSharedOptions.playerShared.sprites.idle = _idleSprite
		oSharedOptions.playerShared.sprites.thumb = _thumbSprite
	}
}