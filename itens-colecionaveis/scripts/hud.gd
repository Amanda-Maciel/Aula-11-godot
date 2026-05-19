extends CanvasLayer

# Quantidade coletada
var total_itens: int = 0

func adicionar_item() -> void:
	
	total_itens += 1

	# Atualiza texto
	$Contador.text = "Itens: " + str(total_itens)
