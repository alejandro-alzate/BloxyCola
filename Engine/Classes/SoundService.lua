local Instance
Instance = require("Instance").Instance
local Enum
Enum = require("Enum").Enum
do
  local _class_0
  local _parent_0 = Instance
  local _base_0 = {
    GetListener = function() end,
    PlayLocalSound = function(sound) end,
    SetListener = function(listenerType, listener) end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(properties)
      if properties == nil then
        properties = { }
      end
      self.AmbientReverb = properties.AmbientReverb or Enum.ReverbType.NoReverb
      self.DistanceFactor = properties.DistanceFactor or 3.33
      self.DopplerScale = properties.DopplerScale or 1
      self.RespectFilteringEnabled = properties.RespectFilteringEnabled or false
      self.RolloffScale = properties.RolloffScale or 1
      self.VolumetricAudio = properties.VolumetricAudio or Enum.VolumetricAudio
    end,
    __base = _base_0,
    __name = "SoundService",
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
  SoundService = _class_0
  return _class_0
end
