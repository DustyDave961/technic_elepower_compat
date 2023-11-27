--Acidic Compound
minetest.register_craft({
	type = "shapeless",
	output = "elepower_dynamics:acidic_compound",
	recipe = {
		"technic:copper_dust",
		"technic:copper_dust",
		"technic:copper_dust",
		"technic:copper_dust",
		"farming:seed_wheat",
	}
})

--Batteries
minetest.register_craft({
	output = "elepower_dynamics:battery 2",
	recipe = {
		{"group:zinc_dust", "elepower_dynamics:graphite_rod", "group:lead_dust"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
	}
})

minetest.register_craft({
	output = "technic:battery",
	recipe = {
		{"group:wood", "group:sulfur", "group:wood"},
		{"group:lead_ingot", "basic_materials:oil_extract", "group:lead_ingot"},
		{"group:wood", "group:sulfur", "group:wood"},
	}
})

minetest.register_craft({
	output = "technic:battery",
	recipe = {
		{"group:wood", "group:sulfur", "group:wood"},
		{"group:lead_ingot", "bucket:bucket_water", "group:lead_ingot"},
		{"group:wood", "group:sulfur", "group:wood"},
	},
	replacements = {
		{"bucket:bucket_water", "bucket:empty"},
	}
})

minetest.register_craft({
	output = "technic:battery",
	recipe = {
		{"group:wood", "default:copper_ingot", "group:wood"},
		{"group:wood", "default:tin_ingot", "group:wood"},
		{"group:wood", "default:copper_ingot", "group:wood"},
	}
})

--Compression
technic.register_compressor_recipe({
	input  = {"elepower_dynamics:diamond_dust"},
	output = "default:diamond",
})

elepm.register_craft({
	type   = "compress",
	recipe = {"technic:lead_ingot", "technic:lead_ingot"},
	output = "elepower_dynamics:lead_plate 2",
	time   = 4
})

elepm.register_craft({
	type   = "compress",
	recipe = {"technic:zinc_ingot", "technic:zinc_ingot"},
	output = "elepower_dynamics:zinc_plate 2",
	time   = 4
})

elepm.register_craft({
	type   = "compress",
	recipe = {"technic:cast_iron_ingot", "technic:cast_iron_ingot"},
	output = "elepower_dynamics:iron_plate 2",
})

--Conduit
minetest.register_craft({
	output = "elepower_dynamics:conduit 8",
	recipe = {
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
		{"basic_materials:copper_wire", "basic_materials:copper_wire", "basic_materials:copper_wire"},
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
	},
	replacements = {
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
	}
})

--Gears
minetest.register_craft({
	output = "elepower_dynamics:iron_gear",
	recipe = {
		{"", "group:iron_ingot", ""},
		{"group:iron_ingot", "", "group:iron_ingot"},
		{"", "group:iron_ingot", ""},
	}
})

minetest.register_craft({
	output = "elepower_dynamics:lead_gear",
	recipe = {
		{"", "group:lead_ingot", ""},
		{"group:lead_ingot", "", "group:lead_ingot"},
		{"", "group:lead_ingot", ""},
	}
})

--Lead strip
minetest.register_craft({
	output = "basic_materials:lead_strip 12",
	recipe = {
		{"", "group:lead_ingot"},
		{"group:lead_ingot", ""},
	}
})

--Machine block
if minetest.get_modpath("elepower_nuclear") then
	minetest.register_craft({
	output = "elepower_nuclear:machine_block",
	recipe = {
		{"elepower_dynamics:induction_coil_advanced", "elepower_dynamics:graphite_ingot", "elepower_dynamics:induction_coil_advanced"},
		{"elepower_dynamics:graphite_ingot", "technic:lead_block", "elepower_dynamics:graphite_ingot"},
		{"technic:lead_block", "elepower_dynamics:graphite_ingot", "technic:lead_block"},
	}
	})
end

-- Opaque Fluid Duct
minetest.register_craft({
	output = "elepower_dynamics:opaque_duct 3",
	recipe = {
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
		{"fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct"},
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
	}
})

--Power cell
minetest.register_craft({
	output = "elepower_machines:power_cell_0",
	recipe = {
		{"group:lead_ingot", "elepower_dynamics:control_circuit", "group:lead_ingot"},
		{"elepower_dynamics:wound_copper_coil", "elepower_machines:machine_block", "elepower_dynamics:wound_copper_coil"},
		{"group:lead_ingot", "elepower_dynamics:battery", "group:lead_ingot"},
	}
})

--Sawmill
minetest.register_craft({
	output = "elepower_machines:sawmill",
	recipe = {
		{"", "elepower_dynamics:integrated_circuit", ""},
		{"elepower_dynamics:steel_gear", "elepower_machines:machine_block", "elepower_dynamics:steel_gear"},
		{"group:lead_ingot", "elepower_dynamics:diamond_gear", "group:lead_ingot"},
	}
})

--Smelting
minetest.register_craft({
	type   = "cooking",
	output = "basic_materials:brass_ingot",
	recipe = "elepower_dynamics:brass_dust"
})

minetest.register_craft({
	type   = "cooking",
	output = "default:bronze_ingot",
	recipe = "elepower_dynamics:bronze_dust"
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:coal_dust",
	burntime = 50,
})

minetest.register_craft({
	type   = "cooking",
	output = "elepower_dynamics:lead_ingot",
	recipe = "technic:lead_ingot"
})

minetest.register_craft({
	type   = "cooking",
	output = "technic:lead_ingot",
	recipe = "elepower_dynamics:lead_ingot"
})

minetest.register_craft({
	type   = "cooking",
	output = "elepower_dynamics:zinc_ingot",
	recipe = "technic:zinc_ingot"
})

minetest.register_craft({
	type   = "cooking",
	output = "technic:zinc_ingot",
	recipe = "elepower_dynamics:zinc_ingot"
})

--Soldering
elepm.register_craft({
	type   = "solder",
	recipe = {"elepower_dynamics:induction_coil 4", "basic_materials:copper_wire", "technic:zinc_dust 2"},
	output = "elepower_dynamics:induction_coil_advanced",
	time   = 18
})

elepm.register_craft({
	type   = "solder",
	recipe = { "elepower_dynamics:silicon_wafer_doped", "elepower_dynamics:chip 4", "technic:lead_ingot 2" },
	output = "elepower_dynamics:microcontroller",
	time   = 8,
})

--Tools
minetest.register_craft({
	output = 'elepower_dynamics:axe_iron',
	recipe = {
		{'group:iron_ingot', 'group:iron_ingot'},
		{'group:iron_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:axe_lead',
	recipe = {
		{'group:lead_ingot', 'group:lead_ingot'},
		{'group:lead_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'bucket:bucket_empty',
	recipe = {
		{'group:iron_ingot', '', 'group:iron_ingot'},
		{'', 'group:iron_ingot', ''},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:pick_iron',
	recipe = {
		{'group:iron_ingot', 'group:iron_ingot', 'group:iron_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:pick_lead',
	recipe = {
		{'group:lead_ingot', 'group:lead_ingot', 'group:lead_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:shovel_iron',
	recipe = {
		{'group:iron_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:shovel_lead',
	recipe = {
		{'group:lead_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:sword_iron',
	recipe = {
		{'group:iron_ingot'},
		{'group:iron_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'elepower_dynamics:sword_lead',
	recipe = {
		{'group:lead_ingot'},
		{'group:lead_ingot'},
		{'group:stick'},
	}
})

if minetest.get_modpath ("elepower_tools") then	
	minetest.register_craft({
		output = "elepower_tools:boots_carbon",
		recipe = {
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
		}
	})
	
	minetest.register_craft({
		output = "elepower_tools:chestplate_carbon",
		recipe = {
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "technic:carbon_cloth", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "technic:carbon_cloth", "technic:carbon_cloth"},
		}
	})
	
	minetest.register_craft({
		output = "elepower_tools:helmet_carbon",
		recipe = {
			{"technic:carbon_cloth", "technic:carbon_cloth", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
		}
	})
	
	minetest.register_craft({
		output = "elepower_tools:leggings_carbon",
		recipe = {
			{"technic:carbon_cloth", "technic:carbon_cloth", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
			{"technic:carbon_cloth", "", "technic:carbon_cloth"},
		}
	})
end

--Wound coils
minetest.register_craft({
	output = "elepower_dynamics:wound_copper_coil",
	recipe = {
		{"", "default:copper_ingot", ""},
		{"default:copper_ingot", "group:iron_ingot", "default:copper_ingot"},
		{"", "default:copper_ingot", ""}
	}
})

minetest.register_craft({
	output = "elepower_dynamics:wound_copper_coil",
	recipe = {
		{"", "basic_materials:copper_wire", ""},
		{"basic_materials:copper_wire", "group:iron_ingot", "basic_materials:copper_wire"},
		{"", "basic_materials:copper_wire", ""}
	},
	replacements = {
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
	}
})

minetest.register_craft({
	output = "elepower_dynamics:wound_silver_coil",
	recipe = {
		{"", "moreores:silver_ingot", ""},
		{"moreores:silver_ingot", "group:zinc_ingot", "moreores:silver_ingot"},
		{"", "moreores:silver_ingot", ""}
	}
})

minetest.register_craft({
	output = "elepower_dynamics:wound_silver_coil",
	recipe = {
		{"", "basic_materials:silver_wire", ""},
		{"basic_materials:silver_wire", "group:zinc_ingot", "basic_materials:silver_wire"},
		{"", "basic_materials:silver_wire", ""}
	},
	replacements = {
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
	}
})
