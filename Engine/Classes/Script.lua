local BaseScript
BaseScript = require("BaseScript").BaseScript
local Script
do
  local _class_0
  local _parent_0 = BaseScript
  local _base_0 = { }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(source, properties)
      if properties == nil then
        properties = { }
      end
      self.source = source
      return assert(type(self.source) == "string", "Script source must be a string")
    end,
    __base = _base_0,
    __name = "Script",
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
  Script = _class_0
end
return {
  Script
}
