extends Node2D


export var _action:bool = false
var currentlevelnumber: int = 0
var _level1: PackedScene = preload("res://Level 1.tscn")
var _level2: PackedScene = preload("res://Level2.tscn")
var _level3: PackedScene = preload("res://Level3.tscn")
var _level4: PackedScene = preload("res://Level4.tscn")
var _level5: PackedScene = preload("res://Level5.tscn")
var victoryscreen: PackedScene = preload("res://VictoryScreen.tscn")
var levelholder = []
var currentlevel: PackedScene = _level1

func _init():
	levelholder.append(_level1)
	levelholder.append(_level2)
	levelholder.append(_level3)
	levelholder.append(_level4)
	levelholder.append(_level5)
	levelholder.append(victoryscreen)
	print(levelholder)
	

func _ready():
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_R:
			resetlevel()

func nextlevel():
	currentlevelnumber += 1
	remove_child(get_child(0))
	currentlevel = levelholder[currentlevelnumber]
	var leveli = currentlevel.instance() as Node2D
	add_child(leveli)
	

func resetlevel():
	remove_child(get_child(0))
	var level = levelholder[currentlevelnumber]
	var leveli = level.instance() as Node2D
	add_child(leveli)
	get_child(0).get_child(2).sleeping = true
