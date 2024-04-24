import PVInstance from require "PVInstance"
import BasePart from require "BasePart"
import Instance from require "Instance"

class Part extends BasePart, PVInstance, Instance
	new: (properties={}) ->
		@Shape = properties.Shape or Enum.PartType.Block
return { Part }
