/// @description Inputs

#region inputs
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
key_bomb = keyboard_check(ord("J"))
#endregion

script_execute(states_array[state])