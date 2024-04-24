import Instance from require "Instance"
class PVINstance
	new: (@Name, properties={}) ->
		@Origin = properties.Origin or CFrame(0,0,0)
		@PivotOffset = properties.PivotOffset or CFrame(0,0,0)
return { PVINstance }