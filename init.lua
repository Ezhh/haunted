local modpath = minetest.get_modpath("haunted").. DIR_DELIM

dofile(modpath .. "overrides.lua") --comment out this line to disable default texture overrides
dofile(modpath .. "splats.lua")
dofile(modpath .. "webs.lua")
dofile(modpath .. "ooze.lua")