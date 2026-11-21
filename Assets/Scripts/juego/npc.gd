extends CharacterBody2D
class_name leñador

@export var velocidad := 100.0

@onready var agent = $NavigationAgent2D

var destino : Vector2

var lleva_madera := false
var talando := false

func _ready():
	
	var descanso = get_tree().get_first_node_in_group("descanso")

	if descanso:
		destino = descanso.global_position

func _physics_process(_delta):

	agent.target_position = destino

	if agent.is_navigation_finished():
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var siguiente = agent.get_next_path_position()

	var direccion = global_position.direction_to(siguiente)

	velocity = direccion * velocidad

	move_and_slide()

func ir_a(posicion:Vector2):

	destino = posicion

func llego_destino() -> bool:

	return agent.is_navigation_finished()
