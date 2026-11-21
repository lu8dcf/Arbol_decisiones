extends BTAction

var tiempo := 0.0

func _tick(delta: float) -> Status:

	tiempo += delta

	if tiempo >= 2.0:

		var npc = get_agent()
		var horno_node = npc.horno

		if horno_node.nivel_lingote >= 3:

			horno_node.nivel_lingote -= 3
			horno_node.actualizar_texto()

			npc.lleva_lingote = true
			npc.nivel = 3
			npc.actualizar_label()

		tiempo = 0.0

		return SUCCESS

	return RUNNING
