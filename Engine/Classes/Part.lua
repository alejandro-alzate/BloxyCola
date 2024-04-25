local PVInstance
PVInstance = require("PVInstance").PVInstance
local BasePart
BasePart = require("BasePart").BasePart
local Instance
Instance = require("Instance").Instance
local Enum
Enum = require("Enum").Enum
return (function()
  do
    local _class_0
    local _parent_0 = BasePart
    local _base_0 = { }
    _base_0.__index = _base_0
    setmetatable(_base_0, _parent_0.__base)
    _class_0 = setmetatable({
      __init = function(self, ...)
        return _class_0.__parent.__init(self, ...)
      end,
      __base = _base_0,
      __name = "Part",
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
    Part = _class_0
    return _class_0
  end
end)(), PVInstance, Instance({
  new = function(properties)
    if properties == nil then
      properties = { }
    end
    self.Shape = properties.Shape or Enum.PartType.Block
  end
})
