extends Area2D





func _on_body_entered(body):
	if body is CharacterBody2D:
		DialogueManager.show_example_dialogue_balloon(load("res://locked.dialogue"),"start")
