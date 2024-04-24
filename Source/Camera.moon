import Instance from require "Instance"
import Vector2, Vector3 from require "Vector"
import CFrame from require "CFrame"
import Enum from require "Enum"

class Camera extends Instance
	new: (properties) ->
		@CFrame = properties.CFrame or CFrame.new()
		@CameraSubject = properties.Instance or Instance.new()
		@CameraType = properties.CameraType or Enum.CameraType.Track
		@DiagonalFieldOfView = properties.DiagonalFieldOfView or 70
		@FieldOfView = properties.FieldOfView or 70
		@FieldOfViewMode = properties.FieldOfViewMode or Enum.FieldOfViewMode.Vertical
		@Focus = properties.Focus or CFrame.new()
		@HeadLocked = type(properties.HeadLocked) == "boolean" and properties.HeadLocked or true
		@HeadScale = properties.HeadScale or 1
		@MaxAxisFieldOfView = properties.MaxAxisFieldOfView or 70
		@NearPlaneZ = properties.NearPlaneZ or 0.5
		@VRTiltAndRollEnabled = properties.VRTiltAndRollEnabled or false
		@ViewportSize = properties.ViewportSize or Vector2(1280, 720)
	GetPartsObscuringTarget: (castPoints, ignoreList) ->
	GetRenderCFrame: () ->
	GetRoll: () ->
	ScreenPointToRay: (x, y, depth) ->
	SetRoll: (rollAngle) ->
	ViewportPointToRay: (x, y, depth) ->
	WorldToScreenPoint: (worldPoint) ->
	WorldToViewportPoint: (worldPoint) ->
	ZoomToExtents: (boundingBoxCFrame, boundingBoxSize) ->
	--Events
	InterpolationFinished: ->

return Camera