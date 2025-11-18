extends Node3D

@export var maximum_health: int = 5 

var current_health: int:
	set(health_in):
		current_health = health_in
		print("health was changed")
		label_3d.text = str(current_health) + "/" + str(maximum_health)
		var red: Color = Color.RED
		var white: Color = Color.WHITE
		label_3d.modulate = red.lerp(white, float(current_health) / float(maximum_health))
		if current_health < 1:
			get_tree().reload_current_scene()
		
@onready var label_3d: Label3D = $Label3D

func _ready() -> void:
	current_health = maximum_health
	var my_name: String = "Byron"
	var my_number: int = 41
	print(my_name + " - " + str(my_number)) 

func take_damage() -> void:
	print("damage taken")
	current_health -= 1
	
