require("math")

local num
repeat
	io.write("enter natural number: ")
	num = tonumber(io.read())
until num

local a = math.abs(num + 1) / 2
local b = math.abs(num - 1) / 2

print(a, b)

