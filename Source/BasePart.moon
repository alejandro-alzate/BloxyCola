import Vector3 from require "Vector"
import Enum from require "Enum"
import BrickColor from require "Color"
import CFrame from require "CFrame"
import PhysicalProperties from require "PhysicalProperties"
import Faces from require "Faces"
import Color3 from require "Color"

export BasePart
class BasePart
	new: (@Name, properties={}) ->
		@Anchored = properties.Anchored or false
		@AssemblyAngularVelocity = properties.AssemblyAngularVelocity or Vector3(0,0,0)
		@AssemblyCenterOfMass = properties.AssemblyCenterOfMass or Vector3(0,0,0)
		@AssemblyLinearVelocity = properties.AssemblyLinearVelocity or Vector3(0,0,0)
		@AssemblyMass = 1
		@AssemblyRootPart = false
		@BackSurface = properties.BackSurface or Enum.SurfaceType.Smooth
		@BottomSurface = properties.BottomSurface or Enum.SurfaceType.Smooth
		@BrickColor = properties.BrickColor or BrickColor("Bright red")
		@CFrame = properties.CFrame or CFrame(0,0,0)
		@CanCollide = type(properties.CanCollide) == "boolean" and properties.CanCollide or true
		@CanQuery = type(properties.CanQuery) == "boolean" and properties.CanQuery or true
		@CanTouch = type(properties.CanTouch) == "boolean" and properties.CanTouch or true
		@CastShadow = type(properties.CastShadow) == "boolean" and properties.CastShadow or true
		@CenterOfMass = properties.CenterOfMass or Vector3(0,0,0)
		@CollisionGroup = properties.CollisionGroup or "Default"
		@Color = properties.Color or Color3(1,1,1)
		@CurrentPhysicalProperties = properties.CurrentPhysicalProperties or PhysicalProperties()
		@CustomPhysicalProperties = properties.CustomPhysicalProperties or PhysicalProperties()
		@EnableFluidForces = type(properties.EnableFluidForces) == "boolean" and properties.EnableFluidForces or true
		@ExtentsCFrame = properties.ExtentsCFrame or CFrame(0,0,0)
		@ExtentsSize = properties.ExtentsSize or Vector3(0,0,0)
		@FrontSurface = properties.FrontSurface or Enum.SurfaceType.Smooth
		@LeftSurface = properties.LeftSurface or Enum.SurfaceType.Smooth
		@LocalTransparencyModifier = 0
		@Locked = properties.Locked or false
		@Mass = 1
		@Massless = properties.Massless or false
		@Material = properties.Material or Enum.Material.Plastic
		@MaterialVariant = properties.MaterialVariant or ""
		@Orientation = properties.Orientation or Vector3(0,0,0)
		@PivotOffset = properties.PivotOffset or CFrame(0,0,0)
		@Position = properties.Position or Vector3(0, 1, 0)
		@ReceiveAge = properties.ReceiveAge or 0
		@Reflectance = properties.Reflectance or 0
		@ResizeIncrement = properties.ResizeIncrement or 1
		@ResizableFaces = properties.ResizableFaces or Faces(Enum.NormalId.Front, Enum.NormalId.Left)
		@RightSurface = properties.RightSurface or Enum.SurfaceType.Smooth
		@RootPriority = properties.RootPriority or 0
		@Rotation = properties.Rotation or Vector3(0,0,0)
		@Size = properties.Size or Vector3(1, 1, 1)
		@TopSurface = properties.TopSurface or Enum.SurfaceType.Smooth
		@Transparency = properties.Transparency or 0
		@Type = "BasePart"
	GetRootPart: ->
		@AssemblyRootPart
