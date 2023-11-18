--Elepower Recipes for Technic Grinders
local technic_recipes = {
	{"elepower_dynamics:brass_plate",      "technic:brass_dust 2"},
	{"basic_materials:brass_block",        "technic:brass_dust 9", 10},
	{"default:bronzeblock",			       "technic:bronze_dust 9", 10},
	{"elepower_dynamics:bronze_plate",     "technic:bronze_dust 2"},
	{"default:copperblock",      	       "technic:copper_dust 9", 10},
	{"elepower_dynamics:copper_plate",     "technic:copper_dust 2"},
	{"elepower_dynamics:electrum_ingot",   "elepower_dynamics:electrum_dust"},
	{"elepower_dynamics:electrum_plate",   "elepower_dynamics:electrum_dust 2"},
	{"default:goldblock",     			   "technic:gold_dust 9", 10},
	{"elepower_dynamics:gold_plate",       "technic:gold_dust 2"},
	{"elepower_dynamics:graphite_ingot",   "elepower_dynamics:graphite_rod 3"},
	{"elepower_dynamics:invar_ingot",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:invar_block",      "elepower_dynamics:invar_dust 9", 10},
	{"elepower_dynamics:invar_plate",      "elepower_dynamics:invar_dust 2"},
	{"elepower_dynamics:iron_ingot",	   "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:iron_plate",       "elepower_dynamics:iron_dust 2"},
	{"elepower_dynamics:lead_lump",	       "technic:lead_dust 2"},
	{"elepower_dynamics:lead_ingot",	   "technic:lead_dust"},
	{"elepower_dynamics:lead_block",	   "technic:lead_dust 9", 10},
	{"elepower_dynamics:lead_plate",       "technic:_dust 2"},
	{"default:mese",					   "default:mese_crystal 9", 10},
	{"default:mese_crystal_fragment"},     "elepower_dynamics:mese_dust", 1},
	{"moreores:mithril_block",			   "technic:mithril_dust 9", 10},
	{"elepower_dynamics:mithril_plate",    "technic:mithril_dust 2"},
	{"elepower_dynamics:nickel_lump", 	   "elepower_dynamics:nickel_dust 2"},
	{"elepower_dynamics:nickel_ingot",     "elepower_dynamics:nickel_dust"},
	{"elepower_dynamics:nickel_block",     "elepower_dynamics:nickel_dust 9", 10},
	{"elepower_dynamics:nickel_plate",     "elepower_dynamics:nickel_dust 2"},
	{"moreores:silver_block", 			   "technic:silver_dust 9", 10},
	{"elepower_dynamics:silver_plate",	   "technic:silver_dust 2"},
	{"default:steelblock",				   "technic:wrought_iron_dust 9", 10},
	{"elepower_dynamics:steel_plate", 	   "technic:wrought_iron_dust 2"},
	{"default:tinblock",				   "technic:tin_dust 9", 10},
	{"elepower_dynamics:tin_plate",		   "technic:tin_dust 2"},
	{"elepower_dynamics:viridisium_lump",  "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:viridisium_ingot", "elepower_dynamics:viridisium_dust"},
	{"elepower_dynamics:viridisium_block", "elepower_dynamics:viridisium_dust 9", 10},
	{"elepower_dynamics:viridisium_plate", "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:zinc_lump",		   "technic:zinc_dust 2"},
	{"elepower_dynamics:zinc_ingot", 	   "technic:zinc_dust"},
	{"elepower_dynamics:zinc_block", 	   "technic:zinc_dust 9", 10},
	{"elepower_dynamics:zinc_plate", 	   "technic:zinc_dust 2"},
}

--Fuel rod
if minetest.get_modpath("elepower_nuclear") then
	table.insert(technic_recipes{"elepower_nuclear:fuel_rod_depleted", "elepower_nuclear:depleted_uranium_dust 3"})
end

for _, data in pairs(technic_recipes) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2], time = data[3] or 3})
end

--Technic Recipes for Elepower Grindstone and Pulverizer
elepm.register_craft({
	type   = "grind",
	recipe = {"technic:carbon_steel_ingot"},
	output = "technic:carbon_steel_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:cast_iron_ingot"},
	output = "technic:cast_iron_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:chromium_lump"},
	output = "technic:chromium_dust 2",
	time   = 6
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:chromium_ingot"},
	output = "technic:chromium_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"default:ice"},
	output = "default:snowblock",
	time   = 8
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:lead_lump"},
	output = "technic:lead_dust 2",
	time   = 6
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:lead_ingot"},
	output = "technic:lead_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"default:silver_sand 4"},
	output = "basic_materials:silicon",
	time   = 8
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:stainless_steel_ingot"},
	output = "technic:stainless_steel_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"default:stone"},
	output = "technic:stone_dust",
	time   = 8
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:sulfur_lump"},
	output = "technic:sulfur_dust 2",
	time   = 6
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:zinc_lump"},
	output = "technic:zinc_dust 2",
	time   = 6
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:zinc_ingot"},
	output = "technic:zinc_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:uranium_lump"},
	output = "technic:uranium_dust 2",
	time   = 6
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:uranium_ingot"},
	output = "technic:uranium_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:uranium0_ingot"},
	output = "technic:uranium0_dust",
	time   = 5
})

elepm.register_craft({
	type   = "grind",
	recipe = {"technic:uranium35_ingot"},
	output = "technic:uranium35_dust",
	time   = 5
})

if minetest.get_modpath("farming") then
	elepm.register_craft({
		type   = "grind",
		recipe = {"farming:seed_wheat"},
		output = "farming:flour 1",
		time   = 4
	})
end

--Register grinding recipes for elepower pulverizers, grindstones, and technic grinders. For grinding ore materials in elepower grindstones and pulverizers, time = output + 4.
function register_grind_recipe(input1, output1, time1, time2)
	technic.register_grinder_recipe({
		input  = {input1},
		output = output1,	
		time = time1 or 3
	})
	elepm.register_craft({
		type   = "grind",
		recipe = {input1},
		output = output1,
		time = time2 or 8
	})
end

register_grind_recipe("stairs:slab_cobble 2", "default:gravel", 3, 5)

if minetest.get_modpath("elepower_nuclear") then
	register_grind_recipe("elepower_nuclear:uranium_lump", "technic:uranium_dust 2", 3, 6)
end

register_grind_recipe("technic:lead_block", "technic:lead_dust 9", 10, 13)

register_grind_recipe("technic:zinc_block", "technic:zinc_dust 9", 10, 13)
