extends Node2D
class_name horno

@export var nivel_lenia := 100

func _ready() -> void:
	add_to_group("horno")
	



func _on_timer_timeout() -> void:
	nivel_lenia -=  5
	nivel_lenia = clamp(nivel_lenia,0,100)
	
