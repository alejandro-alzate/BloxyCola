local Instance
do
  local _class_0
  local _base_0 = {
    AddTag = function(self) end,
    ClearAllChildren = function(self) end,
    Clone = function(self) end,
    Destroy = function(self) end,
    FindFirstAncestor = function(self, name) end,
    FindFirstAncestorWichIsA = function(self, className) end,
    FindFirstChild = function(self, name, recursive)
      if recursive == nil then
        recursive = false
      end
    end,
    FindFirstChildOfClass = function(self, className) end,
    FindFirstChildWichIsA = function(self, className, recursive)
      if recursive == nil then
        recursive = false
      end
    end,
    FindFirstDecendant = function(self, name) end,
    GetActor = function(self) end,
    GetAttribute = function(self, attribute) end,
    GetAttributeChangedSignal = function(self, attribute) end,
    GetAttributes = function(self) end,
    GetChildren = function(self) end,
    GetDebugId = function(self, scopeLength)
      if scopeLength == nil then
        scopeLength = 4
      end
    end,
    GetDescendants = function(self) end,
    GetFullName = function(self) end,
    GetPropertyChangedSignal = function(self, property) end,
    GetTags = function(self) end,
    HasTag = function(self, tag) end,
    IsA = function(self, className) end,
    IsAncestorOf = function(self, descendant) end,
    IsDecendantOf = function(self, ancestor) end,
    RemoveTag = function(self, tag) end,
    SetAttribute = function(self, attribute, value) end,
    WaitForChild = function(self, childName, timeout) end,
    AncestryChanged = function(self, child, parent) end,
    AttributeChanged = function(self, attribute) end,
    ChildAdded = function(self, child) end,
    ChildRemoved = function(self, child) end,
    DescendantAdded = function(self, descendant) end,
    DescendantRemoving = function(self, descendant) end,
    Destroying = function(self) end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(Name, properties)
      if Name == nil then
        Name = ""
      end
      if properties == nil then
        properties = { }
      end
      self.Name = Name
      self.Archivable = type(properties.Archivable) == "boolean" and properties.Archivable or true
      self.ClassName = properties.ClassName or "Instance"
      self.Parent = properties.Parent or false
      self.SandBoxed = properties.SandBoxed or false
      self.UniqueId = 0
    end,
    __base = _base_0,
    __name = "Instance"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Instance = _class_0
end
return {
  Instance
}
