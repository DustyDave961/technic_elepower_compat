local modpath = minetest.get_modpath("technic_elepower_compat")

dofile(modpath .. "/overrides.lua")
dofile(modpath .. "/grind_recipes.lua")
dofile(modpath .. "/register_alloys.lua")
dofile(modpath .. "/craft_compat.lua")

if minetest.get_setting("enable_power_converter") then
  dofile(modpath .. "/power_converter.lua")
end
