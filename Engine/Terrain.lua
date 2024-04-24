local BasePart
BasePart = require("BasePart").BasePart
local Color3
Color3 = require("Color").Color3
local Region3int16
Region3int16 = require("Region").Region3int16
local PVInstance
PVInstance = require("PVInstance").PVInstance
local TerrainRegion
do
  local _class_0
  local _base_0 = { }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "TerrainRegion"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  TerrainRegion = _class_0
end
local _ = (function()
  local Terrain
  do
    local _class_0
    local _parent_0 = BasePart
    local _base_0 = { }
    _base_0.__index = _base_0
    setmetatable(_base_0, _parent_0.__base)
    _class_0 = setmetatable({
      __init = function(self, ...)
        return _class_0.__parent.__init(self, ...)
      end,
      __base = _base_0,
      __name = "Terrain",
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
    Terrain = _class_0
    return _class_0
  end
end)(), PVInstance({
  new = function()
    self.Decoration = true
    self.GrassLength = 1
    self.MaterialColors = ""
    self.MaxExtents = Region3int16.new(32768, 32768, 32768)
    self.WaterColor = Color3.new(1, 1, 1)
    self.WaterReflectance = 0.5
    self.WaterTransparency = 0.5
    self.WaterWaveSize = 0.5
    self.WaterWaveSpeed = 0.5
  end,
  CellCenterToWorld = function(x, y, z) end,
  CellCornerToWorld = function(x, y, z) end,
  Clear = function() end,
  CopyRegion = function(region) end,
  CountCells = function() end,
  FillBall = function(center, radius, material) end,
  FillBlock = function(cframe, size, material) end,
  FillCylinder = function(cframe, height, radius, material) end,
  FillRegion = function(region, resolution, material) end,
  FillWedge = function(cframe, size, material) end,
  GetMaterialColor = function(material) end,
  PasteRegion = function(region, cornerint16, pasteEmptyCells) end,
  ReadVoxelChannels = function(region, resolution, channelIds) end,
  ReadVoxels = function(region, resolution) end,
  ReplaceMaterial = function(region, resolution, sourceMaterial, targetMaterial) end,
  SetMaterialColor = function(material, value) end,
  WorldToCell = function(position) end,
  WorldToCellPreferEmpty = function(position) end,
  WorldToCellPreferSolid = function(position) end,
  WriteVoxelChannels = function(region, resolution, channels) end,
  WriteVoxels = function(region, resolution, materials, occupancy) end
})
return {
  Terrain
}
