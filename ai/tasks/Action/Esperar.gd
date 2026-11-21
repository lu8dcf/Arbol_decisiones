extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	npc.destino_actual = npc.horno.global_position

	return SUCCESS
