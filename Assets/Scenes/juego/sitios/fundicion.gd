extends Area2D
class_name herreria



@export var nivel_lenia := 0
@export var nivel_hierro := 0
@onready var label = $Label
@onready var label_hierro = $Label2
@onready var label_lingote = $Label3
@export var nivel_lingote := 0
var acumulado = 0

func _ready() -> void:
	add_to_group("herreria")
	actualizar_texto()



func _on_timer_timeout() -> void:
	
	if nivel_lenia > 3 and nivel_hierro > 1 and nivel_lingote<20:
		nivel_lenia -=  2
		nivel_lenia = clamp(nivel_lenia,0,100)
		nivel_hierro -=  1
		nivel_hierro = clamp(nivel_hierro,0,100)
		acumulado +=1
		if acumulado > 3:
			acumulado = 0
			nivel_lingote +=1
				
				 
	actualizar_texto()
	
func actualizar_texto():
	label.text = "Carbon: " + str(nivel_lenia)
	label_hierro.text = "Lingotes: " + str(nivel_hierro)
	label_lingote.text = "Espadas: " + str(nivel_lingote)
