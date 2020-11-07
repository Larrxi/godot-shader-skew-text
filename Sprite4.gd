extends TextureRect

#onready var amplitude = material.get_shader_param("time_sin")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_parent().get_node("time_sin/slider").connect("amplitude_changed", self, "_on_AmplitudeController_amplitude_changed")
	get_parent().get_node("time_cos/slider").connect("amplitude_changed", self, "_on_AmplitudeController_amplitude_changed")
	get_parent().get_node("amplitude_x/slider").connect("amplitude_changed", self, "_on_AmplitudeController_amplitude_changed")
	get_parent().get_node("amplitude_y/slider").connect("amplitude_changed", self, "_on_AmplitudeController_amplitude_changed")
	
	pass # Replace with function body.

func _on_AmplitudeController_amplitude_changed(value, name):
	var amplitude = material.get_shader_param(name)
	amplitude = value
	material.set_shader_param(name, amplitude)
	print (amplitude)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
