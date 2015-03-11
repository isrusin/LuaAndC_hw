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
	args = {...}
	length = #args
	return function(...)
		for i, arg in ipairs({...}) do
			args[length+i] = arg
		end
		return f(unpack(args))
	end
end

return({f=f, g=g, h=h, bind=bind})

