extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func make_box():
	var xSize := 30
	var ySize := 30
	var pos := Vector2i.ZERO
	for x in xSize:
		for y in ySize:
			var xidx := randi_range(0,7)
			var yidx := randi_range(0,7)
			pos[0] = 10
			pos[1] = 10
			set_cell(0,pos,0,Vector2i(4,4),0)
