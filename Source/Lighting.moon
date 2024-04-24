import Instance from require "Instance"
import Color3 from require "Color"

class Lighting extends Instance
	new: (properties) ->
		@Ambient = properties.Ambient or Color3.new(1,1,1)
		@Brightness = properties.Brightness or 1
		@ClockTime = properties.ClockTime or 1
		@ColorShift_Bottom = properties.ColorShift_Bottom or Color3.new(1,1,1)
		@ColorShift_Top = properties.ColorShift_Top or Color3.new(1,1,1)
		@EnvironmentDiffuseScale = properties.EnvironmentDiffuseScale or 0
		@EnvironmentSpecularScale = properties.EnvironmentSpecularScale or 0
		@ExposureCompensation = properties.ExposureCompensation or 0
		@FogColor = properties.FogColor or Color3.new(1,1,1)
		@FogEnd = properties.FogEnd or 30
		@FogStart = properties.FogStart or 25
		@GeographicLatitude = properties.GeographicLatitude or 0
		@GlobalShadows = type(properties.GlobalShadows) == "boolean" and properties.GlobalShadows or true
		@OutdoorAmbient = properties.OutdoorAmbient or Color3.new(1,1,1)
		@ShadowSoftness = properties.ShadowSoftness or 1
		@Technology = properties.Technology or Enum.Technology.Legacy
		@TimeOfDay = properties.TimeOfDay or "12:00:00"
	GetMinutesAfterMidnight: ->
    GetMoonDirection: ->
    GetMoonPhase: ->
    GetSunDirection: ->
    SetMinutesAfterMidnight: (minutes) ->
    --Events
    LightingChanged: ->


