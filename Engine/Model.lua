local Enum
Enum = require("Enum").Enum
local CFrame
CFrame = require("CFrame").CFrame
local Instance
Instance = require("Instance").Instance
local PVInstance
PVInstance = require("PVInstance").PVInstance
local _ = (function()
  local Model
  do
    local _class_0
    local _parent_0 = PVInstance
    local _base_0 = { }
    _base_0.__index = _base_0
    setmetatable(_base_0, _parent_0.__base)
    _class_0 = setmetatable({
      __init = function(self, ...)
        return _class_0.__parent.__init(self, ...)
      end,
      __base = _base_0,
      __name = "Model",
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
    Model = _class_0
    return _class_0
  end
end)(), Instance({
  new = function()
    _ = {
      [self.LevelOfDetail] = Enum.ModelLevelOfDetail.Automatic
    }
    _ = {
      [self.ModelStreamingMode] = Enum.ModelStreamingMode.Default
    }
    _ = {
      [self.PrimaryPart] = false
    }
    _ = {
      [self.Scale] = 1
    }
    return {
      [self.WorldPivot] = CFrame.new(0, 0, 0)
    }
  end,
  AddPersistentPlayer = function(self, playerInstance) end,
  GetBoundingBox = function(self) end,
  GetExtentsSize = {
    GetPersistentPlayers = function(self) end
  },
  GetScale = function(self) end,
  MoveTo = function(self, position) end,
  RemovePersistentPlayer = function(self, playerInstance) end,
  ScaleTo = function(self, newScaleFactor) end,
  TranslateBy = function(self, delta) end
})
return {
  Model
}
