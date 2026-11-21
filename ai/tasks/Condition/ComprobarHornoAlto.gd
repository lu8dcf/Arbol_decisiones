extends BTCondition

func _tick(delta: float) -> Status:

	var npc = get_agent()

	if npc.trabajando:
		return FAILURE

	return SUCCESS
