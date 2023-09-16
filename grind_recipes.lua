--Elepower Recipes for Technic Grinders
technic.register_grinder_recipe({
	input  = {"elepower_dynamics:graphite_ingot"},
	output = "elepower_dynamics:graphite_rod 3",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:lead_lump"},
	output = "elepower_dynamics:lead_dust 2",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"default:mese"},
	output = "default:mese_crystal 9",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"default:mese_crystal_fragment"},
	output = "elepower_dynamics:mese_dust",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:nickel_lump"},
	output = "elepower_dynamics:nickel_dust 2",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:viridisium_lump"},
	output = "elepower_dynamics:viridisium_dust 2",
	time   = 3
})

technic.register_grinder_recipe({
	input  = {"elepower_dynamics:zinc_lump"},
	output = "elepower_dynamics:zinc_dust 2",
	time   = 3
})

--Technic Recipes for Elepower Grindstone and Pulverizer
elepm.register_craft({
	type   = "grind",
	recipe = {"technic:chromium_lump"},
	output = "technic:chromium_dust 2",
	time   = 6
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

--Broken Sandstone recipes. Creates 4 sand instead of 2.
--elepm.register_craft({
	--type   = "grind",
	--recipe = {"default:desert_sandstone"},
	--output = "default:desert_sand 2",
	--time   = 8
--})

--elepm.register_craft({
	--type   = "grind",
	--recipe = {"default:sandstone"},
	--output = "default:sand 2",
	--time   = 8
--})

--elepm.register_craft({
	--type   = "grind",
	--recipe = {"default:silver_sandstone"},
	--output = "default:silver_sand 2",
	--time   = 8
--})

elepm.register_craft({
	type   = "grind",
	recipe = {"default:silver_sand 4"},
	output = "basic_materials:silicon",
	time   = 8
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

register_grind_recipe("stairs:slab_cobble 2", "default:gravel", 3, 5)

--Uranium Recipes for Both
elepm.register_craft({
	type   = "grind",
	recipe = {"technic:uranium_lump"},
	output = "technic:uranium_dust 2",
	time   = 6
})

if minetest.get_modpath("elepower_nuclear") then
	register_grind_recipe("elepower_nuclear:uranium_lump", "technic:uranium_dust 2", 3, 6)
end