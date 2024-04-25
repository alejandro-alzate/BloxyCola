class Vector2
	--TODO:
class Vector3
	--Initialization
	new: (@X=0, @Y=0, @Z=0) =>
		@magnitude = math.sqrt(@X^2 + @Y^2 + @Z^2)
		self

	--Access
	Unpack: =>
		@X, @Y, @Z

	--Arithmetic
	Clone: =>
		newClone = {}
		for k,v in pairs(self)
			newClone[k] = v
		newClone

	Unit: =>
		Vector3(@X / @magnitude, @Y / @magnitude, @Z / @magnitude)

	Dot: (otherVector) =>
		if type(otherVector) == "table"
			if not otherVector.__class == "Vector3"
				error "Dot product can only be calculated with another Vector3"
		@X * otherVector.X + @Y * otherVector.Y + @Z otherVector.Z

	Cross: (otherVector) =>
		if type(otherVector) == "table"
			if not otherVector.__class == "Vector3"
				error "Cross product can only be calculated with another Vector3"
		newX = @Y * otherVector.Z - @Z * otherVector.Y
		newY = @Z * otherVector.X - @X * otherVector.Z
		newZ = @X * otherVector.Y - @Y * otherVector.X
		Vector3(newX, newY, newZ)

	LinearLerp: (goalVector, alpha=0) =>
		if not goalVector.__class == "Vector3"
			error "Linear interpolation can only be calculated with another Vector3"
		newX = @X + (goalVector.X - @X) * alpha
		newY = @Y + (goalVector.Y - @Y) * alpha
		newZ = @Z + (goalVector.Z - @Z) * alpha
		Vector3(newX, newY, newZ)

	CubicLerp: (goalVector, alpha) =>
		if not goalVector.__class == "Vector3"
			error "Cubic interpolation can only be calculated with another Vector3"
		alpha2 = alpha * alpha
		alpha3 = alpha2 * alpha
		newX = @X + (goalVector.X - @X) * alpha3
		newY = @Y + (goalVector.Y - @Y) * alpha3
		newZ = @Z + (goalVector.Z - @Z) * alpha3
		Vector3(newX, newY, newZ)

	Distance: (otherVector) =>
		if type(otherVector) == "table"
			if not otherVector.__class == "Vector3"
				error "Distance can only be calculated with another Vector3"
		dx = @X - otherVector.X
		dy = @Y - otherVector.Y
		dz = @Z - otherVector.Z
		math.sqrt(dx^2 + dy^2 + dz^2)

	ProjectOn: (otherVector) =>
		if type(otherVector) == "table"
			if not otherVector.__class == "Vector3"
				error "Projection can only be calculated with another Vector3"
		otherUnit = otherVector\unit()
		dotProduct = self\Dot(otherUnit)
		return otherUnit * dotProduct

	--Meta methods
	--__index: (tbl, key) =>
	__newindex: (tbl, key, val) =>
		if type(val) == "number"
			if key == "X"
				@X = val
			if key == "Y"
				@Y = val
			if key == "Z"
				@Z = val
			@magnitude = math.sqrt(@X^2 + @Y^2 + @Z^2)

	__tostring: =>
		"Vector3: {X: #{@X} Y: #{@Y} Z: #{@Z}}"

	--__metatable: =>
	-- --__call: =>
	__add: (a, b) =>
		if type(a) == "number"
			return Vector3(@X + a, @Y + a, @Z + a)
		elseif type(b) == "number"
			return Vector3(a.X + b, a.Y + b, a.Z + b)
		else
			return Vector3(@X + b.X, @Y + b.Y, @Z + b.Z)

	__sub: (a, b) =>
	__mul: (a, b) =>
		if type(a) == "number"
			return Vector3(@X * a, @Y * a, @Z * a)
		elseif type(b) == "number"
			return Vector3(a.X * b, a.Y * b, a.Z * b)
		else
			return self\Dot(a)
	__div: (a, b) =>
		if type(a) == "number"
			return Vector3(@X / a, @Y / a, @Z / a)

	__mod: (a, b) =>
		if type(a) == "number"
			return Vector3(@X % a, @Y % a, @Z % a)
		else if type(b) == "number"
			return Vector3(a.X % b, a.Y % b, a.Z % b)
		else
			error "Modulus operation not supported between two Vector3 instances"

	__pow: (a, b) =>
		if type(a) == "number"
			return Vector3(@X ^ a, @Y ^ a, @Z ^ a)
		else
			error "Exponentiation operation not supported for Vector3"

	__unm: (a, b) =>
		return Vector3(-@X, -@Y, -@Z)

	__concat: (a, b) =>
		return tostring(a) .. tostring(b)

	__eq: (a, b) =>
		return @X == b.X and @Y == b.Y and @Z == b.Z

	__lt: (a, b) =>
		return @magnitude < b.magnitude

	__le: (a, b) =>
		return @magnitude <= b.magnitude

	__len: => 3
	__ipairs: (a, b) =>
		return ipairs {@X, @Y, @Z}

	__pairs: (a, b) =>
		return pairs {@X, @Y, @Z}
	--__gc: (a, b) =>
	--__mode: (a, b) =>


Vector3, Vector2