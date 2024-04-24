local Enum
Enum = require("Enum").Enum
local Team
Team = require("Team").Team
local Model
Model = require("Model").Model
local Instance
Instance = require("Instance").Instance
local BrickColor
BrickColor = require("BrickColor").BrickColor
local SpawnLocation
SpawnLocation = require("SpawnLocation").SpawnLocation
local Player
do
  local _class_0
  local _parent_0 = Instance
  local _base_0 = {
    ClearCharacterAppearance = function() end,
    DistanceFromCharacter = function(point) end,
    GetJoinData = function() end,
    GetMouse = function() end,
    GetNetworkPing = function() end,
    HasAppearanceLoaded = function() end,
    IsVerified = function() end,
    Kick = function(message) end,
    Move = function(walkDirection, relativeToCamera) end,
    SetAccountAge = function(accountAge) end,
    SetSuperSafeChat = function(value) end,
    GetFriendsOnline = function(maxFriends) end,
    GetRankInGroup = function(groupId) end,
    GetRoleInGroup = function(groupId) end,
    IsFriendsWith = function(userId) end,
    IsInGroup = function(groupId) end,
    LoadCharacter = function() end,
    LoadCharacterWithHumanoidDescription = function(humanoidDescription) end,
    RequestStreamAroundAsync = function(position, timeOut) end,
    CharacterAdded = function(character) end,
    CharacterAppearanceLoaded = function(character) end,
    CharacterRemoving = function(character) end,
    Chatted = function(message, recipient) end,
    Idled = function(time) end,
    OnTeleport = function(teleportState, placeId, spawnName) end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(properties)
      if properties == nil then
        properties = { }
      end
      self.AccountAge = properties.AccountAge or 0
      self.AutoJumpEnabled = type(properties.AutoJumpEnabled) == "boolean" and properties.AutoJumpEnabled or true
      self.CameraMinZoomDistance = properties.CameraMinZoomDistance or 1
      self.CameraMode = properties.CameraMode or Enum.CameraMode.Classic
      self.CanLoadCharacterAppearance = type(properties.CanLoadCharacterAppearance) == "boolean" and properties.CanLoadCharacterAppearance or true
      self.Character = properties.Character or Model.new()
      self.CharacterAppearanceId = properties.CharacterAppearanceId or 0
      self.DevCameraOcclusionMode = properties.DevCameraOcclusionMode or Enum.DevCameraOcclusionMode.Zoom
      self.DevComputerCameraMovementMode = properties.DevComputerCameraMovementMode or Enum.DevComputerCameraMovementMode.UserChoice
      self.DevComputerMovementMode = properties.DevComputerMovementMode or Enum.DevComputerMovementMode.UserChoice
      self.DevEnableMouseLock = true
      self.DevTouchCameraMode = properties.DevTouchCameraMode or Enum.DevTouchCameraMovementMode.UserChoice
      self.DevTouchMovementMode = properties.DevTouchMovementMode or Enum.DevTouchMovementMode.UserChoice
      self.DisplayName = properties.DisplayName or "Guest" .. tostring(math.floor(math.random() * 1000))
      self.FollowUserId = properties.FollowUserId or false
      self.HasVerifiedBadge = properties.HasVerifiedBadge or false
      self.HealthDisplayDistance = properties.HealthDisplayDistance or 30
      self.LocaleId = properties.LocaleId or "english"
      self.MembershipType = properties.MembershipType or Enum.MembershipType.None
      self.NameDisplayDistance = properties.NameDisplayDistance or 30
      self.Neutral = type(properties.Neutral) == "boolean" and properties.Neutral or true
      self.ReplicationFocus = properties.ReplicationFocus or false
      self.RespawnLocation = properties.SpawnLocation or SpawnLocation.new()
      self.Team = properties.Team or Team
      self.TeamColor = properties.BrickColor or BrickColor.new("White")
      self.UserId = properties.UserId or 0
    end,
    __base = _base_0,
    __name = "Player",
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
  Player = _class_0
end
return {
  Enum
}
