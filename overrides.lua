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

minetest.override_item("technic:sulfur_lump", {
	groups = {sulfur = 1},
})

minetest.override_item("technic:sulfur_dust", {
	groups = {sulfur = 1},
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

--Batteries
minetest.clear_craft({
	output = "elepower_dynamics:battery",
})

minetest.clear_craft({
	output = "technic:battery",
})

--Coal dust
minetest.clear_craft({
	type = "fuel",
	recipe = "technic:coal_dust",
	burntime = 50,
})

--Conduit
minetest.clear_craft({
	output = "elepower_dynamics:conduit",
})

--Gears
minetest.clear_craft({
	output = "elepower_dynamics:iron_gear",
})

minetest.clear_craft({
	output = "elepower_dynamics:lead_gear",
})

--Lead strip
minetest.clear_craft({
	output = "basic_materials:lead_strip",
})

--Opaque Fluid Duct
minetest.clear_craft({
	output = "elepower_dynamics:opaque_duct",
})

--Power cell
minetest.clear_craft({
	output = "elepower_machines:power_cell_0",
})

--Sawmill
minetest.clear_craft({
	output = "elepower_machines:sawmill",
})

--Tools
minetest.clear_craft({
	output = 'elepower_dynamics:axe_iron',
})

minetest.clear_craft({
	output = 'elepower_dynamics:axe_lead',
})

minetest.clear_craft({
	recipe = {
		{'elepower_dynamics:iron_ingot', '', 'elepower_dynamics:iron_ingot'},
		{'', 'elepower_dynamics:iron_ingot', ''},
	}
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_iron',
})

minetest.clear_craft({
	output = 'elepower_dynamics:pick_lead',
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_iron',
})

minetest.clear_craft({
	output = 'elepower_dynamics:shovel_lead',
})

minetest.clear_craft({
	output = 'elepower_dynamics:sword_iron',
})

minetest.clear_craft({
	output = 'elepower_dynamics:sword_lead',
})

--Wound coils
minetest.clear_craft({
	output = "elepower_dynamics:wound_copper_coil",
})

minetest.clear_craft({
	output = "elepower_dynamics:wound_silver_coil",
})

--Override fucntion to clear the recipes for technic machines
function clear_technic_recipe(recipe_type, recipe_input_name)
	minetest.after(0.1, function() --This has to be called with a delay for the table to load in.
	    technic.recipes[recipe_type]["recipes"][recipe_input_name] = nil
	end)
end

--[[This function accepts two parameters, the recipe type and
the name of the input of the recipe you want to clear
available recipe types:
    "grinding"
    "alloy"
    "extracting"
    "freezing"
    "separating" This one is for the centrifuge.
    "compressing"
    "cooking" This one is for the cooking recipes for the electric furnace but you should just be able to use the minetest.clear_craft to do it too.
The secound peramiter is the name of the recipe you want to override. This is the item name of the item you
put into the machine i.e "default:silver_sandstone" which will clear the recipe that uses the silver sandstone as an input.
Example: 
    clear_technic_recipe("grinding", "defualt:silver_sandstone") 
This will clear the grinding recipe that usese the "defualt:silver_sandstone" item as an input.
For alloy recipes this is different as you need to have as the names of the inputs like this:
    clear_technic_recipe("alloy", "input1/input2") 
Example:
    clear_technic_recipe("alloy", "technic:coal_dust/technic:raw_latex") 
This will clear the alloy recipe with the inputs of technic:coal_dust and technic:raw_latex
]]

--Ovverrides elpower machine recipes
function clear_elepower_recipe(craft_type, output_to_remove)
    minetest.after(0.5, function()
        local craft_table = elepm.craft[craft_type]
        local output_to_remove_itemstack = ItemStack(output_to_remove)
        for i = 1, #craft_table do
            -- Check if the output of the recipe at index i matches with output_to_remove
            if craft_table[i].output == output_to_remove_itemstack then
                -- Remove the recipe from the table
                table.remove(craft_table, i)
                -- Since we've modified the table, break the loop to avoid skipping the next element
                break
            end
        end
    end)
end

--[[
This function accepts two parameters, the recipe type and the output of the recipe you want to clear.
Recipe types:
    "compress"
    "grind" Their is one recipe that will not work with this function the grinding recipe for the depleated fuel rod because it has multiple outputs.
    "cooking" This one is for the cooking recipes for the electric furnace but you should just be able to use the minetest.clear_craft to do it too.
    "can"
    "solder"
    "alloy"
The secound parameter is the output of the recipe that you want to use i.e 
Example:
    clear_elepower_recipe("compress", "elepower_dynamics:zinc_plate 2")
This example function goes into the table compress and gets the first thing in the table with an index number of 1 and checks if it has
the specified output if it does it removes the item with that index number. If not then it goes to the next item in the list and checks again.
This function doesn't clear recipes with multiple outputs because it only tests for one input.
]]

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
