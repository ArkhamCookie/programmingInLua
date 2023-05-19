#!/usr/bin/env lua

local currentColor = {1, 1, 1, 1}

love.draw = function()

end

love.keypressed = function (pressedKey)
	if pressedKey == 'b' then
		currentColor = {0, 0, 1, 1} --Blue
	end
end
