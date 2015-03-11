local skips = function(args)
	local len = #args
	local answer = {}
	for step = 1, #args do
		local temp = {}
		for index = step, len, step do
			table.insert(temp, args[index])
		end
		answer[step] = temp
	end
	return answer
end

local localMax = function(nums)
	local maxs = {}
	for index = 2, #nums-1 do
		local num = nums[index]
		if num > nums[index-1] and num > nums[index+1] then
			table.insert(maxs, num)
		end
	end
	return maxs
end

return({skips=skips, localMax=localMax})
