extends Control



var menuVis = MegaVariables.menuVis
var buttons = get_node("Control")


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Control").visible = false
	MegaVariables.menuVis = false
	
	
	get_node("Label").visible = MegaVariables.inMM
	get_node("ColorRect").visible = MegaVariables.inMM
	get_node("TextureRect").visible = MegaVariables.inMM


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("Esc")):
		if(get_node("Control").visible):
			get_node("Control").visible = false
			MegaVariables.menuVis = false
			
		else:
			get_node("Control").visible = true
			MegaVariables.menuVis = true
			
		
	pass


func changeVis():
	
	get_node("Control").visible = false
	MegaVariables.menuVis = false
	MegaVariables.inMM = false
	
	
	
	



func _on_world_1_pressed():
	changeVis()
	get_tree().change_scene("res://Scenes/World1.tscn")
	


func _on_world_2_pressed():
	changeVis()
	get_tree().change_scene("res://Scenes/World2.tscn")
	


func _on_world_3_pressed():
	changeVis()
	get_tree().change_scene("res://Scenes/World3.tscn")
	print("Three")
	
