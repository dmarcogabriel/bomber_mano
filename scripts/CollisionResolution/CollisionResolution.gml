function CollisionResolution(){
	var _hspeed = hspeed
	var _vspeed = vspeed
	var _x = x
	var _y = y
	var _collided = false
	
	#region horizontal
	if place_meeting(_x + _hspeed, _y, oWall) {
		repeat(!place_meeting(_x + sign(_hspeed), _y, oWall))
			_x += sign(_hspeed)
		_hspeed = 0
		_collided = true
	}
	#endregion
	
	#region vertical
	if place_meeting(_x, _y + _vspeed, oWall) {
		repeat(!place_meeting(_x, _y + sign(_vspeed), oWall))
			_y += sign(_vspeed)
		_vspeed = 0
		_collided = true
	}
	#endregion
	
	hspeed = _hspeed
	vspeed = _vspeed
	return _collided
}