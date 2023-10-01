extends Node2D

@export var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x_direction = Input.get_axis("ui_left", "ui_right") * Vector2.RIGHT
	var y_direction = Input.get_axis("ui_down", "ui_up") * Vector2.UP
	var direction = (x_direction + y_direction).normalized()
	position += delta * direction * speed
