local num
while true do
	io.write("enter a natural number: ")
	num = tonumber(io.read())
	if num and num % 1 == 0 and num > 0 then
		break
	end
end

if num % 2 ~= 0 then
	local a = (num + 1) / 2
	local b = (num - 1) / 2
	print(a, b)
elseif num % 4 ~= 0 or num == 4 then
	print(num .. " can't be presented as a difference of integers.")
else
	local a = num / 4 + 1
	local b = num / 4 - 1
	print(a, b)
end

