extends Control

var isTW = true;

# Called when the node enters the scene tree for the first time.
func _ready():
	TranslationServer.set_locale("TW")
	_set_label()
	pass # Replace with function body.
	
func _set_label():
	$Label.text = "weapon"
	$Label2.text = tr("weapon")
	$RichTextLabel.text = "這是一把" + tr("weapon")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if isTW:
		TranslationServer.set_locale("TW")
	else:
		TranslationServer.set_locale("en")
	
	isTW = !isTW
	_set_label()
	pass # Replace with function body.


func _on_option_button_item_selected(index):
	match index:
		0:
			TranslationServer.set_locale("TW")
		1:
			TranslationServer.set_locale("en")
	pass # Replace with function body.
