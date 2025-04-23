extends Area2D


var in_spot = false



func _on_Spot_body_entered(body):
	if body.is_in_group("Box"):
		in_spot = true
	


func _on_Spot_body_exited(body):
	if body.is_in_group("Box"):
		in_spot = false
	
