extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	var herreria_node = npc.herreria
	var horno_node = npc.horno

	if npc.lleva_lingote:

		herreria_node.nivel_lingote += npc.nivel

		herreria_node.nivel_lingote = clamp(
			herreria_node.nivel_lingote,
			0,
			20
		)

		#print("Nivel hierro:", horno_node.nivel_lenia)

		npc.nivel = 0

		npc.lleva_lingote = false

		npc.actualizar_label()

		if horno_node.nivel_lingote < 3 or herreria_node.nivel_lingote > 15:

			#print("IR A DESCANSAR")

			npc.trabajando = true
	return SUCCESS

	
