local modpath = minetest.get_modpath("technic_elepower_compat")

dofile(modpath .. "/overrides.lua")
dofile(modpath .. "/grind_recipes.lua")
dofile(modpath .. "/alloy_compat.lua")
dofile(modpath .. "/craft_compat.lua")

if minetest.get_setting("enable_power_converter") then
  dofile(modpath .. "/power_converter.lua")
end

if minetest.get_setting("enable_on_join_player_message") then
    minetest.register_on_joinplayer(function(player)
        local name = player:get_player_name()
        minetest.chat_send_player(name, "If you would like to test the beta power converter node, then go to settings, search 'technic_elepower_compat', and enable the converter.")
    end)
end
