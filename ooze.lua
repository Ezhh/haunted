
--ooze brick
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



--liquid ooze
minetest.register_node("haunted:ooze_source", {
	description = "Ooze Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png^[colorize:#4F640D:200",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "default_water_source_animated.png^[colorize:#4F640D:200",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	light_source = 13,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "haunted:ooze_flowing",
	liquid_alternative_source = "haunted:ooze_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	post_effect_color = {a = 50, r = 128, g = 225, b = 0},
	groups = {water = 3, liquid = 3, puts_out_fire = 1},
})

minetest.register_node("haunted:ooze_flowing", {
	description = "Flowing Ooze",
	drawtype = "flowingliquid",
	tiles = {"default_water.png^[colorize:#4F640D:200"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png^[colorize:#4F640D:200",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png^[colorize:#4F640D:200",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	light_source = 13,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "haunted:ooze_flowing",
	liquid_alternative_source = "haunted:ooze_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	post_effect_color = {a = 50, r = 128, g = 225, b = 0},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1},
})