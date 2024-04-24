local Vector2, Vector3
do
  local _obj_0 = require("Vector")
  Vector2, Vector3 = _obj_0.Vector2, _obj_0.Vector3
end
local BrickColor
BrickColor = require("Color").BrickColor
local Enum
Enum = require("Enum").Enum
local Game
do
  local _class_0
  local _base_0 = {
    isA = function(what)
      for i, v in ipairs(self.type) do
        if v == what then
          return true
        end
      end
      return false
    end,
    GetService = function() end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(Name)
      self.Name = Name
      return {
        [self.type] = "Game"
      }
    end,
    __base = _base_0,
    __name = "Game"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Game = _class_0
end
return {
  Game
}
