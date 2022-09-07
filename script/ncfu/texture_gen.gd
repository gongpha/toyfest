extends RefCounted
class_name ToyTextureGen

func genim_checker(c1 : Color, c2 : Color) -> Image :
	var image := Image.new()
	image.create(2, 2, true, Image.FORMAT_RGB8)
	image.set_pixelv(Vector2i(0, 0), c1)
	image.set_pixelv(Vector2i(1, 1), c1)
	image.set_pixelv(Vector2i(0, 1), c2)
	image.set_pixelv(Vector2i(1, 0), c2)
	return image

func genim_stripes(width : int, colors : PackedColorArray, horizontal : bool = true) -> Image :
	var image := Image.new()
	image.create(width, colors.size(), true, Image.FORMAT_RGB8)
	if horizontal :
		for y in colors.size() :
			for x in width :
				image.set_pixel(x, y, colors[y])
	else :
		for y in colors.size() :
			for x in width :
				image.set_pixel(y, x, colors[y])
	return image
