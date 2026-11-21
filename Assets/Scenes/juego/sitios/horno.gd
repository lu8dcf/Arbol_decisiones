extends Node2D
class_name horno

@export var nivel_lenia := 100

func _process(delta):

	nivel_lenia -= delta * 2

	nivel_lenia = clamp(nivel_lenia,0,100)
