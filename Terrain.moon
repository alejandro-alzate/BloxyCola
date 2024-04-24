import BasePart from require "BasePart"
import Color3 from require "Color"
import Region3int16 from require "Region"
import PVInstance from require "PVInstance"

class TerrainRegion

class Terrain extends BasePart, PVInstance
	new: ->
		@Decoration = true
		@GrassLength = 1
		@MaterialColors = ""
		@MaxExtents = Region3int16.new(32768, 32768, 32768)
		@WaterColor = Color3.new(1,1,1)
		@WaterReflectance = 0.5
		@WaterTransparency = 0.5
		@WaterWaveSize = 0.5
		@WaterWaveSpeed = 0.5
	CellCenterToWorld: (x,y,z) ->
	CellCornerToWorld: (x,y,z) ->
	Clear: () ->
	CopyRegion: (region) ->
	CountCells: () ->
	FillBall: (center, radius, material) ->
	FillBlock: (cframe, size, material) ->
	FillCylinder: (cframe, height, radius, material) ->
	FillRegion: (region, resolution, material) ->
	FillWedge: (cframe, size, material) ->
	GetMaterialColor: (material) ->
	PasteRegion: (region , cornerint16, pasteEmptyCells) ->
	ReadVoxelChannels: (region, resolution, channelIds) ->
	ReadVoxels: (region, resolution)  ->
	ReplaceMaterial: (region, resolution, sourceMaterial, targetMaterial) ->
	SetMaterialColor: (material, value) ->
	WorldToCell: (position) ->
	WorldToCellPreferEmpty: (position) ->
	WorldToCellPreferSolid: (position) ->
	WriteVoxelChannels: (region, resolution, channels) ->
	WriteVoxels: (region, resolution, materials,occupancy) ->

return { Terrain }