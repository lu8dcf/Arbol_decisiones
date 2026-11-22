extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	var herreria_node = npc.herreria

	if npc.lleva_carbon:

		herreria_node.nivel_carbon += npc.nivel

		herreria_node.nivel_carbon = clamp(
			herreria_node.nivel_carbon,
			0,
			100
		)

		
		npc.nivel = 0

		npc.lleva_carbon = false

		npc.actualizar_label()

		if herreria_node.nivel_carbon >= 80:

			npc.trabajando = false

	return SUCCESS
