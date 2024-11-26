extends CharacterBody2D

# Movement speed
var speed = 200 

# Called every frame
func _process(delta):
	#Horizontal movement
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta
	elif Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
		
	#Vertical movement
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
	elif Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
