local Instance
Instance = require("Instance").Instance
local Vector2, Vector3
do
  local _obj_0 = require("Vector")
  Vector2, Vector3 = _obj_0.Vector2, _obj_0.Vector3
end
local CFrame
CFrame = require("CFrame").CFrame
local Enum
Enum = require("Enum").Enum
local Camera
do
  local _class_0
  local _parent_0 = Instance
  local _base_0 = {
    GetPartsObscuringTarget = function(castPoints, ignoreList) end,
    GetRenderCFrame = function() end,
    GetRoll = function() end,
    ScreenPointToRay = function(x, y, depth) end,
    SetRoll = function(rollAngle) end,
    ViewportPointToRay = function(x, y, depth) end,
    WorldToScreenPoint = function(worldPoint) end,
    WorldToViewportPoint = function(worldPoint) end,
    ZoomToExtents = function(boundingBoxCFrame, boundingBoxSize) end,
    InterpolationFinished = function() end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(properties)
      self.CFrame = properties.CFrame or CFrame.new()
      self.CameraSubject = properties.Instance or Instance.new()
      self.CameraType = properties.CameraType or Enum.CameraType.Track
      self.DiagonalFieldOfView = properties.DiagonalFieldOfView or 70
      self.FieldOfView = properties.FieldOfView or 70
      self.FieldOfViewMode = properties.FieldOfViewMode or Enum.FieldOfViewMode.Vertical
      self.Focus = properties.Focus or CFrame.new()
      self.HeadLocked = type(properties.HeadLocked) == "boolean" and properties.HeadLocked or true
      self.HeadScale = properties.HeadScale or 1
      self.MaxAxisFieldOfView = properties.MaxAxisFieldOfView or 70
      self.NearPlaneZ = properties.NearPlaneZ or 0.5
      self.VRTiltAndRollEnabled = properties.VRTiltAndRollEnabled or false
      self.ViewportSize = properties.ViewportSize or Vector2(1280, 720)
    end,
    __base = _base_0,
    __name = "Camera",
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
  Camera = _class_0
end
return Camera
