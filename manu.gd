extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/manu_site.tscn")


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_2.tscn")


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_3.tscn")


func _on_level_4_pressed() -> void:
	pass # Replace with function body.


func _on_level_5_pressed() -> void:
	pass # Replace with function body.


func _on_level_6_pressed() -> void:
	pass # Replace with function body.
