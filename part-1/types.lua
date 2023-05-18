#!/usr/bin/env lua

print(type('Hello World'))
print(type(10.4*3))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
---@diagnostic disable-next-line: undefined-global
print(type(type(x)))

local page = [[
	<HTML>
	<HEAD>
	<TITLE>An HTML Page</TITLE>
	</HEAD>
	<BODY>
		<A HREF='http://lua.org'>Lua</A>
		'a text between double brackets'
	</BODY>
	</HTML>
]]

print(page)

print('10' + 1)
print('10 + 1')
print('-5.3e-10'*'2')
--[[
This is a no no:
print('hello' + 1)
]]--

local line = io.read()
local n = tonumber(line)
if n == nil then
	error(line .. ' is not a valid number')
else
	print(n*2)
end

print(tostring(10) == '10')
print(10 .. '' == '10')
