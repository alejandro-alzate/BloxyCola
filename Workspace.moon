import Enum from require "Enum"
import Model from require "Model"
import Camera from require "Camera"
import Vector3 from require "Vector"
import Terrain from require "Terrain"

class Workspace extends Model
	@AirDensity: 1
	@AllowThirdPartySales: false
	@AvatarUnificationMode: Enum.AvatarUnificationMode.Default
	@CSGAsyncDynamicCollision: Enum.CSGAsyncDynamicCollision.Default
	@CurrentCamera: Camera.new()
	@DecreaseMinimumPartDensityMode: Enum.DecreaseMinimumPartDensityMode.Default
	@DistributedGameTiem: 0
	@EditorLiveScripting: Enum.EditorLiveScripting.Default
	@FallenPartsDestroyHeight: -100
	@FluidForces: Enum.FluidForces.Default
	@Gravity: 1
	@IKControlConstraintSupport: Enum.IKControlConstraintSupport.Default
	@InsertPoint: Vector3.new(0,0,0)
	@MeshPartHeadsAndAccessories: Enum.MeshPartHeadsAndAccessories.Default
	@ModelStreamingBehavior: Enum.ModelStreamingBehavior.Default
	@PhysicsSteppingMethod: Enum.PhysicsSteppingMethod.Default
	@PlayerCharacterDestroyBehavior: Enum.PlayerCharacterDestroyBehavior.Default
	@PrimalPhysicsSolver: Enum.PrimalPhysicsSolver.Default
	@RejectCharacterDeletions: Enum.RejectCharacterDeletions.Default
	@ReplicateInstanceDestroySetting: Enum.ReplicateInstanceDestroySetting.Default
	@AnimatorRetargetingMode: Enum.AnimatorRetargetingMode.Default
	@SignalBehavior: Enum.SignalBehavior.Default
	@StreamOutBehavior: Enum.StreamOutBehavior.Default
	@StreamingEnabled: true
	@StreamingIntegrityMode: Enum.StreamingIntegrityMode.Default
	@StreamingMinRadius: 100
	@StreamingTargetRadius: 200
	@Terrain: Terrain.new()
	@TouchesUseCollisionGroups: true

return { Workspace }