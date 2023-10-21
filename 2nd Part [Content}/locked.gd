extends Area2D


func HandleInput():
	if Input.get("interact"):
		DialogueManager.show_example_dialogue_balloon(load("res://locked.dialogue"),"start")
