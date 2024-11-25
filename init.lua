local modpath = core.get_modpath("technic_elepower_compat")

dofile(modpath .. "/overrides.lua")
dofile(modpath .. "/grind_recipes.lua")
dofile(modpath .. "/alloy_compat.lua")
dofile(modpath .. "/craft_compat.lua")
dofile(modpath .. "/compress_compat.lua")
dofile(modpath .. "/manual.lua")
dofile(modpath .. "/ore_overrides.lua")

if core.settings:get_bool("enable_power_converter") then
  dofile(modpath .. "/power_converter.lua")
end

if core.settings:get_bool("enable_on_join_player_message") then
    core.register_on_newplayer(function(player)
        core.chat_send_player(player:get_player_name(), "[Technic Elepower Compat] If you would like to test the beta power converter node, then go to settings, search 'technic_elepower_compat', and enable the converter.")
    end)
end
