--Elepower Recipes for Technic Grinders
local technic_grinding = {
	{"elepower_dynamics:brass_plate",      "technic:brass_dust 2"},
	{"basic_materials:brass_block",        "technic:brass_dust 9", 10},
	{"default:bronzeblock",		       "technic:bronze_dust 9", 10},
	{"elepower_dynamics:bronze_plate",     "technic:bronze_dust 2"},
	{"default:copperblock",      	       "technic:copper_dust 9", 10},
	{"elepower_dynamics:copper_plate",     "technic:copper_dust 2"},
	{"elepower_dynamics:electrum_ingot",   "elepower_dynamics:electrum_dust"},
	{"elepower_dynamics:electrum_plate",   "elepower_dynamics:electrum_dust 2"},
	{"default:goldblock",     	       "technic:gold_dust 9", 10},
	{"elepower_dynamics:gold_plate",       "technic:gold_dust 2"},
	{"elepower_dynamics:graphite_ingot",   "elepower_dynamics:graphite_rod 3"},
	{"elepower_dynamics:invar_ingot",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:invar_block",      "elepower_dynamics:invar_dust 9", 10},
	{"elepower_dynamics:invar_plate",      "elepower_dynamics:invar_dust 2"},
	{"elepower_dynamics:iron_ingot",       "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:iron_plate",       "elepower_dynamics:iron_dust 2"},
	{"elepower_dynamics:lead_lump",	       "technic:lead_dust 2"},
	{"elepower_dynamics:lead_ingot",       "technic:lead_dust"},
	{"elepower_dynamics:lead_block",       "technic:lead_dust 9", 10},
	{"elepower_dynamics:lead_plate",       "technic:_dust 2"},
	{"default:mese",		       "default:mese_crystal 9", 10},
	{"default:mese_crystal_fragment",     "elepower_dynamics:mese_dust", 1},
	{"moreores:mithril_block",	       "technic:mithril_dust 9", 10},
	{"elepower_dynamics:mithril_plate",    "technic:mithril_dust 2"},
	{"elepower_dynamics:nickel_lump",      "elepower_dynamics:nickel_dust 2"},
	{"elepower_dynamics:nickel_ingot",     "elepower_dynamics:nickel_dust"},
	{"elepower_dynamics:nickel_block",     "elepower_dynamics:nickel_dust 9", 10},
	{"elepower_dynamics:nickel_plate",     "elepower_dynamics:nickel_dust 2"},
	{"moreores:silver_block", 	       "technic:silver_dust 9", 10},
	{"elepower_dynamics:silver_plate",     "technic:silver_dust 2"},
	{"default:steelblock",		       "technic:wrought_iron_dust 9", 10},
	{"elepower_dynamics:steel_plate",      "technic:wrought_iron_dust 2"},
	{"default:tinblock",		       "technic:tin_dust 9", 10},
	{"elepower_dynamics:tin_plate",	       "technic:tin_dust 2"},
	{"technic:uranium_block", 	       "technic:uranium_dust 9", 10},
	{"technic:uranium0_block", 	       "technic:uranium0_dust 9", 10},
	{"technic:uranium35_block", 	       "technic:uranium35_dust 9", 10},
	{"elepower_dynamics:viridisium_lump",  "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:viridisium_ingot", "elepower_dynamics:viridisium_dust"},
	{"elepower_dynamics:viridisium_block", "elepower_dynamics:viridisium_dust 9", 10},
	{"elepower_dynamics:viridisium_plate", "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:zinc_lump",	       "technic:zinc_dust 2"},
	{"elepower_dynamics:zinc_ingot",       "technic:zinc_dust"},
	{"elepower_dynamics:zinc_block",       "technic:zinc_dust 9", 10},
	{"elepower_dynamics:zinc_plate",       "technic:zinc_dust 2"},
	{"technic:carbon_steel_block",         "technic:carbon_steel_dust 9", 10},
	{"stairs:slab_cobble 2", 	       "default:gravel"},
	{"technic:zinc_block", 		       "technic:zinc_dust 9", 10,},
	{"technic:lead_block", 		       "technic:lead_dust 9", 10},
	{"technic:stainless_steel_block",      "technic:stainless_steel_dust 9", 10},
}

--Fuel rod
if minetest.get_modpath("elepower_nuclear") then
	table.insert(technic_grinding{"elepower_nuclear:uranium_lump", "technic:uranium_dust 2"})
	table.insert(technic_grinding{"elepower_nuclear:fuel_rod_depleted", "elepower_nuclear:depleted_uranium_dust 3"})
end

for _, data in pairs(technic_grinding) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2], time = data[3] or 3})
end

--Technic recipes for Elepower grindstone and pulverizer. For grinding ore materials, time = output + 4. The default time is 8.
local elepower_grinding = {
	{"technic:carbon_steel_ingot",    "technic:carbon_steel_dust"},
	{"technic:cast_iron_ingot",       "technic:cast_iron_dust"},
	{"technic:chromium_lump",         "technic:chromium_dust 2", 6},
	{"technic:chromium_ingot",        "technic:chromium_dust"},
	{"default:ice",			  "default:snowblock", 8},
	{"technic:lead_lump",		  "technic:lead_dust 2", 6},
	{"technic:lead_ingot",		  "technic:lead_dust"},
	{"technic:stainless_steel_ingot", "technic:stainless_steel_dust"},
	{"default:stone", 		  "technic:stone_dust", 8},
	{"default:silver_sand",           "technic:stone_dust", 8},
	{"technic:sulfur_lump", 	  "technic:sulfur_dust 2", 6},
	{"technic:zinc_lump", 		  "technic:zinc_dust 2", 6},
	{"technic:zinc_ingot", 		  "technic:zinc_dust"},
	{"technic:uranium_lump", 	  "technic:uranium_dust 2", 6},
	{"technic:uranium_ingot", 	  "technic:uranium_dust"},
	{"technic:uranium0_ingot", 	  "technic:uranium0_dust"},
	{"technic:uranium35_ingot", 	  "technic:uranium35_dust"},
	{"technic:uranium_block", 	  "technic:uranium_dust 9", 13},
	{"technic:uranium0_block", 	  "technic:uranium0_dust 9", 13},
	{"technic:uranium35_block", 	  "technic:uranium35_dust 9", 13},
	{"technic:carbon_steel_block",    "technic:carbon_steel_dust 9", 13},
	{"stairs:slab_cobble 2", 	  "default:gravel"},
	{"technic:zinc_block", 		  "technic:zinc_dust 9", 13},
	{"technic:lead_block", 		  "technic:lead_dust 9", 13},
	{"technic:stainless_steel_block", "technic:stainless_steel_dust 9", 13},
}

if minetest.get_modpath("farming") then
	table.insert(elepower_grinding{"farming:seed_wheat", "farming:flour 1, 4})
end

if minetest.get_modpath("elepower_nuclear") then
	table.insert(elepower_grinding{"elepower_nuclear:uranium_lump", "technic:uranium_dust 2"})
end

for _,i in pairs(elepower_grinding) do
	elepm.register_craft({
		type   = "grind",
		recipe = i.recipe,
		output = i.output,
		time   = i.time or 5,
	})
end
