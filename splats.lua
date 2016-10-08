

local splat_list = {
	{"redsplat", "Red Splat", "redsplat",},
	{"greensplat", "Slime Splat", "greensplat",},
}

for i in ipairs(splat_list) do
	local name = splat_list[i][1]
	local description = splat_list[i][2]
	local image = splat_list[i][3]

	minetest.register_node("haunted:"..name, {
		description = description,
		drawtype = "signlike",
		tiles = {"haunted_"..image..".png"},
		paramtype = "light",
		paramtype2 = "wallmounted",
		sunlight_propagates = true,
		walkable = false,
		selection_box = {
			type = "wallmounted",
		},
		groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
		legacy_wallmounted = true,
	})
end




