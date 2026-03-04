extends Node3D

@export var message_on_click_mouse:="Click Mouse"
@export var message_on_click_touch:="Click Touch"
signal on_cube_click_message(message:String)

func _input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print("Cube clicked!")
		on_cube_click_message.emit(message_on_click_mouse)

	if event is InputEventScreenTouch and event.pressed:
		print("Cube touched!")
		on_cube_click_message.emit(message_on_click_touch)


# Oh yeah 
