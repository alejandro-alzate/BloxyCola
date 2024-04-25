import Instance from require "Instance"
import Enum from require "Enum"
export SoundService

class SoundService extends Instance
	new: (properties={}) ->
		@AmbientReverb = properties.AmbientReverb or Enum.ReverbType.NoReverb
		@DistanceFactor = properties.DistanceFactor or 3.33
		@DopplerScale = properties.DopplerScale or 1
		@RespectFilteringEnabled = properties.RespectFilteringEnabled or false
		@RolloffScale = properties.RolloffScale or 1
		@VolumetricAudio = properties.VolumetricAudio or Enum.VolumetricAudio
    GetListener: () ->
    PlayLocalSound: (sound) ->
    SetListener: (listenerType, listener) ->
