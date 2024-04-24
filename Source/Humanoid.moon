import Instance from require "Instance"

class Humanoid extends Instance
	new: (properties) ->
		@AutoJumpEnabled = type(properties.AutoJumpEnabled) == "boolean" and properties.AutoJumpEnabled or true
		@AutoRotate = type(properties.AutoRotate) == "boolean" and properties.AutoRotate or true
		@AutomaticScalingEnabled = type(properties.AutomaticScalingEnabled) == "boolean" and properties.AutomaticScalingEnabled or true
		@BreakJointsOnDeath = type(properties.BreakJointsOnDeath) == "boolean" and properties.BreakJointsOnDeath or true
		@CameraOffset = properties.CameraOffset or Vector3.new(0,0,0)
		@DisplayDistanceType = properties.DisplayDistanceType or Enum.HumanoidDisplayDistanceType
		@DisplayName = properties.DisplayName or "Guest#{math.floor(math.random()*1000)}"
		@EvaluateStateMachine = type(properties.EvaluateStateMachine) == "boolean" and properties.EvaluateStateMachine or true
		@FloorMaterial = properties.FloorMaterial or Enum.Material.Air
		@Health = properties.Health or 100
		@HealthDisplayDistance = properties.HealthDisplayDistance or 30
		@HealthDisplayType = properties.HumanoidHealthDisplayType or Enum.HumanoidHealthDisplayType
		@HipHeight = properties.HipHeight or 3
		@Jump = properties.Jump or false
		@JumpHeight = properties.JumpHeight or 72
		@JumpPower = properties.JumpPower or 5
		@MaxHealth = properties.MaxHealth or 100
		@MaxSlopeAngle = properties.MaxSlopeAngle or 89
		@MoveDirection = properties.MoveDirection or Vector3.new(0,0,0)
		@NameDisplayDistance = properties.NameDisplayDistance
		@NameOcclusion = properties.NameOcclusion or Enum.NameOcclusion
		@PlatformStand = properties.PlatformStand or false
		@RequiresNeck = type(properties.AutoRotate) == "boolean" and properties.AutoRotate or true
		@RigType = properties.HumanoidRigType or Enum.HumanoidRigType
		@RootPart = properties.RootPart or Part.new()
		@SeatPart = properties.SeatPart or Part.new()
		@Sit = properties.Sit or false
		@TargetPoint = properties.TargetPoint or Vector3.new(0,0,0)
		@UseJumpPower = type(properties.UseJumpPower) == "boolean" and properties.UseJumpPower or true
		@WalkSpeed = properties.WalkSpeed or 16
		@WalkToPart = properties.WalkToPart or false
		@WalkToPoint = properties.WalkToPoint or false


