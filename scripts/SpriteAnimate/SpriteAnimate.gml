function SpriteAnimate(){
	var _total_frames = sprite_get_number(sprite_index) / 4 // 8
	// dir
	// 3 right
	// 1 left
	// 2 up
	// 0 down
	/*
		start frm  | end frm
		0 * 8 = 0  | 0 + 8 = 8
		1 * 8 = 8  | 8 + 8 = 16
		2 * 8 = 16 | 16 + 8 = 24
		3 * 8 = 24 | 24 + 8 = 32
	*/
	var _start_index = (dir * _total_frames);
	if image_index > _start_index + _total_frames or image_index < _start_index {
		image_index = _start_index
	}
}