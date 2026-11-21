extends BTAction

func _tick(delta: float) -> Status:

	var npc = get_agent()

	npc.destino_actual = npc.bosque.global_position

	return SUCCESS
