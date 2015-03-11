require("math")
local coords = {}
local messages = {"first gene start: ", "first gene end: ", 
                  "second gene start: ", "second gene end: "}
for index, message in ipairs(messages) do
	while true do
		io.write(message)
		coords[index] = tonumber(io.read())
		if coords[index] then
			break
		end
	end
end

len1 = math.abs(coords[1]-coords[2]) + 1
len2 = math.abs(coords[3]-coords[4]) + 1
table.sort(coords)
total_len = math.abs(coords[1]-coords[4]) + 1
gap_len = total_len - len1 - len2
print("distance:", math.max(0, gap_len))
print("intersection length:", math.abs(math.min(0, gap_len)))

