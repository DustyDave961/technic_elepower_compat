minetest.register_craft({
	output = "elepower_machines:sawmill",
	recipe = {
		{"", "elepower_dynamics:integrated_circuit", ""},
		{"elepower_dynamics:steel_gear", "elepower_machines:machine_block", "elepower_dynamics:steel_gear"},
		{"group:lead_ingot", "elepower_dynamics:diamond_gear", "group:lead_ingot"},
	}
})

minetest.register_craft({
	output = "elepower_machines:power_cell_0",
	recipe = {
		{"group:lead_ingot", "elepower_dynamics:control_circuit", "group:lead_ingot"},
		{"elepower_dynamics:wound_copper_coil", "elepower_machines:machine_block", "elepower_dynamics:wound_copper_coil"},
		{"group:lead_ingot", "elepower_dynamics:battery", "group:lead_ingot"},
	}
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

--Smelting
minetest.register_craft({
	type = "fuel",
	recipe = "group:coal_dust",
	burntime = 50,
})

minetest.register_craft({
	type   = "cooking",
	output = "technic:lead_ingot",
	recipe = "group:lead_lump"
})

minetest.register_craft({
	type   = "cooking",
	output = "technic:lead_ingot",
	recipe = "group:lead_dust"
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
	output = "technic:zinc_ingot",
	recipe = "group:zinc_lump"
})

minetest.register_craft({
	type   = "cooking",
	output = "technic:zinc_ingot",
	recipe = "group:zinc_dust"
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

--Lead tools
minetest.register_craft({
	output = 'elepower_dynamics:pick_lead',
	recipe = {
		{'group:lead_ingot', 'group:lead_ingot', 'group:lead_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
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
	output = 'elepower_dynamics:axe_lead',
	recipe = {
		{'group:lead_ingot', 'group:lead_ingot'},
		{'group:lead_ingot', 'group:stick'},
		{'', 'group:stick'},
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

-- Opaque Fluid Duct
minetest.register_craft({
	output = "elepower_dynamics:opaque_duct 3",
	recipe = {
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
		{"fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct"},
		{"group:lead_ingot",  "group:lead_ingot",  "group:lead_ingot"},
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

minetest.register_craft({
	output = "elepower_dynamics:battery 2",
	recipe = {
		{"group:zinc_dust", "elepower_dynamics:graphite_rod", "group:lead_dust"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
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

--Compression
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
