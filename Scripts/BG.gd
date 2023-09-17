extends ParallaxBackground

@export var scrollSpeed = 0
@onready var wall = preload("res://walls.tscn")


func _ready():
	spawn()

func _process(delta):
	self.scroll_base_offset.x -= scrollSpeed*delta


func _on_timer_timeout():
	spawn()
	
	
func spawn():
	var wallTemp = wall.instantiate()
	add_child(wallTemp)
	
