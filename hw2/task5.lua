local f = function()
	return print
end

local g = function(f, ...)
	return f(...)
end

local h = function(f)
	return function(...)
		f(...)
		f(...)
	end
end

local bind = function(f, ...)
	local args = {...}
	local length = #args
	return function(...)
		local answer = {...}
		for i, val in ipairs(args) do
			table.insert(answer, i, val)
		end
		return f(unpack(answer))
	end
end

return({f=f, g=g, h=h, bind=bind})

