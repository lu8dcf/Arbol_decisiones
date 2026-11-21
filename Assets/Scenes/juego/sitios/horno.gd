extends Node2D
class_name horno

@export var nivel_lenia := 0
@export var nivel_hierro := 0
@onready var label = $Label
@onready var label_hierro = $hierro

func _ready() -> void:
	add_to_group("horno")
	actualizar_texto()



func _on_timer_timeout() -> void:
	nivel_lenia -=  1
	nivel_lenia = clamp(nivel_lenia,0,100)
	nivel_hierro -=  1
	nivel_hierro = clamp(nivel_lenia,0,100)
	actualizar_texto()
	
func actualizar_texto():
	label.text = "Leña: " + str(nivel_lenia)
	label_hierro.text = "Hierro: " + str(nivel_hierro)
