extends CharacterBody2D
class_name BaseCharacter


@export_category("Objetos")
@export var animation: AnimationPlayer


func _ready() -> void:
	animation.play("idle")
