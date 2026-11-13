extends Node2D
# inspiration: https://www.youtube.com/watch?v=lGYLpBvZkKw
# 			   https://docs.godotengine.org/en/4.7/classes/class_tween.html
#
# all other music and sprites made by us
var counter: int = 0
var hammerCounter: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Score.text = "Notes collected: 0"
	$Score2.text = "Hammers collected: 0"
 
	var tween : Tween = create_tween()
	
	#$StartDude.pivot_offset = $StartDude.size / 2
	tween.set_loops(200)
	tween.tween_property($Pickups/Pickup, "rotation", deg_to_rad(7), 0.4)
	tween.tween_property($Pickups/Pickup, "rotation", deg_to_rad(-7), 0.4)
	
	var tween2 : Tween = create_tween()
	tween2.set_loops(200)
	tween2.tween_property($Pickups/Pickup2, "rotation", deg_to_rad(7), 0.4)
	tween2.tween_property($Pickups/Pickup2, "rotation", deg_to_rad(-7), 0.4)

	var tween3 : Tween = create_tween()
	tween3.set_loops(200)
	tween3.tween_property($Pickups/Pickup3, "rotation", deg_to_rad(7), 0.4)
	tween3.tween_property($Pickups/Pickup3, "rotation", deg_to_rad(-7), 0.4)
	
	var tween4 : Tween = create_tween()
	tween4.set_loops(200)
	tween4.tween_property($Pickups/Pickup4, "rotation", deg_to_rad(7), 0.4)
	tween4.tween_property($Pickups/Pickup4, "rotation", deg_to_rad(-7), 0.4)
	
	var tween5 : Tween = create_tween()
	tween5.set_loops(200)
	tween5.set_trans(Tween.TRANS_SINE)
	tween5.set_ease(Tween.EASE_IN_OUT)
	tween5.tween_property($DontPickup, "position", Vector2(250,400), 2)
	tween5.tween_property($DontPickup, "position", Vector2(500,300), 2)
	tween5.tween_property($DontPickup, "position", Vector2(430,200), 2)
#	tween5.set_trans(Tween.TRANS_SINE)
#	#$StartDude.pivot_offset = $StartDude.size / 2
#	tween5.set_loops()
#	tween5.tween_property($DontPickUp, "position", Vector2(500, 600), 0.5)
#	tween5.tween_property($DontPickUp, "position", Vector2(100, 200), 1)

	var tween6 : Tween = create_tween()
	tween6.set_loops(200)
	tween6.set_trans(Tween.TRANS_SINE)
	tween6.set_ease(Tween.EASE_IN_OUT)
	tween6.tween_property($DontPickup2, "position", Vector2(650,200), 2)
	tween6.tween_property($DontPickup2, "position", Vector2(500,320), 2)
	tween6.tween_property($DontPickup2, "position", Vector2(700,400), 2)
	
	var tween7 : Tween = create_tween()
	tween7.set_loops(200)
	tween7.set_trans(Tween.TRANS_SINE)
	tween7.set_ease(Tween.EASE_IN_OUT)
	tween7.tween_property($DontPickup3, "position", Vector2(650,500), 2)
	tween7.tween_property($DontPickup3, "position", Vector2(600,400), 2)
	tween7.tween_property($DontPickup3, "position", Vector2(700,620), 2)

func _on_pickup_collected() -> void:
	counter += 1
	$Score.text = "Notes collected: " + str(counter)
	
	if counter >= 4:
		#get_tree().change_scene_to_file("res://Scenes/win_screen.tscn")
		get_tree().call_deferred("change_scene_to_file","res://Scenes/win_screen.tscn")


func _on_dont_pickup_collected_bad() -> void:
	hammerCounter += 1
	$Score2.text = "Hammers collected: " + str(hammerCounter)
	
	if hammerCounter >= 2:
		#get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn")
		get_tree().call_deferred("change_scene_to_file","res://Scenes/lose_screen.tscn")

func _on_dont_pickup_3_collected_bad() -> void:
	hammerCounter += 1
	$Score2.text = "Hammers collected: " + str(hammerCounter)
	
	if hammerCounter >= 2:
		#get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn")
		get_tree().call_deferred("change_scene_to_file","res://Scenes/lose_screen.tscn")


func _on_dont_pickup_2_collected_bad() -> void:
	hammerCounter += 1
	$Score2.text = "Hammers collected: " + str(hammerCounter)
	
	if hammerCounter >= 2:
		#get_tree().change_scene_to_file("res://Scenes/lose_screen.tscn")
		get_tree().call_deferred("change_scene_to_file","res://Scenes/lose_screen.tscn")
