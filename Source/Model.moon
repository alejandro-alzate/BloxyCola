import Enum from require "Enum"
import CFrame from require "CFrame"
import Instance from require "Instance"
import PVInstance from require "PVInstance"
export Model

class Model extends PVInstance, Instance
	new: ->
		@LevelOfDetail: Enum.ModelLevelOfDetail.Automatic
		@ModelStreamingMode: Enum.ModelStreamingMode.Default
		@PrimaryPart: false
		@Scale: 1
		@WorldPivot: CFrame.new(0,0,0)
	AddPersistentPlayer: (playerInstance) =>
	GetBoundingBox: =>
	GetExtentsSize:
	GetPersistentPlayers: () =>
    GetScale: () =>
    MoveTo: (position) =>
    RemovePersistentPlayer: (playerInstance) =>
    ScaleTo: (newScaleFactor) =>
    TranslateBy: (delta) =>