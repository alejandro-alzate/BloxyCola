local Enum
Enum = require("Enum").Enum
do
  local _class_0
  local _base_0 = { }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, r, g, b)
      if type(r) == "string" then
        local _list_0 = Enum.BrickColor
        for _index_0 = 1, #_list_0 do
          local item = _list_0[_index_0]
          print(item)
        end
      end
    end,
    __base = _base_0,
    __name = "BrickColor"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  BrickColor = _class_0
  return _class_0
end
