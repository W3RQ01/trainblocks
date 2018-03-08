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
		{'', 'dye:orange', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:orange', ''},
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
		{'dye:white', 'default:glass', 'dye:orange'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnsignR 2',
	recipe = {
		{'', '', ''},
		{'dye:blue', 'default:glass', 'dye:orange'},
		{'', '', ''},
	}
})
