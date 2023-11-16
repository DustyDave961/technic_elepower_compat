--Override lead and zinc ingots and dust and add groups for each.
minetest.override_item("technic:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("technic:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

minetest.override_item("elepower_dynamics:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("elepower_dynamics:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

minetest.override_item("technic:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("technic:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("elepower_dynamics:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("elepower_dynamics:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("technic:lead_lump", {
	groups = {lead_lump = 1},
})

minetest.override_item("technic:zinc_lump", {
	groups = {zinc_lump = 1},
})

minetest.override_item("elepower_dynamics:lead_lump", {
	groups = {lead_lump = 1},
})

minetest.override_item("elepower_dynamics:zinc_lump", {
	groups = {zinc_lump = 1},
})

--Clear duplicate recipes.
minetest.clear_craft({
	output = "elepower_machines:sawmill",
	recipe = {
		{"", "elepower_dynamics:integrated_circuit", ""},
		{"elepower_dynamics:steel_gear", "elepower_machines:machine_block", "elepower_dynamics:steel_gear"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:diamond_gear", "elepower_dynamics:lead_ingot"},
	}
})

minetest.clear_craft({
	output = "elepower_machines:power_cell_0",
	recipe = {
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:control_circuit", "elepower_dynamics:lead_ingot"},
		{"elepower_dynamics:wound_copper_coil", "elepower_machines:machine_block", "elepower_dynamics:wound_copper_coil"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:battery", "elepower_dynamics:lead_ingot"},
	}
})

--Lead and zinc ingot smelting
minetest.clear_craft({
	type   = "cooking",
	output = "elepower_dynamics:lead_ingot",
	recipe = "elepower_dynamics:lead_lump"
})

minetest.clear_craft({
	type   = "cooking",
	output = "technic:lead_ingot",
	recipe = "technic:lead_lump"
})

minetest.clear_craft({
	type   = "cooking",
	output = "elepower_dynamics:lead_ingot",
	recipe = "elepower_dynamics:lead_dust"
})

minetest.clear_craft({
	type   = "cooking",
	output = "technic:lead_ingot",
	recipe = "technic:lead_dust"
})

minetest.clear_craft({
	type   = "cooking",
	output = "elepower_dynamics:zinc_ingot",
	recipe = "elepower_dynamics:zinc_lump"
})

minetest.clear_craft({
	type   = "cooking",
	output = "technic:zinc_ingot",
	recipe = "technic:zinc_lump"
})

minetest.clear_craft({
	type   = "cooking",
	output = "elepower_dynamics:zinc_ingot",
	recipe = "elepower_dynamics:zinc_dust"
})

minetest.clear_craft({
	type   = "cooking",
	output = "technic:zinc_ingot",
	recipe = "technic:zinc_dust"
})

--Lead tools
minetest.clear_craft({
	output = 'elepower_dynamics:pick_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:axe_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot'},
		{'elepower_dynamics:lead_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:sword_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot'},
		{'elepower_dynamics:lead_ingot'},
		{'group:stick'},
	}
})

--Conduit
minetest.clear_craft({
	output = "elepower_dynamics:conduit 8",
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"basic_materials:copper_wire", "basic_materials:copper_wire", "basic_materials:copper_wire"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	},
	replacements = {
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
	}
})

-- Opaque Fluid Duct
minetest.clear_craft({
	output = "elepower_dynamics:opaque_duct 3",
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	}
})

minetest.clear_craft({
	output = "elepower_dynamics:wound_silver_coil",
	recipe = {
		{"", "moreores:silver_ingot", ""},
		{"moreores:silver_ingot", "elepower_dynamics:zinc_ingot", "moreores:silver_ingot"},
		{"", "moreores:silver_ingot", ""}
	}
})

minetest.clear_craft({
	output = "elepower_dynamics:wound_silver_coil",
	recipe = {
		{"", "basic_materials:silver_wire", ""},
		{"basic_materials:silver_wire", "elepower_dynamics:zinc_ingot", "basic_materials:silver_wire"},
		{"", "basic_materials:silver_wire", ""}
	},
	replacements = {
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
		{"basic_materials:silver_wire", "basic_materials:empty_spool"},
	}
})

minetest.clear_craft({
	output = "elepower_dynamics:battery 2",
	recipe = {
		{"elepower_dynamics:zinc_dust", "elepower_dynamics:graphite_rod", "elepower_dynamics:lead_dust"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
	}
})

minetest.clear_craft({
	output = "elepower_dynamics:lead_gear",
	recipe = {
		{"", "elepower_dynamics:lead_ingot", ""},
		{"elepower_dynamics:lead_ingot", "", "elepower_dynamics:lead_ingot"},
		{"", "elepower_dynamics:lead_ingot", ""},
	}
})