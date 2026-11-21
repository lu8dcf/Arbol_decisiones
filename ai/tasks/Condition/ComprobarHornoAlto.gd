extends BTCondition

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	if npc.trabajando:
		return FAILURE

	return SUCCESS
