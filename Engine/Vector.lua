local Vector3
do
  local _class_0
  local _base_0 = {
    Unpack = function(self)
      return self.X, self.Y, self.Z
    end,
    Clone = function(self)
      local newClone = { }
      for k, v in pairs(self) do
        newClone[k] = v
      end
      return newClone
    end,
    Unit = function(self)
      return Vector3(self.X / self.magnitude, self.Y / self.magnitude, self.Z / self.magnitude)
    end,
    Dot = function(self, otherVector)
      if type(otherVector) == "table" then
        if not otherVector.__class == "Vector3" then
          error("Dot product can only be calculated with another Vector3")
        end
      end
      return self.X * otherVector.X + self.Y * otherVector.Y + self:Z(otherVector.Z)
    end,
    Cross = function(self, otherVector)
      if type(otherVector) == "table" then
        if not otherVector.__class == "Vector3" then
          error("Cross product can only be calculated with another Vector3")
        end
      end
      local newX = self.Y * otherVector.Z - self.Z * otherVector.Y
      local newY = self.Z * otherVector.X - self.X * otherVector.Z
      local newZ = self.X * otherVector.Y - self.Y * otherVector.X
      return Vector3(newX, newY, newZ)
    end,
    LinearLerp = function(self, goalVector, alpha)
      if alpha == nil then
        alpha = 0
      end
      if not goalVector.__class == "Vector3" then
        error("Linear interpolation can only be calculated with another Vector3")
      end
      local newX = self.X + (goalVector.X - self.X) * alpha
      local newY = self.Y + (goalVector.Y - self.Y) * alpha
      local newZ = self.Z + (goalVector.Z - self.Z) * alpha
      return Vector3(newX, newY, newZ)
    end,
    CubicLerp = function(self, goalVector, alpha)
      if not goalVector.__class == "Vector3" then
        error("Cubic interpolation can only be calculated with another Vector3")
      end
      local alpha2 = alpha * alpha
      local alpha3 = alpha2 * alpha
      local newX = self.X + (goalVector.X - self.X) * alpha3
      local newY = self.Y + (goalVector.Y - self.Y) * alpha3
      local newZ = self.Z + (goalVector.Z - self.Z) * alpha3
      return Vector3(newX, newY, newZ)
    end,
    Distance = function(self, otherVector)
      if type(otherVector) == "table" then
        if not otherVector.__class == "Vector3" then
          error("Distance can only be calculated with another Vector3")
        end
      end
      local dx = self.X - otherVector.X
      local dy = self.Y - otherVector.Y
      local dz = self.Z - otherVector.Z
      return math.sqrt(dx ^ 2 + dy ^ 2 + dz ^ 2)
    end,
    ProjectOn = function(self, otherVector)
      if type(otherVector) == "table" then
        if not otherVector.__class == "Vector3" then
          error("Projection can only be calculated with another Vector3")
        end
      end
      local otherUnit = {
        otherVector = unit()
      }
      local dotProduct = {
        self = Dot(otherUnit)
      }
      return otherUnit * dotProduct
    end,
    __newindex = function(self, tbl, key, val)
      if type(val) == "number" then
        if key == "X" then
          self.X = val
        end
        if key == "Y" then
          self.Y = val
        end
        if key == "Z" then
          self.Z = val
        end
        self.magnitude = math.sqrt(self.X ^ 2 + self.Y ^ 2 + self.Z ^ 2)
      end
    end,
    __tostring = function(self)
      return "Vector3: {X: " .. tostring(self.X) .. " Y: " .. tostring(self.Y) .. " Z: " .. tostring(self.Z) .. "}"
    end,
    __add = function(self, a, b)
      if type(a) == "number" then
        return Vector3(self.X + a, self.Y + a, self.Z + a)
      elseif type(b) == "number" then
        return Vector3(a.X + b, a.Y + b, a.Z + b)
      else
        return Vector3(self.X + b.X, self.Y + b.Y, self.Z + b.Z)
      end
    end,
    __sub = function(self, a, b) end,
    __mul = function(self, a, b)
      if type(a) == "number" then
        return Vector3(self.X * a, self.Y * a, self.Z * a)
      elseif type(b) == "number" then
        return Vector3(a.X * b, a.Y * b, a.Z * b)
      else
        return {
          self = Dot(a)
        }
      end
    end,
    __div = function(self, a, b)
      if type(a) == "number" then
        return Vector3(self.X / a, self.Y / a, self.Z / a)
      end
    end,
    __mod = function(self, a, b)
      if type(a) == "number" then
        return Vector3(self.X % a, self.Y % a, self.Z % a)
      else
        if type(b) == "number" then
          return Vector3(a.X % b, a.Y % b, a.Z % b)
        else
          return error("Modulus operation not supported between two Vector3 instances")
        end
      end
    end,
    __pow = function(self, a, b)
      if type(a) == "number" then
        return Vector3(self.X ^ a, self.Y ^ a, self.Z ^ a)
      else
        return error("Exponentiation operation not supported for Vector3")
      end
    end,
    __unm = function(self, a, b)
      return Vector3(-self.X, -self.Y, -self.Z)
    end,
    __concat = function(self, a, b)
      return tostring(a) .. tostring(b)
    end,
    __eq = function(self, a, b)
      return self.X == b.X and self.Y == b.Y and self.Z == b.Z
    end,
    __lt = function(self, a, b)
      return self.magnitude < b.magnitude
    end,
    __le = function(self, a, b)
      return self.magnitude <= b.magnitude
    end,
    __len = function(self)
      return 3
    end,
    __ipairs = function(self, a, b)
      return ipairs({
        self.X,
        self.Y,
        self.Z
      })
    end,
    __pairs = function(self, a, b)
      return pairs({
        self.X,
        self.Y,
        self.Z
      })
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, X, Y, Z)
      if X == nil then
        X = 0
      end
      if Y == nil then
        Y = 0
      end
      if Z == nil then
        Z = 0
      end
      self.X, self.Y, self.Z = X, Y, Z
      self.magnitude = math.sqrt(self.X ^ 2 + self.Y ^ 2 + self.Z ^ 2)
      return self
    end,
    __base = _base_0,
    __name = "Vector3"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Vector3 = _class_0
end
return {
  Vector3,
  Vector2
}
