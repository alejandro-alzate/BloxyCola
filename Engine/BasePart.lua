local BasePart
do
  local _class_0
  local _base_0 = {
    GetRootPart = function()
      return self.AssemblyRootPart
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(Name, properties)
      if properties == nil then
        properties = { }
      end
      self.Name = Name
      self.Anchored = properties.Anchored or false
      self.AssemblyAngularVelocity = properties.AssemblyAngularVelocity or Vector3(0, 0, 0)
      self.AssemblyCenterOfMass = properties.AssemblyCenterOfMass or Vector3(0, 0, 0)
      self.AssemblyLinearVelocity = properties.AssemblyLinearVelocity or Vector3(0, 0, 0)
      self.AssemblyMass = 1
      self.AssemblyRootPart = false
      self.BackSurface = properties.BackSurface or Enum.SurfaceType.Smooth
      self.BottomSurface = properties.BottomSurface or Enum.SurfaceType.Smooth
      self.BrickColor = properties.BrickColor or BrickColor("Bright red")
      self.CFrame = properties.CFrame or CFrame(0, 0, 0)
      self.CanCollide = type(properties.CanCollide) == "boolean" and properties.CanCollide or true
      self.CanQuery = type(properties.CanQuery) == "boolean" and properties.CanQuery or true
      self.CanTouch = type(properties.CanTouch) == "boolean" and properties.CanTouch or true
      self.CastShadow = type(properties.CastShadow) == "boolean" and properties.CastShadow or true
      self.CenterOfMass = properties.CenterOfMass or Vector3(0, 0, 0)
      self.CollisionGroup = properties.CollisionGroup or "Default"
      self.Color = properties.Color or Color3(1, 1, 1)
      self.CurrentPhysicalProperties = properties.CurrentPhysicalProperties or PhysicalProperties()
      self.CustomPhysicalProperties = properties.CustomPhysicalProperties or PhysicalProperties()
      self.EnableFluidForces = type(properties.EnableFluidForces) == "boolean" and properties.EnableFluidForces or true
      self.ExtentsCFrame = properties.ExtentsCFrame or CFrame(0, 0, 0)
      self.ExtentsSize = properties.ExtentsSize or Vector3(0, 0, 0)
      self.FrontSurface = properties.FrontSurface or Enum.SurfaceType.Smooth
      self.LeftSurface = properties.LeftSurface or Enum.SurfaceType.Smooth
      self.LocalTransparencyModifier = 0
      self.Locked = properties.Locked or false
      self.Mass = 1
      self.Massless = properties.Massless or false
      self.Material = properties.Material or Enum.Material.Plastic
      self.MaterialVariant = properties.MaterialVariant or ""
      self.Orientation = properties.Orientation or Vector3(0, 0, 0)
      self.PivotOffset = properties.PivotOffset or CFrame(0, 0, 0)
      self.Position = properties.Position or Vector3(0, 1, 0)
      self.ReceiveAge = properties.ReceiveAge or 0
      self.Reflectance = properties.Reflectance or 0
      self.ResizeIncrement = properties.ResizeIncrement or 1
      self.ResizableFaces = properties.ResizableFaces or Faces(Enum.NormalId.Front, Enum.NormalId.Left)
      self.RightSurface = properties.RightSurface or Enum.SurfaceType.Smooth
      self.RootPriority = properties.RootPriority or 0
      self.Rotation = properties.Rotation or Vector3(0, 0, 0)
      self.Size = properties.Size or Vector3(1, 1, 1)
      self.TopSurface = properties.TopSurface or Enum.SurfaceType.Smooth
      self.Transparency = properties.Transparency or 0
      self.Type = "BasePart"
    end,
    __base = _base_0,
    __name = "BasePart"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  BasePart = _class_0
end
return {
  BasePart
}
