import Enum from require "Enum"
--rgb = require "color2RGB"
export BrickColor

class BrickColor
	new: (r, g, b) =>
		if type(r) == "string" then
			for item in *Enum.BrickColor
				print(item)
		--if type(ColorName) == "string", "Expected ColorName to be a string not a #{ColorName}"
			--TODO: