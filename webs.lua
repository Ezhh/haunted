
local web_list = {
	{"whiteweb", "Web", "whiteweb",},
	{"blackweb", "Web", "blackweb",},
}

for i in pairs(web_list) do
	local name = web_list[i][1]
	local description = web_list[i][2]
	local image = web_list[i][3]

	minetest.register_node("haunted:"..name, {
		description = description,
		drawtype = "plantlike",
		tiles = {"haunted_"..image..".png"},
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		waving = 1,
		visual_scale = 1.3,
		groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
		legacy_wallmounted = true,
	})
end