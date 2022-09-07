extends Node

const LOADING_SCREEN := preload("res://scene/control/loading_screen.tscn")

var loading : Toy_LoadingScreen

func _ready():
	loading = LOADING_SCREEN.instantiate()
	add_child(loading)
