extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	

	npc.ir_a(npc.carbon.global_position)

	if npc.llego_destino():
		
		return SUCCESS

	return RUNNING
