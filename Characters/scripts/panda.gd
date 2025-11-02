extends Node3D
class_name Body

const _LERO_VELOCITY: float = 0.15

@export_category("Objects")
@export var _character: CharacterBody3D = null
@export var _animation: AnimationPlayer = null

func apply_rotation(_velocity: Vector3) -> void:
	rotation.y = lerp(rotation.y, atan2(-_velocity.x, -_velocity.z), _LERO_VELOCITY)
	pass
	
func animate(_velocity: Vector3) -> void:
	pass
