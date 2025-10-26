--[[
	Trainblocks
	===========
	This mod adds signs for the advanced trains mod by orwell and it is bachwards-compatible to the advtrains_subwayblocks mod
	version 0.3 by maxx and gpcf

	Copyright (C) 2018 maxx and gpcf
	Copyright (C) 2020, 2021 Montandalar/Blockhead
	Copyright (C) 2025 W3RQ01

	See LICENSE.txt for more information
]]--

local crafting_disabled = minetest.settings:get_bool('trainblocks_disable_recipes')
if not trainblocks_disable_recipes then
	dofile(minetest.get_modpath("trainblocks") .. "/craft.lua")
end
dofile(minetest.get_modpath("trainblocks") .. "/alias.lua")

minetest.register_node("trainblocks:subwayblock", {
	description = "Subwayblock",
	light_source = 8,
	tiles = {
		"down_subwayblock.png",
		"down_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png",
		"front_subwayblock.png"
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:subwayblock"
})

--sbahn block
local sbahncolorize = ""
if minetest.settings:get_bool("trainblocks_legacy_sbahnblock", false) then
	sbahncolorize = "^[colorize:#00DF11FF"
end --00E876FF

minetest.register_node("trainblocks:sbahnblock", {
	description = "Sbahnblock",
	light_source = 8,
	tiles = {
		"down_sbahnblock.png"..sbahncolorize,
		"down_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png",
		"front_sbahnblock.png"
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:sbahnblock"
})

-- Milan subway system block
minetest.register_node("trainblocks:milansubwayblock", {
	description = "Milan Subwayblock",
	light_source = 8,
	tiles = {
		"down_milan.png",
		"down_milan.png",
		"front_milan.png",
		"front_milan.png",
		"front_milan.png",
		"front_milan.png"
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:milansubwayblock"
})

-- Subway signs Line 1 to 10
for count = 1, 10 do  
	minetest.register_node("trainblocks:line" .. count, {
		description = "Line " .. count,
		drawtype = "nodebox",
		tiles = {"front_line" .. count .. ".png"},
		inventory_image = "inventory_line" .. count .. ".png",
		light_source = 12,
		sunlight_propagates = true,
		groups = {
			choppy = 2,
			attached_node = 1,
			oddly_breakable_by_hand = 3,
			not_blocking_trains = 1,
		},
		legacy_wallmounted = true,
		is_ground_content = false,
		paramtype2 = "wallmounted",
		paramtype = 'light',
		-- This node box def has to remain to preserve old worlds properly,
		-- annoying as it is to be different from the platform signs.
		node_box = {
			type = "wallmounted",
			wall_top ={-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			wall_bottom = {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
			wall_side =  {-0.5, -0.25, -0.25, -0.4375, 0.25, 0.25},
		},
	})
end

-- Platform signs from 1 to 10
for count = 0, 10, 1 do
	minetest.register_node("trainblocks:platformsign" .. count, {
		description = "Platform Sign " .. count,
		drawtype = "nodebox",
		tiles = {"front_platform" .. count .. ".png"},
		inventory_image = "inventory_platform" .. count .. ".png",
		light_source = 5,
		groups = {cracky = 3, not_blocking_trains = 1},
		paramtype2 = "facedir",
		paramtype = 'light',
		node_box = {
			type = "fixed",
			fixed = {
				{ -4/16, -4/16, 6/16,  4/16,  4/16, 8/16},
			},
		},
	})
end

--subway signs R and L
minetest.register_node("trainblocks:subwaysignL", {
	description = "Subway Sign Left",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:subwaysignR", {
	description = "Subway Sign Right",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

-- S-bahn signs R and L
minetest.register_node("trainblocks:sbahnsignL", {
	description = "SBahn Sign Left",
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2l.png",
		"sbahn_sign2l.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:sbahnsignR", {
	description = "SBahn Sign Right",
	tiles = {
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign3.png",
		"sbahn_sign2.png",
		"sbahn_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

-- Station signs
minetest.register_node("trainblocks:stationsignR", {
	description = "Station Sign Right",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:stationsignR_modern", {
	description = "Station Sign Right (modern)",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2_modern.png",
		"station_sign2_modern.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
    drop = "trainblocks:station_block_modern",
})

minetest.register_node("trainblocks:stationsignL", {
	description = "Station Sign Left",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2.png",
		"station_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:stationsignL_modern", {
	description = "Station Sign Left (modern)",
	tiles = {
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign3.png",
		"station_sign2_modern.png",
		"station_sign2_modern.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 6,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:station_block", {
	description = "Station Block",
	light_source = 8,
	tiles = {
		"down_station_sign.png",
		"down_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png",
		"front_station_sign.png"
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:station_block"
})

minetest.register_node("trainblocks:station_block_modern", {
	description = "Station Block (modern)",
	light_source = 8,
	tiles = {
		"down_station_sign.png",
		"down_station_sign.png",
		"front_station_sign_modern.png",
		"front_station_sign_modern.png",
		"front_station_sign_modern.png",
		"front_station_sign_modern.png",
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:station_block"
})

-- gabriel's mountain railway block
minetest.register_node("trainblocks:mr", {
	description = "Mountain Railway Block",
	light_source = 8,
	tiles = {
		"down_mr.png",
		"down_mr.png",
		"front_mr.png",
		"front_mr.png",
		"front_mr.png",
		"front_mr.png"
	},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "trainblocks:sbahnblock"
})

local box_flat = {
	type = "fixed",
	--fixed = {-0.5, -0.5, -0.5,  0.5, -0.5, 0.5},
	fixed = {-0.5000, -0.4375, -0.5000, 0.5000, -0.4375, 0.5000}
}

local pedsigns = {
	{name = "no_pedestrians", desc = "No Pedestrians Sign"},
	{name = "durchgang_verboten", desc = "No Pedestrians Sign (German)"}
}

for _,v in pairs(pedsigns) do
	minetest.register_node("trainblocks:"..v.name, {
		description = v.desc,
		light_source = 2,
		drawtype = "signlike",
		paramtype = "light",
		paramtype2 = "wallmounted",
		tiles = {v.name..".png"},
		inventory_image = v.name..".png",
		wield_image = v.name..".png",
		groups = {
			cracky = 3,
			not_blocking_trains = 1
		},
		drop = "trainblocks:"..v.name,
		is_ground_content = true,
		node_box = box_flat,
		selection_box = box_flat,
	})
end
