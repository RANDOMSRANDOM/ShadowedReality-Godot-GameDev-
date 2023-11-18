extends Area2D

var PlayerInRange = false

func _ready():
	set_process(true)

func _on_body_entered(body):
	if body is CharacterBody2D:
		PlayerInRange = true


func _on_body_exited(body):
	if body is CharacterBody2D:
		PlayerInRange = false

func _process(delta):
	if Input.is_action_pressed("interact") and PlayerInRange:      
		interact()

func interact():
	get_tree().change_scene_to_file("res://paper.tscn")
