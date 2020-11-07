tool
extends VBoxContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal amplitude_changed(amplitude, varname)

var amplitude = 1.0 setget set_amplitude
onready var label_start_text = get_parent().name

# Called when the node enters the scene tree for the first time.
func _ready():
	$HSlider.connect("value_changed", self, "_on_value_changed")
	pass # Replace with function body.

func _on_value_changed(value):
	self.amplitude = value

func set_amplitude(value):
	amplitude = value
	$Label.text = label_start_text + " " + str(amplitude)
	emit_signal("amplitude_changed", amplitude, get_parent().name)
