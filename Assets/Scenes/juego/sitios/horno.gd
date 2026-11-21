extends Node2D
class_name horno

@export var nivel_lenia := 100
@onready var label = $Label

func _ready() -> void:
	add_to_group("horno")
	actualizar_texto()



func _on_timer_timeout() -> void:
	nivel_lenia -=  5
	nivel_lenia = clamp(nivel_lenia,0,100)
	actualizar_texto()
	
func actualizar_texto():
	label.text = "Leña: " + str(nivel_lenia)
