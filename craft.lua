--CRAFTING

-- Blocks

minetest.register_craft({
	output = 'trainblocks:subwayblock',
	recipe = {
		{'', 'dye:blue', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:blue', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnblock',
	recipe = {
		{'', 'dye:green', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:green', ''},
	}
})

--lineblocks from 1 to 10
local dyes1 = {"blue", "red", "violet", "green", "orange", "yellow", "gray", "magenta", "cyan", "black"}
local dyes2 = {"white", "white", "white", "white", "white", "black", "white", "white", "white", "white"}

for count = 1, 10, 1 do
	minetest.register_craft({
		output = "trainblocks:line" .. count ..  " 4",
		recipe = {
			{'', "dye:" .. dyes1[count] , ''},
			{"dye:" .. dyes2[count], 'default:glass', ''},
			{'', '', ''},
		}
	})
end

-- Platform signs 0-10
minetest.register_craft({
	output = "trainblocks:platformsign0",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'', 'dye:white', ''},
		{'', '' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign1",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', 'dye:white'},
		{'', '' ,'dye:white'}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign2",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', ''},
		{'', '' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign3",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
		{'', '' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign4",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', ''},
		{'dye:white', 'dye:white' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign5",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
		{'dye:white', 'dye:white' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign6",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', 'dye:white', 'dye:white'},
		{'dye:white', 'dye:white' ,'dye:white'}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign7",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', 'dye:white'},
		{'', 'dye:white' ,''}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign8",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'dye:white', '', 'dye:white'},
		{'dye:white', 'dye:white' ,'dye:white'}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign9",
	recipe = {
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', 'dye:white', 'dye:white'},
		{'', '' ,'dye:white'}
	}
})
minetest.register_craft({
	output = "trainblocks:platformsign10",
	recipe = {
		{'dye:blue', 'default:glass', ''},
		{'dye:white', '', ''},
		{'dye:white', '' ,'dye:white'}
	}
})

--subway direction signs

minetest.register_craft({
	output = 'trainblocks:subwaysignL 2',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:glass', 'dye:blue'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:subwaysignR 2',
	recipe = {
		{'', '', ''},
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', ''},
	}
})

--sbahn direction signs

minetest.register_craft({
	output = 'trainblocks:sbahnsignL 2',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:glass', 'dye:green'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnsignR 2',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:glass', 'dye:green'},
		{'', '', ''},
	}
})


-- Station direction signs

minetest.register_craft({
	output = 'trainblocks:stationsignL 2',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:glass', 'dye:black'},
		{'', '', ''}
	}
})

minetest.register_craft({
	output = 'trainblocks:stationsignR 2',
	recipe = {
		{'', '', ''},
		{'dye:black', 'default:glass', 'dye:white'},
		{'', '', ''}
	}
})

-- Switch betwen modern station direction signs and older style
minetest.register_craft({
	type = "shapeless",
	output = 'trainblocks:stationsignR_modern',
	recipe = {'trainblocks:stationsignR'}
})
minetest.register_craft({
	type = "shapeless",
	output = 'trainblocks:stationsignL_modern',
	recipe = {'trainblocks:stationsignL'}
})
minetest.register_craft({
	type = "shapeless",
	recipe = {'trainblocks:stationsignR_modern'},
	output = 'trainblocks:stationsignR'
})
minetest.register_craft({
	type = "shapeless",
	recipe = {'trainblocks:stationsignL_modern'},
	output = 'trainblocks:stationsignL'
})