
-- Note: commented code was code from the original I removed to get this working. 

minetest.register_node("haunted:ooze_brick", {
	--drawtype = "firelike",
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
	--inventory_image = "haunted_stone_basic.png",
	paramtype = "light",
	paramtype2 = "facedir",
	--light_source = 5,
	light_source = 1,
	--walkable = true,
	--buildable_to = true,
	sunlight_propagates = false,
	groups = {cracky = 2, stone = 1},
	--groups = {dig_immediate = 3, not_in_creative_inventory = 1},
	drop = "default:stonebrick",

	--on_blast = function()
	--end,
})


--end

