extends Node2D

var SAVE_PATH = "user://variable.save"

func _on_button_pressed():
	get_tree().change_scene_to_file("res://mundo.tscn")

func _on_button_3_pressed():
	get_tree().quit()

func _on_cargar_partida_ready():
	var button = $"VBoxContainer/Cargar Partida"
	if FileAccess.file_exists(SAVE_PATH):
		pass
	else:
		button.visible = false
