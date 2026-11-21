extends BTAction

func _tick(delta: float) -> Status:

	var npc = get_agent()

	npc.destino_actual = npc.descanso.global_position

	return SUCCESS
