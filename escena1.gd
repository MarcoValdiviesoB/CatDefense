extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		get_node('Camera3D').transform.origin.x += 0.1;
		print("moving right")
	if Input.is_action_pressed("ui_left"):
		get_node('Camera3D').transform.origin.x -= 0.1;
	if Input.is_action_pressed("ui_up"):
		get_node('Camera3D').transform.origin.y += 0.1;
	if Input.is_action_pressed("ui_down"):
		get_node('Camera3D').transform.origin.y -= 0.1;
	pass

func _input(event):
	if event is InputEventMouseButton:
		print("mouse button event at ", event.position, event)
