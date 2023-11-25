extends Area2D





func _on_body_entered(body):
	if body is CharacterBody2D:
		DialogueManager.show_example_dialogue_balloon(load("res://darkorlight.dialogue"),"start")
		queue_free()
