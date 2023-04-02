/// @desc Enemy
enum EnemyStates {
	freeze,
	free,
	seek,
	damage,
	attack,
	dead,
}

state = EnemyStates.freeze
states_array[EnemyStates.freeze] = EnemyStateFreeze
states_array[EnemyStates.free] =  EnemyStateFree
states_array[EnemyStates.seek] =  EnemyStateSeek
states_array[EnemyStates.damage] =  EnemyStateDamage
states_array[EnemyStates.attack] =  EnemyStateAttack
states_array[EnemyStates.dead] =  EnemyStateDead

spd = 0.4
dir = Position.down
atk = 1
can_change_direction = false
alarm[0] = room_speed * 4