import Model from require "Model"
import PVInstance from require "PVInstance"
class Actor extends Model, PVInstance
	new: ->
	BindToMessage: (topic, func) ->
	BindToMessageParallel: (topic, func) ->
	SendMessage: (topic, message) ->
return { Actor }