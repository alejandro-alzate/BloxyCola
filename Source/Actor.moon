import Model from require "Model"
import PVInstance from require "PVInstance"

export Actor
class Actor extends Model, PVInstance
	new: ->
	BindToMessage: (topic, func) ->
	BindToMessageParallel: (topic, func) ->
	SendMessage: (topic, message) ->
