/// @description Player Base
enum PlayerStates {
	freeze,
	free,
	damage,
	dead
}

state = PlayerStates.freeze
states_array[PlayerStates.freeze] = PlayerStateFreeze
states_array[PlayerStates.free] = PlayerStateFree
states_array[PlayerStates.damage] = PlayerStateDamage
states_array[PlayerStates.dead] = PlayerStateDead

hsp = 0
vsp = 0
spd = 1
tar_x = x
tar_y = y
dir = Position.down

walkSprite = sPlayerWalk01
idleSprite = sPlayerIdle01
bombsAmount = 1
bombPower = 3
maxHealth = 3
healthPoints = 3
invincible = false
damage_received = 0

DamageAnimationInit(c_white)
