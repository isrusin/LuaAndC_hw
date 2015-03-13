local num1
while true do
	io.write("enter first natural number: ")
	num1 = tonumber(io.read())
	if num1 and num1 % 1 == 0 and num1 > 0 then
		break
	end
end

local num2
while true do
	io.write("enter second natural number: ")
	num2 = tonumber(io.read())
	if num2 and num2%1 == 0 and num2 > 0 then
		break
	end
end

if num1 > num2 then
	num1, num2 = num2, num1
end

local diff = num2 - num1
local answer = 5 * math.modf(diff / 10)
local lasts = {0, 1, 4, 9, 6, 5, 6, 9, 4, 1}
local start = num1 % 10
local stop = num2 % 10
while start ~= stop do
	answer = answer + lasts[start+1]
	start = (start + 1) % 10
end
answer = answer + lasts[stop+1]
print(answer % 10)

