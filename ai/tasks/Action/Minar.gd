extends BTAction

var tiempo := 0.0

func _tick(delta: float) -> Status:

	tiempo += delta

	if tiempo >= 2.0:

		var npc = get_agent()

		npc.lleva_madera = true

		npc.nivel = 20

		npc.actualizar_label()

		tiempo = 0.0

		return SUCCESS

	return RUNNING
