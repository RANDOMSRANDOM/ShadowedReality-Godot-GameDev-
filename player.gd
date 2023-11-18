extends CharacterBody2D

@export var speed: int = 75
@onready var animations = $AnimatedSprite2D




func HandleInput():
	var MoveDirection =Input.get_vector("l","r","u","d")
	velocity = MoveDirection * speed

func UpdateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else:
		var direction = "d"
		if velocity.x < 0: direction = "l"
		elif velocity.x > 0: direction = "r"
		elif velocity.y < 0: direction = "u"
	
		animations.play(direction + "walk")



func _physics_process(delta):
	HandleInput()
	move_and_slide()
	UpdateAnimation()




