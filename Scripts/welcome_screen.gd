extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween : Tween = create_tween()
	
	#$StartDude.pivot_offset = $StartDude.size / 2
	tween.set_loops(200)
	tween.tween_property($StartDude, "rotation", deg_to_rad(-7), 0.4)
	tween.tween_property($StartDude, "rotation", deg_to_rad(7), 0.4)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
