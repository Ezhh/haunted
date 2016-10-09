
minetest.register_node("haunted:ooze_brick", {
	description = "Ooze Brick",
	tiles = { 
		"default_stone_brick.png",
		"default_stone_brick.png",
		"default_stone_brick.png",
		"default_stone_brick.png",
		"default_stone_brick.png",
		{
			name = "haunted_ooze_top.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = false,
	groups = {cracky = 2, stone = 1},
	drop = "default:stonebrick",
})

