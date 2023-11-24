--Ore overrides to clear unneeded ores.
local lead_to_use = minetest.settings:get("lead_used")

if lead_to_use == "technic" then
    minetest.register_abm({
        nodenames = {"elepower_dynamics:stone_with_lead"}, -- replace with the name of the ore
        interval = 1, -- runs every 1 second
        chance = 1, -- always fires
        action = function(pos)
            minetest.swap_node(pos, {name = "default:stone"})
        end,
    })
elseif lead_to_use == "elepower" then
    minetest.register_abm({
        nodenames = {"technic:mineral_lead"}, -- replace with the name of the ore
	interval = 1, -- runs every 1 second
    	chance = 1, -- always fires
  	action = function(pos)
        	minetest.swap_node(pos, {name = "default:stone"})
    	end,
    })
elseif lead_to_use == "both" then
	return false
end

local zinc_to_use = minetest.settings:get("zinc_used")

if zinc_to_use == "technic" then
    minetest.register_abm({
    	nodenames = {"elepower_dynamics:stone_with_zinc"}, -- replace with the name of the ore
    	interval = 1, -- runs every 1 second
    	chance = 1, -- always fires
    	action = function(pos)
        	minetest.swap_node(pos, {name = "default:stone"})
    	end,
    })
elseif zinc_to_use == "elepower" then 
    minetest.register_abm({
        nodenames = {"technic:mineral_zinc"}, -- replace with the name of the ore
	interval = 1, -- runs every 1 second
    	chance = 1, -- always fires
  	action = function(pos)
        	minetest.swap_node(pos, {name = "default:stone"})
    	end,
    })
elseif zinc_to_use == "both" then
    return false
end

--Adding dust and ingot groups
minetest.override_item("technic:coal_dust", {
	groups = {coal_dust = 1},
})

minetest.override_item("elepower_dynamics:coal_dust", {
	groups = {coal_dust = 1},
})

minetest.override_item("technic:cast_iron_ingot", {
	groups = {iron_ingot = 1},
})

minetest.override_item("elepower_dynamics:iron_ingot", {
	groups = {iron_ingot = 1},
})

minetest.override_item("technic:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("elepower_dynamics:lead_dust", {
	groups = {lead_dust = 1},
})

minetest.override_item("technic:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("elepower_dynamics:lead_ingot", {
	groups = {lead_ingot = 1},
})

minetest.override_item("technic:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("elepower_dynamics:zinc_dust", {
	groups = {zinc_dust = 1},
})

minetest.override_item("technic:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

minetest.override_item("elepower_dynamics:zinc_ingot", {
	groups = {zinc_ingot = 1},
})

--Battery
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:zinc_dust", "elepower_dynamics:graphite_rod", "elepower_dynamics:lead_dust"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
		{"elepower_dynamics:tin_plate", "default:mese_crystal_fragment", "elepower_dynamics:tin_plate"},
	}
})

--Coal dust
minetest.clear_craft({
	type = "fuel",
	recipe = "technic:coal_dust",
	burntime = 50,
})

--Conduit
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"basic_materials:copper_wire", "basic_materials:copper_wire", "basic_materials:copper_wire"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	}
})

--Gears
minetest.clear_craft({
	output = "elepower_dynamics:iron_gear",
	recipe = {
		{"", "elepower_dynamics:iron_ingot", ""},
		{"elepower_dynamics:iron_ingot", "", "elepower_dynamics:iron_ingot"},
		{"", "elepower_dynamics:iron_ingot", ""},
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

--Opaque Fluid Duct
minetest.clear_craft({
	recipe = {
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
		{"fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct", "fluid_transfer:fluid_duct"},
		{"elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot",  "elepower_dynamics:lead_ingot"},
	}
})

--Power cell
minetest.clear_craft({
	output = "elepower_machines:power_cell_0",
	recipe = {
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:control_circuit", "elepower_dynamics:lead_ingot"},
		{"elepower_dynamics:wound_copper_coil", "elepower_machines:machine_block", "elepower_dynamics:wound_copper_coil"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:battery", "elepower_dynamics:lead_ingot"},
	}
})

--Sawmill
minetest.clear_craft({
	output = "elepower_machines:sawmill",
	recipe = {
		{"", "elepower_dynamics:integrated_circuit", ""},
		{"elepower_dynamics:steel_gear", "elepower_machines:machine_block", "elepower_dynamics:steel_gear"},
		{"elepower_dynamics:lead_ingot", "elepower_dynamics:diamond_gear", "elepower_dynamics:lead_ingot"},
	}
})

--Tools
minetest.clear_craft({
	output = 'elepower_dynamics:axe_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot'},
		{'elepower_dynamics:iron_ingot', 'group:stick'},
		{'', 'group:stick'},
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
	recipe = {
		{'elepower_dynamics:iron_ingot', '', 'elepower_dynamics:iron_ingot'},
		{'', 'elepower_dynamics:iron_ingot', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot', 'elepower_dynamics:iron_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_lead',
	recipe = {
		{'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot', 'elepower_dynamics:lead_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot'},
		{'group:stick'},
		{'group:stick'},
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
	output = 'elepower_dynamics:sword_iron',
	recipe = {
		{'elepower_dynamics:iron_ingot'},
		{'elepower_dynamics:iron_ingot'},
		{'group:stick'},
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

--Wound coils
minetest.clear_craft({
	output = "elepower_dynamics:wound_copper_coil",
})

minetest.clear_craft({
	output = "elepower_dynamics:wound_silver_coil",
})
