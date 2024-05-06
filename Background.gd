extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	make_box()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func make_box():
	print("make box")
	var xSize := 80
	var ySize := 80
	var pos := Vector2i.ZERO
	for x in xSize:
		for y in ySize:
			var xidx := x % 23 #randi_range(0,10)
			var yidx := y % 23 #randi_range(0,10)
			pos[0] = x
			pos[1] = y
			set_cell(0,pos,1,Vector2i(xidx,yidx),0)
