local Enum
Enum = require("Enum").Enum
local Model
Model = require("Model").Model
local Camera
Camera = require("Camera").Camera
local Vector3
Vector3 = require("Vector").Vector3
local Terrain
Terrain = require("Terrain").Terrain
local Workspace
do
  local _class_0
  local _parent_0 = Model
  local _base_0 = { }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, ...)
      return _class_0.__parent.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Workspace",
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
  local self = _class_0
  self.AirDensity = 1
  self.AllowThirdPartySales = false
  self.AvatarUnificationMode = Enum.AvatarUnificationMode.Default
  self.CSGAsyncDynamicCollision = Enum.CSGAsyncDynamicCollision.Default
  self.CurrentCamera = Camera.new()
  self.DecreaseMinimumPartDensityMode = Enum.DecreaseMinimumPartDensityMode.Default
  self.DistributedGameTiem = 0
  self.EditorLiveScripting = Enum.EditorLiveScripting.Default
  self.FallenPartsDestroyHeight = -100
  self.FluidForces = Enum.FluidForces.Default
  self.Gravity = 1
  self.IKControlConstraintSupport = Enum.IKControlConstraintSupport.Default
  self.InsertPoint = Vector3.new(0, 0, 0)
  self.MeshPartHeadsAndAccessories = Enum.MeshPartHeadsAndAccessories.Default
  self.ModelStreamingBehavior = Enum.ModelStreamingBehavior.Default
  self.PhysicsSteppingMethod = Enum.PhysicsSteppingMethod.Default
  self.PlayerCharacterDestroyBehavior = Enum.PlayerCharacterDestroyBehavior.Default
  self.PrimalPhysicsSolver = Enum.PrimalPhysicsSolver.Default
  self.RejectCharacterDeletions = Enum.RejectCharacterDeletions.Default
  self.ReplicateInstanceDestroySetting = Enum.ReplicateInstanceDestroySetting.Default
  self.AnimatorRetargetingMode = Enum.AnimatorRetargetingMode.Default
  self.SignalBehavior = Enum.SignalBehavior.Default
  self.StreamOutBehavior = Enum.StreamOutBehavior.Default
  self.StreamingEnabled = true
  self.StreamingIntegrityMode = Enum.StreamingIntegrityMode.Default
  self.StreamingMinRadius = 100
  self.StreamingTargetRadius = 200
  self.Terrain = Terrain.new()
  self.TouchesUseCollisionGroups = true
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Workspace = _class_0
end
return {
  Workspace
}
