local modpath = minetest.get_modpath("technic_elepower_compat")

dofile(modpath .. "/overrides.lua")
dofile(modpath .. "/grind_recipes.lua")
dofile(modpath .. "/alloy_compat.lua")
dofile(modpath .. "/craft_compat.lua")
dofile(modpath .. "/manual.lua")

if minetest.settings:get_bool("enable_power_converter") then
  dofile(modpath .. "/power_converter.lua")
end

if minetest.settings:get_bool("enable_on_join_player_message") then
    minetest.register_on_joinplayer(function(player)
        minetest.chat_send_player(player:get_player_name(), "[Technic Elepower Compat] If you would like to test the beta power converter node, then go to settings, search 'technic_elepower_compat', and enable the converter.")
        minetest.log("action", player:get_player_name() .. " joined the game")
    end)
end
