function DamageAnimationInit(_color) {
	flashAlpha = 0
	flashColor = _color
}

function DamageAnimationRun() {
	if invincible and flashAlpha == 0
		flashAlpha = 1
		
	if flashAlpha > 0
		flashAlpha -= 0.05
}

function DrawDamageAnimation() {
	draw_self()

	if flashAlpha > 0 {
		shader_set(shFlash)
		draw_sprite_ext(
			sprite_index,
			image_index,
			x,
			y,
			image_xscale,
			image_yscale,
			image_angle,
			flashColor,
			flashAlpha
		)
		shader_reset()
	}
}

function TriggerDamageAnimation() {
	
}
