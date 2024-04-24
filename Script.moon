import BaseScript from require "BaseScript"

class Script extends BaseScript
	new: (@source, properties={}) ->
		assert type(@source) == "string", "Script source must be a string"
		

return { Script }