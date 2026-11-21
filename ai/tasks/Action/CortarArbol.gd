extends BTAction

var tiempo := 0.0

func _tick(delta: float) -> Status:

	tiempo += delta

	if tiempo >= 3.0:

		var npc = get_agent()

		npc.lleva_madera = true

		npc.nivel = 30

		npc.actualizar_label()

		tiempo = 0.0

		return SUCCESS

	return RUNNING
