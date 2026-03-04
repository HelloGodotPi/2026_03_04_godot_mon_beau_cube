extends Node3D

@export var rotation_speed: Vector3 = Vector3(0, 180, 0) # Degrees per second
@export var target:Node3D 
func _process(delta):
	# Convert degrees to radians because rotate_object_local uses radians
	var radians = rotation_speed * delta
	target.rotate_object_local(Vector3.RIGHT, deg_to_rad(rotation_speed.x) * delta)
	target.rotate_object_local(Vector3.UP, deg_to_rad(rotation_speed.y) * delta)
	target.rotate_object_local(Vector3.FORWARD, deg_to_rad(rotation_speed.z) * delta)
