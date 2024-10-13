extends CharacterBody2D
class_name BaseEnemy


@export_category("Objetos")
@export var animation: AnimationPlayer

@export_category("Variaveis")
@export var move_speed: float
@export var direction: int = 0


func _ready() -> void:
	direction = -1
	
	
func _physics_process(_delta: float) -> void:
	move()
	

func move() -> void:
	if direction < 0:
		animation.play("run_left")
	
	velocity.x = direction * move_speed
	move_and_slide()


func _on_detection_area_body_entered(body: Node2D) -> void:
	if body is BaseCharacter:
		print("Entrou em contato")
