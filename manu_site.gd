extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_to_mainmanu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_manu.tscn")


func _on_single_m_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/manu.tscn")
