extends StaticBody2D

const SIZE = 10

func _draw():
	var top_left = Vector2(0, 0)
	var top_right = Vector2(SIZE, 0)
	var bot_right = Vector2(SIZE, SIZE)
	var bot_left = Vector2(0, SIZE)
	draw_line(top_left, top_right, Color.BLACK)
	draw_line(top_right, bot_right, Color.BLACK)
	draw_line(top_left, bot_left, Color.BLACK)
	draw_line(bot_left, bot_right, Color.BLACK)
