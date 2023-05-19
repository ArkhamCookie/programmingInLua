#!/usr/bin/env lua

--[[
love.draw = function ()
	local rectangle = { 100, 100, 100, 200, 200, 200, 200, 100}
	love.graphics.polygon('line', rectangle)
end
]]--

love.draw = function ()
	-- (+2,+0 : +1,+1.5 : -1.5,+1.5, -1.5,-1.5)*10
	local rectangle = { 40,10, 10,60, 60,110, 110,60, 80,10 }
	love.graphics.polygon('fill', rectangle)

	-- ((5,0 : 0,10 : 10,10)*10)+200
	local triangle = { 250, 200, 200,300, 300,300 }
	love.graphics.polygon('line', triangle)

	-- ((0,0 : 0,10 : 10,5)*10)+400
	local leftBow = { 400,400, 400,500, 500,450 }
	love.graphics.polygon('line', leftBow)

	local rightBow = { }
	love.graphics.polygon('line', rightBow)
end
