extends StaticBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var interactable_component: InteractableComponent = $InteractableComponent
@onready var timer: Timer = $Timer
@export var target_position: Vector2



func  _ready() -> void:
	interactable_component.interactable_activated.connect(on_interactable_activated)
	interactable_component.interactable_deactivated.connect(on_interactble_deactivated)

func _on_body_entered(body):
	if body.name == "musk":
		Gamestate.return_position = global_position
	
	
func on_interactable_activated() -> void:
	Engine.time_scale = 0.5
	timer.start()
	animated_sprite.play("open_door")
	print("activated")
	
	
func on_interactble_deactivated() -> void:
	animated_sprite.play("close_door")
	print("deactivated")
	
func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://Scenes/new_world_1.tscn")
