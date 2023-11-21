--Elepower Recipes for Technic Furnaces
technic.register_alloy_recipe({
	input  = {"default:copper_ingot 2", "moreores:silver_ingot"},
	output = "basic_materials:brass_ingot 3",
})

technic.register_alloy_recipe({
	input  = {"default:gold_ingot 2", "elepower_dynamics:invar_ingot"},
	output = "elepower_dynamics:electrum_ingot 3",
})

technic.register_alloy_recipe({
	input  = {"default:coal_lump", "elepower_dynamics:coal_dust 4"},
	output = "elepower_dynamics:graphite_ingot",
})

technic.register_alloy_recipe({
	input  = {"default:obsidian_glass", "elepower_dynamics:lead_ingot 4"},
	output = "elepower_dynamics:hardened_glass 4",
	time   = 8
})

technic.register_alloy_recipe({
	input  = {"default:bronze_ingot", "default:steel_ingot 4"},
	output = "elepower_machines:heat_casing 4",
})

technic.register_alloy_recipe({
	input  = {"elepower_dynamics:iron_ingot 3", "elepower_dynamics:nickel_ingot"},
	output = "elepower_dynamics:invar_ingot 4",
})

technic.register_alloy_recipe({
	input  = {"basic_materials:silicon", "elepower_dynamics:coal_dust 2"},
	output = "elepower_dynamics:silicon_wafer",
})

technic.register_alloy_recipe({
	input  = {"elepower_dynamics:silicon_wafer", "elepower_dynamics:gold_dust 4"},
	output = "elepower_dynamics:silicon_wafer_doped",
	time   = 8
})

--Technic Recipes for Elepower Furnaces
elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:copper_dust 2", "technic:zinc_dust"},
	output = "technic:brass_dust 3",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"default:copper_ingot 2", "technic:zinc_ingot"},
	output = "basic_materials:brass_ingot 3",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:copper_dust 7", "technic:tin_dust"},
	output = "technic:bronze_dust 8",
	time   = 8
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"default:ice", "bucket:bucket_empty"},
	output = "bucket:bucket_water",
	time   = 1
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:wrought_iron_dust 2", "technic:coal_dust"},
	output = "technic:carbon_steel_dust 2",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:wrought_iron_ingot 2", "technic:coal_dust"},
	output = "technic:carbon_steel_ingot 2",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:carbon_steel_dust 2", "technic:coal_dust"},
	output = "technic:cast_iron_dust 2",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:carbon_steel_ingot 2", "technic:coal_dust"},
	output = "technic:cast_iron_ingot 2",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:raw_latex 4", "technic:coal_dust 2"},
	output = "technic:rubber 6",
	time   = 1
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"default:sand 2", "technic:coal_dust 2"},
	output = "technic:silicon_wafer",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:silicon_wafer", "technic:gold_dust"},
	output = "technic:doped_silicon_wafer",
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:carbon_steel_dust 4", "technic:chromium_dust"},
	output = "technic:stainless_steel_dust 5",
	time   = 5
})

elepm.register_craft({
	type   = "alloy",
	recipe = {"technic:carbon_steel_ingot 4", "technic:chromium_ingot"},
	output = "technic:stainless_steel_ingot 5",
	time   = 5
})

--Register alloying recipes for both technic and elepower alloy furnaces.
function register_alloy_recipe(input1, input2, output1, time1, time2) 
	technic.register_alloy_recipe({
		input  = {input1, input2},
		output = output1,	
		time = time1 or 6
	})
	elepm.register_craft({
		type   = "alloy",
		recipe = {input1, input2},
		output = output1,
		time = time2 or 4
	})
end

register_alloy_recipe("default:coal_lump", "technic:coal_dust 4", "elepower_dynamics:graphite_ingot")

register_alloy_recipe("default:obsidian_glass", "technic:lead_ingot 4", "elepower_dynamics:hardened_glass 4", 7.5, 8)

register_alloy_recipe("technic:cast_iron_ingot 3", "elepower_dynamics:nickel_ingot", "elepower_dynamics:invar_ingot 4")

register_alloy_recipe("default:desert_sand 2", "technic:coal_dust 2", "elepower_dynamics:silicon_wafer")

register_alloy_recipe("basic_materials:silicon", "technic:coal_dust 2", "elepower_dynamics:silicon_wafer")

register_alloy_recipe("default:sand 2", "elepower_dynamics:coal_dust 2", "technic:silicon_wafer")
