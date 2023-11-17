--Elepower Recipes for Technic Grinders
technic.register_grinder_recipe({
	input  = {"elepower_dynamics:electrum_ingot"},
	output = "elepower_dynamics:electrum_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:graphite_ingot"},
	output = "elepower_dynamics:graphite_rod 3",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:invar_ingot"},
	output = "elepower_dynamics:invar_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:iron_ingot"},
	output = "elepower_dynamics:iron_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:lead_lump"},
	output = "technic:lead_dust 2",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:lead_ingot"},
	output = "technic:lead_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:lead_block"},
	output = "technic:lead_dust 9",
	time   = 10
})

technic.register_grinder_recipe({
	input  = {"default:mese"},
	output = "default:mese_crystal 9",
	time   = 10
})

technic.register_grinder_recipe({
	input  = {"default:mese_crystal_fragment"},
	output = "elepower_dynamics:mese_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:nickel_lump"},
	output = "elepower_dynamics:nickel_dust 2",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:nickel_ingot"},
	output = "elepower_dynamics:nickel_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:viridisium_lump"},
	output = "elepower_dynamics:viridisium_dust 2",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:viridisium_ingot"},
	output = "elepower_dynamics:viridisium_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:zinc_lump"},
	output = "technic:zinc_dust 2",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:zinc_ingot"},
	output = "technic:zinc_dust",
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:zinc_block"},
	output = "technic:zinc_dust 9",
	time   = 10
})

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

	technic.register_grinder_recipe({
		input  = {"elepower_nuclear:fuel_rod_depleted"},
		output = "elepower_nuclear:depleted_uranium_dust 3",
	})
end

register_grind_recipe("technic:lead_block", "technic:lead_dust 9", 10, 13)

register_grind_recipe("technic:zinc_block", "technic:zinc_dust 9", 10, 13)
