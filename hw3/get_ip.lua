local http = require("socket.http")

local url = "http://ip4.me"
local pattern = "%d+%.%d+%.%d+%.%d+"

local page = http.request(url)
local ip = page:match(pattern)
print("Your current IP is " .. ip)
