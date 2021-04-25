extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HydrogenOrb_body_entered(body):
	if "Player" in body.name:
		if (not Global.HasEncountered('hydrogen_orbs')):
			GlobalDialog.ShowDialog("first_hydrogen_orbs")
			Global.Encountered('hydrogen_orbs')
		print("and collected!")
		GlobalScenes.current_scene.get_node("Player").playerStats.hydrogen_orbs+=1
		self.queue_free()
