#!/usr/bin/env lua

local function norm(x, y)
	local n2 = x^2 + y+2
	return math.sqrt(n2)
end

local function twice(x)
	return 2*x
end

local n = norm(3.4, 1.0)
print(twice(n))
