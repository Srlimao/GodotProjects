
extends TextureProgress

var timer = 0.0
const SEC = 1.0

var old_value
var new_value
var label_node = null

func _ready():
	label_node = get_parent().get_node("Label")
	label_node.set_text(str(self.get_max()))
	set_process(true)

func _process(delta):
	timer += delta
	if timer >= 1.0:
		timer = 0.0
		old_value = self.get_value()
		new_value = old_value - 1
		self.set_value(self.get_value() - 1)
		label_node.set_text(str(new_value))
		if (new_value) == 0:
			print("Timer finished")
			set_process(false)


