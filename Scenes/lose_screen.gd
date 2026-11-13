extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	var tween : Tween = create_tween()
	
	#$StartDude.pivot_offset = $StartDude.size / 2
	tween.set_loops(200)
	tween.tween_property($Sad, "rotation", deg_to_rad(-7), 0.4)
	tween.tween_property($Sad, "rotation", deg_to_rad(7), 0.4)

	var tween2 : Tween = create_tween()
	tween2.set_loops(200)
	tween2.tween_property($Label, "modulate", Color.RED, 1.0)
	tween2.tween_property($Label, "modulate", Color.YELLOW, 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
