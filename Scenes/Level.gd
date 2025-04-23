extends Node2D

var Game_end = false

func _ready():
	$Timer.start(60.0)
	


func _process(delta):
	if Game_end == true:
		get_tree().paused = true
	check_end()
	pass

func check_end():
	if Game_end == false:
		var Spots = $Spots.get_child_count()
		for i in $Spots.get_children():
			if i.in_spot:
				Spots -= 1
		
		if Spots == 0:
			$AcceptDialog.popup()
			Game_end = true
		pass 
func _on_AcceptDialog_confirmed():
	get_tree().reload_current_scene()
	get_tree().quit() 

func _on_AcceptDialog_popup_hide():
	get_tree().reload_current_scene()
	get_tree().paused = false



func _on_Timer_timeout():
	get_tree().reload_current_scene()
