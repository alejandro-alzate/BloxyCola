local Instance
Instance = require("Instance").Instance
local Color3
Color3 = require("Color").Color3
local Lighting
do
  local _class_0
  local _parent_0 = Instance
  local _base_0 = {
    GetMinutesAfterMidnight = function() end,
    GetMoonDirection = function() end,
    GetMoonPhase = function() end,
    GetSunDirection = function() end,
    SetMinutesAfterMidnight = function(minutes) end,
    LightingChanged = function() end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(properties)
      self.Ambient = properties.Ambient or Color3.new(1, 1, 1)
      self.Brightness = properties.Brightness or 1
      self.ClockTime = properties.ClockTime or 1
      self.ColorShift_Bottom = properties.ColorShift_Bottom or Color3.new(1, 1, 1)
      self.ColorShift_Top = properties.ColorShift_Top or Color3.new(1, 1, 1)
      self.EnvironmentDiffuseScale = properties.EnvironmentDiffuseScale or 0
      self.EnvironmentSpecularScale = properties.EnvironmentSpecularScale or 0
      self.ExposureCompensation = properties.ExposureCompensation or 0
      self.FogColor = properties.FogColor or Color3.new(1, 1, 1)
      self.FogEnd = properties.FogEnd or 30
      self.FogStart = properties.FogStart or 25
      self.GeographicLatitude = properties.GeographicLatitude or 0
      self.GlobalShadows = type(properties.GlobalShadows) == "boolean" and properties.GlobalShadows or true
      self.OutdoorAmbient = properties.OutdoorAmbient or Color3.new(1, 1, 1)
      self.ShadowSoftness = properties.ShadowSoftness or 1
      self.Technology = properties.Technology or Enum.Technology.Legacy
      self.TimeOfDay = properties.TimeOfDay or "12:00:00"
    end,
    __base = _base_0,
    __name = "Lighting",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        local parent = rawget(cls, "__parent")
        if parent then
          return parent[name]
        end
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Lighting = _class_0
  return _class_0
end
