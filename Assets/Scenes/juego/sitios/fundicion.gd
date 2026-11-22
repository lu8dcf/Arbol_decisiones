extends Area2D
class_name herreria_class



@export var nivel_carbon := 0
@export var nivel_lingote := 0
@onready var label_carbon = $Label
@onready var label_lingote = $Label2
@onready var label_espada = $Label3
@export var nivel_espada:= 0
var acumulado = 0

func _ready() -> void:
	add_to_group("herreria")
	actualizar_texto()
	GlobalSignal.connect("compra_espada",compra_espada)


func _on_timer_timeout() -> void:
	if nivel_espada >9:
		return
	if nivel_carbon > 5 and nivel_lingote > 1:
		nivel_carbon -=  5
		nivel_carbon = clamp(nivel_carbon,0,100)
		nivel_lingote -=  1
		nivel_lingote = clamp(nivel_lingote,0,10)
		acumulado +=1
		if acumulado > 3:
			acumulado = 0
			nivel_espada +=1
				
				 
	actualizar_texto()
	
func actualizar_texto():
	label_carbon.text = "Carbon: " + str(nivel_carbon)
	label_lingote.text = "Lingotes: " + str(nivel_lingote)
	label_espada.text = "Espadas: " + str(nivel_espada)

func compra_espada():
	if nivel_espada > 0:
		nivel_espada -=1
