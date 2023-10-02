class_name PlayerController
extends CharacterBody2D

@export var speed: float

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func get_input():
	look_at(get_global_mouse_position())
	velocity = Input.get_vector("ui_left","ui_right","ui_up","ui_down") * speed
	if Input.is_action_just_pressed("Attack"):
		$Weapon/AnimationPlayer.play("Stab")
	if $Weapon/AnimationPlayer.is_playing():
		$Weapon.monitoring = true
	else:
		$Weapon.monitoring = false

func _physics_process(_delta):
	get_input()
	move_and_slide()

func hit():
	queue_free()
