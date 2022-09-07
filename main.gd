extends Node

@export var theme : Theme

var root_control : Control

func loadingscreen_instantiate() -> Array :
	var vbox := VBoxContainer.new()
	var bar := ProgressBar.new()
	bar.max_value = 1.0
	bar.value = 0.5
	bar.percent_visible = false
	bar.custom_minimum_size = Vector2(256, 32)
	var label := Label.new()
	label.text = "Loading . . ."
	label.add_theme_color_override(&'font_color', Color.BLACK)
	vbox.add_child(bar)
	vbox.add_child(label)
	vbox.set_anchors_and_offsets_preset(Control.PRESET_CENTER)
	return [vbox, bar, label]

func _ready():
	RenderingServer.set_default_clear_color(Color.WHITE)
	root_control = Control.new()
	root_control.theme = theme
	root_control.set_anchors_and_offsets_preset(Control.PRESET_CENTER)
	var arr := loadingscreen_instantiate()
	root_control.add_child(arr[0])
	add_child(root_control)
