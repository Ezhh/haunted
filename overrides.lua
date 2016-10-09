
minetest.override_item("default:dirt_with_grass", {
	tiles = {"haunted_grass.png", "default_dirt.png",
		{name = "default_dirt.png^haunted_grass_side.png",
			tileable_vertical = false}},
})

minetest.override_item("default:tree", {
	tiles = {"haunted_tree_top.png", "haunted_tree_top.png", "haunted_tree.png"},
})

minetest.override_item("default:leaves", {
	tiles = {"haunted_leaves.png"},
	special_tiles = {"haunted_leaves.png"},
})