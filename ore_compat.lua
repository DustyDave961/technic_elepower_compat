--This needs to clear the unneeded ores

--Ore overrides
minetest.register_abm({
    nodenames = {"elepower_dynamics:stone_with_lead"}, -- replace with the name of the ore
    interval = 1, -- runs every 1 second
    chance = 1, -- always fires
    action = function(pos)
        minetest.swap_node(pos, {name = "default:stone"})
    end,
})

minetest.register_abm({
    nodenames = {"elepower_dynamics:stone_with_zinc"}, -- replace with the name of the ore
    interval = 1, -- runs every 1 second
    chance = 1, -- always fires
    action = function(pos)
        minetest.swap_node(pos, {name = "default:stone"})
    end,
})