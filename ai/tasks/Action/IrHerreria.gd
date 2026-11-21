extends BTAction

func _tick(_delta: float) -> Status:

	var npc = get_agent()

	#print("IR AL BOSQUE")

	npc.ir_a(npc.herreria.global_position)

	if npc.llego_destino():
		#print("LLEGO AL BOSQUE")
		return SUCCESS

	return RUNNING
