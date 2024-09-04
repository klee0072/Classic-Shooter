extends Area2D

var mainScene
var health = 1

func explode():
	if health == 0:
		$Sprite2D.visible = false
		modulate = Color(1,1,1)
		remove_from_group("enemies")
		mainScene.increasePoints()
		$AnimatedSprite2D.play("default")
		await $AnimatedSprite2D.animation_finished
		queue_free()
	else:
		modulate = Color(136, 8, 8)
		health = health -1
