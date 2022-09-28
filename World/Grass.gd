extends Node2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func create_grass_effect():
	var GrassEffect = load("res://Effects/GrassEffect.tscn")
	var grassEffect = GrassEffect.instance()
	var ysort = get_node("/root/World/YSort")
	ysort.add_child(grassEffect)
	grassEffect.global_position = global_position
	


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	
	queue_free()
