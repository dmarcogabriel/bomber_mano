/// @description Add Player settings
event_inherited()

if oSharedOptions {
	playerData = oSharedOptions.playerShared
	idleSprite = playerData.sprites.idle
	walkSprite = playerData.sprites.walk
	bombsAmount = playerData.bombsAmount
	bombPower = playerData.bombPower
	maxHealth = playerData.maxHealth
	healthPoints = playerData.healthPoints
}

sprite_index = idleSprite