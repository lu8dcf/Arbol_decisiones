extends Node2D


var leniador_scene = preload("res://Assets/Scenes/juego/npc1.tscn")
var minero_scene = preload("res://Assets/Scenes/juego/npc2.tscn")

var boton_npc: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalSignal.iniciar_npc.connect(iniciar_npc)
	

func seleccionar_tipo(tipo):
	boton_npc = tipo
	

func iniciar_npc(_tipo):
	
	# leñador
	var npc = leniador_scene.instantiate()
	npc.global_position = Vector2(75,570)
	get_tree().current_scene.add_child(npc)
	
	# minero
	npc = minero_scene.instantiate()
	npc.global_position = Vector2(75,570)
	get_tree().current_scene.add_child(npc)
	

func _on_timer_timeout() -> void:
	#iniciar_npc()
	pass
