#!/usr/bin/env lua

print(1+1)
print(10-8)
print(1*2)
print(8/4)

print(8 > 6)
print(8 < 6)
print(8 >= 8)
print(8 <= 10)
print(8 == 8)
print(8 ~= 8)

print('logan' == 'logan')
print('0' == 0) --> false
print('2' < '15') --> false
--[[
mixing strings w/ numbers causes an error
print('2' < 4) --false
]]--

print(4 and 5) --> 5
print(nil and 13) --> nil
print(false and 13) --> false
print(4 or 5) --> 4
print(false or 5) --> 5

---@diagnostic disable-next-line: lowercase-global, undefined-global
local x = x or v -- if not x then x = v end -- x's default value = v when x = nil

print(not nil) --> true
print(not false) --> true
print(not 0) --> false
print(not not nil) --> false

print('Hello' .. ' World') --> Hello World
print(0 .. 1) --> 01

local a = 'Hello'
print(a .. ' World')
print(a)
