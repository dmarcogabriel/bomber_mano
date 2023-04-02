/// @desc state
if !disabled {
	keyUp = keyboard_check_pressed(ord("W"))
	keyDown = keyboard_check_pressed(ord("S"))
	keyStart = keyboard_check_pressed(vk_enter)

	if keyUp or keyDown
		oMenuCursor.y = oMenuCursor.y == 128 ? 144 : 128

	if keyStart and oMenuCursor.y == 128 {
		disabled = true
		instance_create_layer(oMenuCursor.x + 16, oMenuCursor.y, "instances", oCursorShot)
		audio_play_sound(sndShot, 10, false)
		alarm[0] = room_speed * 2
	}
}