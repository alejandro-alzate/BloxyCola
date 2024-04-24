local Instance
Instance = require("Instance").Instance
local Humanoid
do
  local _class_0
  local _parent_0 = Instance
  local _base_0 = { }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(properties)
      self.AutoJumpEnabled = type(properties.AutoJumpEnabled) == "boolean" and properties.AutoJumpEnabled or true
      self.AutoRotate = type(properties.AutoRotate) == "boolean" and properties.AutoRotate or true
      self.AutomaticScalingEnabled = type(properties.AutomaticScalingEnabled) == "boolean" and properties.AutomaticScalingEnabled or true
      self.BreakJointsOnDeath = type(properties.BreakJointsOnDeath) == "boolean" and properties.BreakJointsOnDeath or true
      self.CameraOffset = properties.CameraOffset or Vector3.new(0, 0, 0)
      self.DisplayDistanceType = properties.DisplayDistanceType or Enum.HumanoidDisplayDistanceType
      self.DisplayName = properties.DisplayName or "Guest" .. tostring(math.floor(math.random() * 1000))
      self.EvaluateStateMachine = type(properties.EvaluateStateMachine) == "boolean" and properties.EvaluateStateMachine or true
      self.FloorMaterial = properties.FloorMaterial or Enum.Material.Air
      self.Health = properties.Health or 100
      self.HealthDisplayDistance = properties.HealthDisplayDistance or 30
      self.HealthDisplayType = properties.HumanoidHealthDisplayType or Enum.HumanoidHealthDisplayType
      self.HipHeight = properties.HipHeight or 3
      self.Jump = properties.Jump or false
      self.JumpHeight = properties.JumpHeight or 72
      self.JumpPower = properties.JumpPower or 5
      self.MaxHealth = properties.MaxHealth or 100
      self.MaxSlopeAngle = properties.MaxSlopeAngle or 89
      self.MoveDirection = properties.MoveDirection or Vector3.new(0, 0, 0)
      self.NameDisplayDistance = properties.NameDisplayDistance
      self.NameOcclusion = properties.NameOcclusion or Enum.NameOcclusion
      self.PlatformStand = properties.PlatformStand or false
      self.RequiresNeck = type(properties.AutoRotate) == "boolean" and properties.AutoRotate or true
      self.RigType = properties.HumanoidRigType or Enum.HumanoidRigType
      self.RootPart = properties.RootPart or Part.new()
      self.SeatPart = properties.SeatPart or Part.new()
      self.Sit = properties.Sit or false
      self.TargetPoint = properties.TargetPoint or Vector3.new(0, 0, 0)
      self.UseJumpPower = type(properties.UseJumpPower) == "boolean" and properties.UseJumpPower or true
      self.WalkSpeed = properties.WalkSpeed or 16
      self.WalkToPart = properties.WalkToPart or false
      self.WalkToPoint = properties.WalkToPoint or false
    end,
    __base = _base_0,
    __name = "Humanoid",
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
  Humanoid = _class_0
  return _class_0
end
