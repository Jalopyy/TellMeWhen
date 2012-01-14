-- Script to extract currency information 

-- lua distribution used is at: http://w3.impa.br/~diego/software/luasocket/
-- includes LuaSocket library
 
 
local http = require("socket.http")
local src = http.request("http://ptr.wowhead.com/currencies")

local str = "{\n"

for id, name in string.gmatch(src, "id:(%d+),category.-name:'(.-)',icon") do
	str = str .. "\t" .. id .. ",\t--" .. name .. "\n"
end
	
str = str .. "}"
print(str)

io.open("C:\\Program Files\\World Of Warcraft\\Interface\\AddOns\\TellMeWhen\\Scripts\\Currencies.lua", "w"):write(str)