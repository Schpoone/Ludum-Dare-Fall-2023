extends Area2D

func _physics_process(delta):
	for body in self.get_overlapping_bodies():
		body.queue_free()
