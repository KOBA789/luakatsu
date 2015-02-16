return function(charactes)
	local index = {}
	local ret = {}

	local function prof(chara)
		for key, val in pairs(chara) do
			if type(val) == "table" then
				val = table.concat(val, ", ")
			end

			if key and val then
				print(key, val)
			end
		end
	end

	for key, val in pairs(charactes) do
		index[val.name_rm] = val
		charactes[key].name_rm = nil
		table.insert(ret, setmetatable(val, {__call = function() prof(val) end}))
	end

	return setmetatable(ret, {__index = index})
end

