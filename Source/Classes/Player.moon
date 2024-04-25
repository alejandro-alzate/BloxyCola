import Enum from require "Enum"
import Team from require "Team"
import Model from require "Model"
import Instance from require "Instance"
import BrickColor from require "BrickColor"
import SpawnLocation from require "SpawnLocation"

class Player extends Instance
	new: (properties={}) ->
		@AccountAge = properties.AccountAge or 0
		@AutoJumpEnabled = type(properties.AutoJumpEnabled) == "boolean" and properties.AutoJumpEnabled or true
		@CameraMinZoomDistance = properties.CameraMinZoomDistance or 1
		@CameraMode = properties.CameraMode or Enum.CameraMode.Classic
		@CanLoadCharacterAppearance = type(properties.CanLoadCharacterAppearance) == "boolean" and properties.CanLoadCharacterAppearance or true
		@Character = properties.Character or Model.new()
		@CharacterAppearanceId = properties.CharacterAppearanceId or 0
		@DevCameraOcclusionMode = properties.DevCameraOcclusionMode or Enum.DevCameraOcclusionMode.Zoom
		@DevComputerCameraMovementMode = properties.DevComputerCameraMovementMode or Enum.DevComputerCameraMovementMode.UserChoice
		@DevComputerMovementMode = properties.DevComputerMovementMode or Enum.DevComputerMovementMode.UserChoice
		@DevEnableMouseLock = true
		@DevTouchCameraMode = properties.DevTouchCameraMode or Enum.DevTouchCameraMovementMode.UserChoice
		@DevTouchMovementMode = properties.DevTouchMovementMode or Enum.DevTouchMovementMode.UserChoice
		@DisplayName = properties.DisplayName or "Guest#{math.floor(math.random()*1000)}"
		@FollowUserId = properties.FollowUserId or false
		@HasVerifiedBadge = properties.HasVerifiedBadge or false
		@HealthDisplayDistance = properties.HealthDisplayDistance or 30
		@LocaleId = properties.LocaleId or "english"
		@MembershipType = properties.MembershipType or Enum.MembershipType.None
		@NameDisplayDistance = properties.NameDisplayDistance or 30
		@Neutral = type(properties.Neutral) == "boolean" and properties.Neutral or true
		@ReplicationFocus = properties.ReplicationFocus or false
		@RespawnLocation = properties.SpawnLocation or SpawnLocation.new()
		@Team = properties.Team or Team
		@TeamColor = properties.BrickColor or BrickColor.new("White")
		@UserId = properties.UserId or 0
	ClearCharacterAppearance: () ->
    DistanceFromCharacter: (point) ->
    GetJoinData: () ->
    GetMouse: () ->
    GetNetworkPing: () ->
    HasAppearanceLoaded: () ->
    IsVerified: () ->
    Kick: (message) ->
    Move: (walkDirection,relativeToCamera) ->
    SetAccountAge: (accountAge) ->
    SetSuperSafeChat: (value) ->
    GetFriendsOnline: (maxFriends) ->
    GetRankInGroup: (groupId) ->
    GetRoleInGroup: (groupId) ->
    IsFriendsWith: (userId) ->
    IsInGroup: (groupId) ->
    LoadCharacter: () ->
    LoadCharacterWithHumanoidDescription: (humanoidDescription) ->
    RequestStreamAroundAsync: (position,timeOut) ->
	--Events
    CharacterAdded: (character) ->
    CharacterAppearanceLoaded: (character) ->
    CharacterRemoving: (character) ->
    Chatted: (message,recipient) ->
    Idled: (time) ->
    OnTeleport: (teleportState,placeId,spawnName) ->

return { Enum }