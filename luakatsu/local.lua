local makemt = require("luakatsu/bin/makemt")
local idols = makemt(require("luakatsu/lib/idols"))
local _M = {}
_M.__index = getmetatable(idols).__index
_M.__call = function()
	-- as if Aikatsu #25
	local msg = os.date("%m%d") == "0401" and "アメージーング! ショーーターイム! 俺のホットなティーチャー活動､アイカツ! スタートだぜ､イェア!" or "私のアツいアイドル活動､アイカツ! 始まります! ﾌﾌｯﾋ"

	print(msg)
end

idols.groups = makemt(require("luakatsu/lib/groups")(idols))
idols.find = require("luakatsu/bin/find")
idols.version = "v2.3"

return setmetatable(idols, _M)

