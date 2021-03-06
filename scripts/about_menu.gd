extends Control

export(String, FILE, "*.tscn") var main_menu : String = ""

onready var about_label : Label = $CenterContainer/VBoxContainer/AboutLabel

func _ready() -> void:
	about_label.text = (tr("about_text") + "\n").format({
		"title": Global.TITLE,
		"version": Global.VERSION,
		"author": Global.AUTHOR
	})

func _on_MainMenuButton_pressed():
	get_tree().change_scene(main_menu)
