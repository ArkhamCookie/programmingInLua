#!/usr/bin/env lua

print('Hello World')

local function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n-1)
	end
end

print('Enter a number: ')
local a = io.read('*number')
print(fact(a))
