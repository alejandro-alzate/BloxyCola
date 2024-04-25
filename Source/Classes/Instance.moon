class Instance
	new: (@Name="", properties={}) ->
		@Archivable = type(properties.Archivable) == "boolean" and properties.Archivable or true
		@ClassName = properties.ClassName or "Instance"
		@Parent = properties.Parent or false
		@SandBoxed = properties.SandBoxed or false
		@UniqueId = 0
	AddTag: =>
	ClearAllChildren: =>
	Clone: =>
	Destroy: =>
	FindFirstAncestor: (name) =>
	FindFirstAncestorWichIsA: (className) =>
	FindFirstChild: (name, recursive=false) =>
	FindFirstChildOfClass: (className) =>
	FindFirstChildWichIsA: (className, recursive=false) =>
	FindFirstDecendant: (name) =>
	GetActor: =>
	GetAttribute: (attribute) =>
	GetAttributeChangedSignal: (attribute) =>
	GetAttributes: =>
	GetChildren: =>
	GetDebugId: (scopeLength=4) =>
	GetDescendants: =>
	GetFullName: =>
	GetPropertyChangedSignal: (property) =>
	GetTags: =>
	HasTag: (tag) =>
	IsA: (className) =>
	IsAncestorOf: (descendant) =>
	IsDecendantOf: (ancestor) =>
	RemoveTag: (tag) =>
	SetAttribute: (attribute, value) =>
	WaitForChild: (childName, timeout) =>
	--Events
	AncestryChanged: (child, parent) =>
	AttributeChanged: (attribute) =>
	ChildAdded: (child) =>
	ChildRemoved: (child) =>
	DescendantAdded: (descendant) =>
	DescendantRemoving: (descendant) =>
	Destroying: =>

return { Instance }