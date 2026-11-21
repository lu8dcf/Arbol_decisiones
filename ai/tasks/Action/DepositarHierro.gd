extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	var horno_node = npc.horno

	if npc.lleva_madera:

		horno_node.nivel_hierro += npc.nivel

		horno_node.nivel_hierro = clamp(
			horno_node.nivel_hierro,
			0,
			100
		)

		#print("Nivel hierro:", horno_node.nivel_lenia)

		npc.nivel = 0

		npc.lleva_madera = false

		npc.actualizar_label()

		if horno_node.nivel_hierro >= 80:

			#print("IR A DESCANSAR")

			npc.trabajando = false

	return SUCCESS
