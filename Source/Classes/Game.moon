import Vector2, Vector3 from require "Vector"
import BrickColor from require "Color"
import Enum from require "Enum"
export Game

class Game
	isA: (what) ->
		for i,v in ipairs(@type)
			if v == what then
				return true
		return false
	new: (@Name) ->
		@type: "Game"
	GetService: ->

-- class Players extends Game
-- 	new: (@Name) ->
-- 		super(@Name)
-- 		@type: "Player"

-- class ServerStorage extends Game
-- 	new: (@Name) ->
-- 		super(@Name)
-- 		@type: "ServerStorage"

-- class ServerScriptService extends Game
-- 	new: (@Name) ->
-- 		super(@Name)
-- 		@type: "Game"

-- class StarterGui extends Game
-- 	new: (@Name) ->
-- 		super(@Name)
-- 		@type: "Game"

-- class StarterPlayer extends Game
-- 	new: (@Name) ->
-- 		super(@Name)
-- 		@type: "Game"

