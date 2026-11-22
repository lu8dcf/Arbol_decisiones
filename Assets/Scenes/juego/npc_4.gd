extends CharacterBody2D
class_name carbonero

@export var velocidad := 150.0

@onready var agent = $NavigationAgent2D
@onready var carbon = get_tree().get_first_node_in_group("carbon")
@onready var herreria = get_tree().get_first_node_in_group("herreria")
@onready var descanso = get_tree().get_first_node_in_group("descanso")

var destino_actual : Vector2 

var trabajando := false

var lleva_carbon := false
var talando := false
# recurso
var nivel := 0
@onready var lbl_madera = $Label

func _ready():
	
	actualizar_label()

	if descanso:
		destino_actual = descanso.global_position

func _physics_process(_delta):

	agent.target_position = destino_actual

	if agent.is_navigation_finished():
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var siguiente = agent.get_next_path_position()

	var direccion = global_position.direction_to(siguiente)

	velocity = direccion * velocidad

	move_and_slide()

func ir_a(posicion: Vector2):
	#print("Nuevo destino: ", posicion)
	destino_actual = posicion

func llego_destino() -> bool:

	return global_position.distance_to(destino_actual) < 20

func actualizar_label():

	lbl_madera.text = str(nivel)
