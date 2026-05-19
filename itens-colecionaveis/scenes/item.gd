extends Area2D

# Referência da HUD
var hud: Node

func _ready() -> void:
	# Procura a HUD na cena
	hud = get_tree().get_root().find_child("HUD", true, false)

func _on_body_entered(body: Node2D) -> void:
	
	# Verifica se quem encostou foi o Player
	if body.name == "Player":
		
		# Atualiza contador
		if hud:
			hud.adicionar_item()

		# Move item para outro lugar
		reposicionar()

func reposicionar() -> void:
	
	# Tamanho da tela
	var tela = get_viewport_rect().size

	# Nova posição aleatória
	var nova_x = randf_range(40, tela.x - 40)
	var nova_y = randf_range(40, tela.y - 40)

	global_position = Vector2(nova_x, nova_y)
