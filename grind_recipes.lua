--Elepower Recipes for Technic Grinders
local technic_grinding = {
	{"elepower_dynamics:brass_plate",      "technic:brass_dust"},
	{"basic_materials:brass_block",        "technic:brass_dust 9", 10},
	{"default:bronzeblock",	               "technic:bronze_dust 9", 10},
	{"elepower_dynamics:bronze_plate",     "technic:bronze_dust"},
	{"technic:carbon_steel_block",         "technic:carbon_steel_dust 9", 10},
	{"technic:cast_iron_block",            "technic:cast_iron_dust 9", 10},
	{"technic:chromium_block",             "technic:chromium_dust 9", 10},
	{"default:copperblock",      	       "technic:copper_dust 9", 10},
	{"elepower_dynamics:copper_plate",     "technic:copper_dust"},
	{"default:diamond",                    "elepower_dynamics:diamond_dust"},
	{"default:diamondblock",               "elepower_dynamics:diamond_dust 9", 10},
	{"elepower_dynamics:electrum_ingot",   "elepower_dynamics:electrum_dust"},
	{"elepower_dynamics:electrum_plate",   "elepower_dynamics:electrum_dust"},
	{"default:goldblock",                  "technic:gold_dust 9", 10},
	{"elepower_dynamics:gold_plate",       "technic:gold_dust"},
	{"elepower_dynamics:graphite_ingot",   "elepower_dynamics:graphite_rod 3"},
	{"stairs:slab_cobble 2",               "default:gravel"},
	{"elepower_dynamics:invar_ingot",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:invar_block",      "elepower_dynamics:invar_dust 9", 10},
	{"elepower_dynamics:invar_plate",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:iron_ingot",       "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:iron_plate",       "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:lead_lump",	       "technic:lead_dust 2"},
	{"elepower_dynamics:lead_ingot",       "technic:lead_dust"},
	{"elepower_dynamics:lead_block",       "technic:lead_dust 9", 10},
	{"elepower_dynamics:lead_plate",       "technic:lead_dust"},
	{"default:mese",                       "default:mese_crystal 9", 10},
	{"default:mese_crystal",               "default:mese_crystal_fragment 9"},
	{"default:mese_crystal_fragment",      "elepower_dynamics:mese_dust", 1},
	{"moreores:mithril_block",             "technic:mithril_dust 9", 10},
	{"elepower_dynamics:mithril_plate",    "technic:mithril_dust"},
	{"elepower_dynamics:nickel_lump",      "elepower_dynamics:nickel_dust 2"},
	{"elepower_dynamics:nickel_ingot",     "elepower_dynamics:nickel_dust"},
	{"elepower_dynamics:nickel_block",     "elepower_dynamics:nickel_dust 9", 10},
	{"elepower_dynamics:nickel_plate",     "elepower_dynamics:nickel_dust"},
	{"moreores:silver_block",              "technic:silver_dust 9", 10},
	{"elepower_dynamics:silver_plate",     "technic:silver_dust"},
	{"technic:stainless_steel_block",      "technic:stainless_steel_dust 9", 10},
	{"default:tinblock",                   "technic:tin_dust 9", 10},
	{"elepower_dynamics:tin_plate",	       "technic:tin_dust"},
	{"technic:uranium_block",              "technic:uranium_dust 9", 10},
	{"technic:uranium0_block",             "technic:uranium0_dust 9", 10},
	{"technic:uranium35_block", 	       "technic:uranium35_dust 9", 10},
	{"elepower_dynamics:viridisium_lump",  "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:viridisium_ingot", "elepower_dynamics:viridisium_dust"},
	{"elepower_dynamics:viridisium_block", "elepower_dynamics:viridisium_dust 9", 10},
	{"elepower_dynamics:viridisium_plate", "elepower_dynamics:viridisium_dust"},
	{"default:steelblock",	               "technic:wrought_iron_dust 9", 10},
	{"elepower_dynamics:steel_plate",      "technic:wrought_iron_dust"},
	{"elepower_dynamics:zinc_lump",	       "technic:zinc_dust 2"},
	{"elepower_dynamics:zinc_ingot",       "technic:zinc_dust"},
	{"elepower_dynamics:zinc_block",       "technic:zinc_dust 9", 10},
	{"elepower_dynamics:zinc_plate",       "technic:zinc_dust"},
	{"technic:zinc_block", 	               "technic:zinc_dust 9", 10},
	{"technic:lead_block", 	               "technic:lead_dust 9", 10},
}

--Fuel rod
if minetest.get_modpath("elepower_nuclear") then
	table.insert(technic_grinding, {"elepower_nuclear:uranium_lump", "technic:uranium_dust 2"})
	table.insert(technic_grinding, {"elepower_nuclear:fuel_rod_depleted", "elepower_nuclear:depleted_uranium_dust 3"})
end

if minetest.get_modpath("farming") then
	table.insert(technic_grinding, {"farming:wheat", "farming:flour 2"})
end

for _, data in pairs(technic_grinding) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2], time = data[3] or 3})
end

--Technic recipes for Elepower grindstone and pulverizer. For grinding ore materials, time = output + 4. The default time is 8.
local elepower_grinding = {
	{"basic_materials:chain_brass 3",     "technic:brass_dust"},
	{"basic_materials:chainlink_brass 2", "technic:brass_dust"},
	{"technic:carbon_steel_ingot",        "technic:carbon_steel_dust"},
	{"technic:carbon_steel_block",        "technic:carbon_steel_dust 9", 13},
	{"technic:cast_iron_ingot",           "technic:cast_iron_dust"},
	{"technic:cast_iron_block",           "technic:cast_iron_dust 9", 13},
	{"technic:chernobylite_block",        "technic:chernobylite_dust"},
	{"technic:chromium_lump",             "technic:chromium_dust 2", 6},
	{"technic:chromium_ingot",            "technic:chromium_dust"},
	{"technic:chromium_block",            "technic:chromium_dust 9", 13},
	{"technic:carbon_plate",              "technic:coal_dust 12", 16},
	{"default:wood",                      "technic:common_tree_grindings"},
	{"default:acacia_wood",               "technic:common_tree_grindings"},
	{"default:aspen_wood",                "technic:common_tree_grindings"},
	{"default:junglewood",                "technic:common_tree_grindings"},
	{"default:pine_wood",                 "technic:common_tree_grindings"},
	{"technic:copper_plate",              "technic:copper_dust 5", 9},
	{"stairs:slab_cobble 2",              "default:gravel"},
	{"technic:lead_lump",	              "technic:lead_dust 2", 6},
	{"technic:lead_ingot",	              "technic:lead_dust"},
	{"technic:lead_block", 	              "technic:lead_dust 9", 13},
	{"moretrees:rubber_tree_trunk",       "technic:rubber_tree_grindings 4", 8},
	{"technic:common_tree_grindings",     "technic:sawdust"},
	{"technic:rubber_tree_grindings",     "technic:sawdust 4", 8},
	{"default:ice",	                      "default:snowblock", 8},
	{"technic:stainless_steel_ingot",     "technic:stainless_steel_dust"},
	{"technic:stainless_steel_block",     "technic:stainless_steel_dust 9", 13},
	{"default:stone",                     "technic:stone_dust", 8},
	{"default:silver_sand",               "technic:stone_dust", 8},
	{"technic:sulfur_lump",               "technic:sulfur_dust 2", 6},
	{"technic:uranium_lump",              "technic:uranium_dust 2", 6},
	{"technic:uranium_ingot",             "technic:uranium_dust"},
	{"technic:uranium_block",             "technic:uranium_dust 9", 13},
	{"technic:uranium0_ingot",            "technic:uranium0_dust"},
	{"technic:uranium0_block",            "technic:uranium0_dust 9", 13},
	{"technic:uranium35_ingot",           "technic:uranium35_dust"},
	{"technic:uranium35_block",           "technic:uranium35_dust 9", 13},
	{"technic:zinc_lump", 	              "technic:zinc_dust 2", 6},
	{"technic:zinc_ingot", 	              "technic:zinc_dust"},
	{"technic:zinc_block", 	              "technic:zinc_dust 9", 13},
}

if minetest.get_modpath("farming") then
	table.insert(elepower_grinding, {"farming:seed_wheat", "farming:flour 1", 4})
end

if minetest.get_modpath("elepower_nuclear") then
	table.insert(elepower_grinding, {"elepower_nuclear:uranium_lump", "technic:uranium_dust 2"})
end

for _,data in pairs(elepower_grinding) do
	elepm.register_craft({
		type   = "grind",
		recipe = {data[1]},
		output = data[2],
		time   = data[3] or 5,
	})
end
