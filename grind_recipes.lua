--Elepower Recipes for Technic Grinders
local technic_grinding = {
	{"elepower_dynamics:brass_plate",      "technic:brass_dust"},
	{"elepower_dynamics:bronze_plate",     "technic:bronze_dust"},
	{"elepower_dynamics:copper_plate",     "technic:copper_dust"},
	{"default:diamond",                    "elepower_dynamics:diamond_dust"},
	{"elepower_dynamics:electrum_ingot",   "elepower_dynamics:electrum_dust"},
	{"elepower_dynamics:electrum_plate",   "elepower_dynamics:electrum_dust"},
	{"elepower_dynamics:gold_plate",       "technic:gold_dust"},
	{"elepower_dynamics:graphite_ingot",   "elepower_dynamics:graphite_rod 3"},
	{"stairs:slab_cobble 2",               "default:gravel"},
	{"elepower_dynamics:invar_ingot",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:invar_plate",      "elepower_dynamics:invar_dust"},
	{"elepower_dynamics:iron_ingot",       "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:iron_plate",       "elepower_dynamics:iron_dust"},
	{"elepower_dynamics:lead_lump",	       "technic:lead_dust 2"},
	{"elepower_dynamics:lead_ingot",       "technic:lead_dust"},
	{"elepower_dynamics:lead_plate",       "technic:lead_dust"},
	{"default:mese_crystal",               "default:mese_crystal_fragment 9"},
	{"default:mese_crystal_fragment",      "elepower_dynamics:mese_dust"},
	{"elepower_dynamics:mithril_plate",    "technic:mithril_dust"},
	{"elepower_dynamics:nickel_lump",      "elepower_dynamics:nickel_dust 2"},
	{"elepower_dynamics:nickel_ingot",     "elepower_dynamics:nickel_dust"},
	{"elepower_dynamics:nickel_plate",     "elepower_dynamics:nickel_dust"},
	{"elepower_dynamics:silver_plate",     "technic:silver_dust"},
	{"elepower_dynamics:tin_plate",	       "technic:tin_dust"},
	{"elepower_dynamics:viridisium_lump",  "elepower_dynamics:viridisium_dust 2"},
	{"elepower_dynamics:viridisium_ingot", "elepower_dynamics:viridisium_dust"},
	{"elepower_dynamics:viridisium_plate", "elepower_dynamics:viridisium_dust"},
	{"elepower_dynamics:steel_plate",      "technic:wrought_iron_dust"},
	{"elepower_dynamics:zinc_lump",	       "technic:zinc_dust 2"},
	{"elepower_dynamics:zinc_ingot",       "technic:zinc_dust"},
	{"elepower_dynamics:zinc_plate",       "technic:zinc_dust"},
}

if minetest.get_modpath("elepower_nuclear") then
	table.insert(technic_grinding, {"elepower_nuclear:uranium_lump", "technic:uranium_dust 2"})
	table.insert(technic_grinding, {"elepower_nuclear:fuel_rod_depleted", "elepower_nuclear:depleted_uranium_dust 3"})
end

for _, data in pairs(technic_grinding) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2], time = 3})
end

--Block grinding for Technic grinders
local technic_blocks = {
	{"basic_materials:brass_block",        "technic:brass_dust 9"},
	{"default:bronzeblock",	               "technic:bronze_dust 9"},
	{"technic:carbon_steel_block",         "technic:carbon_steel_dust 9"},
	{"technic:cast_iron_block",            "technic:cast_iron_dust 9"},
	{"technic:chromium_block",             "technic:chromium_dust 9"},
	{"default:copperblock",      	       "technic:copper_dust 9"},
	{"default:diamondblock",               "elepower_dynamics:diamond_dust 9"},
	{"default:goldblock",                  "technic:gold_dust 9"},
	{"elepower_dynamics:invar_block",      "elepower_dynamics:invar_dust 9"},
	{"elepower_dynamics:lead_block",       "technic:lead_dust 9"},
	{"default:mese",                       "default:mese_crystal 9"},
	{"moreores:mithril_block",             "technic:mithril_dust 9"},
	{"elepower_dynamics:nickel_block",     "elepower_dynamics:nickel_dust 9"},
	{"moreores:silver_block",              "technic:silver_dust 9"},
	{"technic:stainless_steel_block",      "technic:stainless_steel_dust 9"},
	{"default:tinblock",                   "technic:tin_dust 9"},
	{"technic:uranium_block",              "technic:uranium_dust 9"},
	{"technic:uranium0_block",             "technic:uranium0_dust 9"},
	{"technic:uranium35_block", 	       "technic:uranium35_dust 9"},
	{"elepower_dynamics:viridisium_block", "elepower_dynamics:viridisium_dust 9"},
	{"default:steelblock",	               "technic:wrought_iron_dust 9"},
	{"elepower_dynamics:zinc_block",       "technic:zinc_dust 9"},
	{"technic:zinc_block", 	               "technic:zinc_dust 9"},
	{"technic:lead_block", 	               "technic:lead_dust 9"},
}
for _, data in pairs(technic_blocks) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2], time = 10})
end

--Technic recipes for Elepower grindstone and pulverizer. For grinding ore materials, time = output + 4. The default time is 8.
local elepower_grinding = {
	{
		recipe = { "basic_materials:chain_brass 3" },
		output = "technic:brass_dust",
	},
	{
		recipe = { "basic_materials:chainlink_brass 2" },
		output = "technic:brass_dust",
	},
	{
		recipe = { "technic:carbon_steel_ingot" },
		output = "technic:carbon_steel_dust",
	},
	{
		recipe = { "technic:carbon_steel_block" },
		output = "technic:carbon_steel_dust 9", 
		time   = 13,
	},
	{
		recipe = { "technic:cast_iron_ingot" },  
		output = "technic:cast_iron_dust",
	},
	{
		recipe = { "technic:cast_iron_block" },
		output = "technic:cast_iron_dust 9",
	},
	{
		recipe = { "technic:chernobylite_block" },  
		output = "technic:chernobylite_dust",
	},
	{
		recipe = { "technic:carbon_plate" },
		output = "technic:coal_dust 12", 
		time   = 16,
	},
	{
		recipe = { "technic:chromium_lump" }, 
		output = "technic:chromium_dust 2", 
		time   = 6,
	},
	{
		recipe = { "technic:chromium_ingot" },   
		output = "technic:chromium_dust",
	},
	{
		recipe = { "technic:chromium_block" },   
		output = "technic:chromium_dust 9", 
		time   = 13,
	},
	{
		recipe = { "default:wood" }, 
		output = "technic:common_tree_grindings",
	},
	{
		recipe = { "default:acacia_wood" },   
		output = "technic:common_tree_grindings",
	},
	{
		recipe = { "default:aspen_wood" }, 
		output = "technic:common_tree_grindings",
	},
	{
		recipe = { "default:junglewood" },
		output = "technic:common_tree_grindings",
	},
	{
		recipe = { "default:pine_wood" }, 
		output = "technic:common_tree_grindings",
	},
	{
		recipe = { "technic:copper_plate" },
		output = "technic:copper_dust 5",
		time   = 9,
	},
	{
		recipe = { "stairs:slab_cobble 2" },
		output = "default:gravel",
	},
	{
		recipe = { "technic:lead_lump" },
		output = "technic:lead_dust 2",
		time   = 6,
	},
	{
		recipe = { "technic:lead_ingot" },
		output = "technic:lead_dust",
	},
	{
		recipe = { "technic:lead_block" },
		output = "technic:lead_dust 9",
		time   = 13,
	},
	{
		recipe = { "moretrees:rubber_tree_trunk" },
		output = "technic:rubber_tree_grindings 4",
		time   = 8,
	},
	{
		recipe = { "technic:common_tree_grindings" },
		output = "technic:sawdust",
	},
	{
		recipe = { "technic:rubber_tree_grindings" },
		output = "technic:sawdust 4",
		time   = 8,
	},
	{
		recipe = { "default:ice" },
		output = "default:snowblock",
		time   = 8,
	},
	{
		recipe = { "technic:stainless_steel_ingot" },
		output = "technic:stainless_steel_dust",
	},
	{
		recipe = { "technic:stainless_steel_block" },
		output = "technic:stainless_steel_dust 9",
		time   = 13,
	},
	{
		recipe = { "default:stone" },
		output = "technic:stone_dust",
		time   = 8,
	},
	{
		recipe = { "default:silver_sand" },
		output = "technic:stone_dust",
		time   = 8,
	},
	{
		recipe = { "technic:sulfur_lump" },
		output = "technic:sulfur_dust 2",
		time   = 6,
	},
	{
		recipe = { "technic:uranium_lump" },
		output = "technic:uranium_dust 2",
		time   = 6,
	},
	{
		recipe = { "technic:uranium_ingot" },
		output = "technic:uranium_dust",
	},
	{
		recipe = { "technic:uranium_block" },
		output = "technic:uranium_dust 9",
		time   = 13,
	},
	{
		recipe = { "technic:uranium0_ingot" },
		output = "technic:uranium0_dust",
	},
	{
		recipe = { "technic:uranium0_block" },
		output = "technic:uranium0_dust 9",
		time   = 13,
	},
	{
		recipe = { "technic:uranium35_ingot" },
		output = "technic:uranium35_dust",
	},
	{
		recipe = { "technic:uranium35_block" },
		output = "technic:uranium35_dust 9",
		time   = 13,
	},
	{
		recipe = { "technic:zinc_lump" },
		output = "technic:zinc_dust 2",
		time   = 6,
	},
	{
		recipe = { "technic:zinc_ingot" },
		output = "technic:zinc_dust",
	},
	{
		recipe = { "technic:zinc_block" },
		output = "technic:zinc_dust 9",
		time   = 13,
	}
}

if minetest.get_modpath("farming") then
	table.insert(elepower_grinding, {recipe = {"farming:seed_wheat"}, output = "farming:flour 1", time = 4})
end

if minetest.get_modpath("elepower_nuclear") then
	table.insert(elepower_grinding, {recipe = {"elepower_nuclear:uranium_lump"}, output = "technic:uranium_dust 2"})
end

for _,i in pairs(elepower_grinding) do
	elepm.register_craft({
		type   = "grind",
		recipe = i.recipe,
		output = i.output,
		time   = i.time or 5,
	})
end
