function EnemyStateFreeze(){
	speed = 0
	image_speed = 0
}

function EnemyStateFree() {
	randomize()
	
	if dir == Position.right hspeed = spd
	if dir == Position.left hspeed = -spd
	if dir == Position.up vspeed = -spd
	if dir == Position.down vspeed = spd

	if CollisionResolution() {
		var _directions = [];
		if !place_meeting(x + SPRITE_SIZE, y, oWall)
			array_push(_directions, Position.right);
		if !place_meeting(x - SPRITE_SIZE, y, oWall)
			array_push(_directions, Position.left);
		if !place_meeting(x, y + SPRITE_SIZE, oWall)
			array_push(_directions, Position.down);
		if !place_meeting(x, y - SPRITE_SIZE, oWall)
			array_push(_directions, Position.up);
			
		dir = _directions[irandom(array_length(_directions) - 1)];	
	}
}

function EnemyStateDamage() {}

function EnemyStateSeek() {}

function EnemyStateAttack() {}

function EnemyStateDead() {}