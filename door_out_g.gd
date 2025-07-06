extends StaticBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var interactable_component: InteractableComponent = $InteractableComponent
@onready var timer: Timer = $Timer
@export var previous_scene: PackedScene

func _on_body_enttered(body):
	if body.name == "musk":
		get_tree().change_scene_to_packed(previous_scene)

func  _ready() -> void:
	interactable_component.interactable_activated.connect(on_interactable_activated)
	interactable_component.interactable_deactivated.connect(on_interactble_deactivated)
	if Gamestate.return_position != Vector2.ZERO:
		global_position = Gamestate.return_position
		Gamestate.return_position = Vector2.ZERO

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
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")
