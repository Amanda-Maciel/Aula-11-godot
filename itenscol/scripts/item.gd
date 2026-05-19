extends Area2D

var hud: Node

func _ready() -> void:
	hud = get_tree().get_root().find_child("HUD", true, false)

func _on_body_entered(body: Node2D) -> void:
	print("ENCOSTOU")
	
	if body.name == "Player":
		if hud:
			hud.adicionar_item()
		reposicionar()

func reposicionar() -> void:
	var tela = get_viewport_rect().size
	var nova_x = randf_range(40, tela.x - 40)
	var nova_y = randf_range(40, tela.y - 40)
	global_position = Vector2(nova_x, nova_y)
