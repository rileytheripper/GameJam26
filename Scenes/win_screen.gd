extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween : Tween = create_tween()
	
	$Label.pivot_offset = $Label.size / 2
	tween.set_loops(200)
	
	tween.tween_property($Label, "scale", Vector2(1.5, 1.5), 0.25) #.set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property($Label, "scale", Vector2(1.0, 1.0), 0.25) #.set_trans(Tween.TRANS_BOUNCE)
	
	var tween2 : Tween = create_tween()
	tween2.set_loops(200)
	tween2.tween_property($Crown, "modulate", Color.GREEN, 1.0)
	tween2.tween_property($Crown, "modulate", Color.YELLOW, 1.0)
	

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
