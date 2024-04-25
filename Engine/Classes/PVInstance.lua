local Instance
Instance = require("Instance").Instance
local CFrame
CFrame = require("CFrame").CFrame
local PVINstance
do
  local _class_0
  local _base_0 = { }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(Name, properties)
      if properties == nil then
        properties = { }
      end
      self.Name = Name
      self.Origin = properties.Origin or CFrame(0, 0, 0)
      self.PivotOffset = properties.PivotOffset or CFrame(0, 0, 0)
    end,
    __base = _base_0,
    __name = "PVINstance"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  PVINstance = _class_0
end
return {
  PVINstance
}
