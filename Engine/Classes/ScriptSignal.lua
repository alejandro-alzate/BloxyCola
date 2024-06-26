local ScriptSignal
do
  local _class_0
  local _base_0 = {
    Connect = function(func) end,
    ConnectParallel = function(func) end,
    Once = function(func) end,
    Wait = function() end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "ScriptSignal"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  ScriptSignal = _class_0
end
return {
  ScriptSignal
}
