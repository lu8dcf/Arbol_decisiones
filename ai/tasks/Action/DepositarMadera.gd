extends BTAction

func _tick(delta: float) -> Status:

	var npc = get_agent()

	var horno_node = npc.horno

	if npc.lleva_madera:

		horno_node.nivel_lenia += npc.nivel

		horno_node.nivel_lenia = clamp(
			horno_node.nivel_lenia,
			0,
			100
		)

		npc.nivel = 0

		npc.lleva_madera = false

		npc.actualizar_label()

	return SUCCESS
