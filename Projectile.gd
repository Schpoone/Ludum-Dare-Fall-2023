extends CharacterBody2D

@export var speed: float
var rng = RandomNumberGenerator.new()

func start(pos):
	position = pos
	velocity = Vector2.from_angle(rng.randf_range(0, 2*PI)) * speed

func _draw():
	draw_circle(Vector2(0, 0), $CollisionShape2D.shape.radius, Color.WHITE)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit()
		queue_free()
