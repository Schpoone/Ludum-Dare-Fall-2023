class_name PlayerController
extends CharacterBody2D

@export var speed = 100
var direction: Vector2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x_direction = Input.get_axis("ui_left", "ui_right") * Vector2.RIGHT
	var y_direction = Input.get_axis("ui_down", "ui_up") * Vector2.UP
	direction = (x_direction + y_direction).normalized()

func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()
