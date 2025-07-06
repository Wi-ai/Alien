extends StaticBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var interactable_component: Area2D = $InteractableComponent
@onready var timer: Timer = $Timer


func  _ready() -> void:
	interactable_component.interactable_activated.connect(on_interactable_activated)
	interactable_component.interactable_deactivated.connect(on_interactble_deactivated)

func on_interactable_activated() -> void:
	Engine.time_scale = 0.5
	timer.start()
	animated_sprite.play("door_open")
	print("activated")
	
func on_interactble_deactivated() -> void:
	animated_sprite.play("door_close")
	print("deactivated")


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://Scenes/Levels/level_2.tscn")
