import PVInstance from require "PVInstance"
import BasePart from require "BasePart"
import Instance from require "Instance"
import Enum from require "Enum"
export Part

class Part extends BasePart, PVInstance, Instance
	new: (properties={}) ->
		@Shape = properties.Shape or Enum.PartType.Block
