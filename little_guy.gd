extends CharacterBody2D

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			if event.button_index == MOUSE_BUTTON_LEFT:
				get_parent()._increase_score.emit()
				var screen_size = get_viewport_rect().size
				global_position = Vector2(randf_range(0.0, screen_size.x),randf_range(0.0, screen_size.y))
			else:
				print("died")
