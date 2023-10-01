extends CharacterBody2D

@export var speed: float
var projectile = preload("res://Projectile.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	velocity = Vector2.from_angle(rng.randf_range(0, 2*PI)) * speed

func _process(_delta):
	pass

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit()


func _on_projectile_timer_timeout():
	var p = projectile.instantiate()
	p.start(global_position)
	get_tree().root.add_child(p)
