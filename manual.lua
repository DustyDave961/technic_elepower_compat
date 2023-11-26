minetest.register_on_newplayer(function(player)
    local inv = player:get_inventory()
    local stack = ItemStack("default:book_written")
    stack:set_metadata(minetest.serialize({
        title = "Technic Elepower Compat Manual",
        text = [[Overview:

In this manual you will get important instructions on what and why this mod does what it does and on what settings are available to you and on the future of this mod.

Table of contents:
About this mod
Available or to be Added Features/Settings
Other Important Information
Planned Future Features

About this mod:

This mod’s entire purpose is to make technic and elepower work together as you already know and because of this DumbDave961 and I will not be adding any new features unless it is to make technic and elepower work together better. This mod is in its beta stages and some features mentioned above may not be bug free or complete or added yet. 
We would greatly appreciate any feedback you could give us like bug reports or ideas you have for the mod. Please report bugs and feature requests to
https://GitHub.com/DumbDave961/technic_elepower_compat/issues.

Available or to be Added Features/Settings
	To make elepower and technic work together, this mod makes machine processing recipes work in both elepower and technic machines so for example you can make the same kind of silicon wafer in both the technic and elepower alloy furnace. Whether you get the elepower one or technic one is up to you as you can choose in this mod’s settings. You can even make each kind in their respective machines if you want. It also adds groups for things like lead and zinc so that you can use either lead or zinc in regular recipes. You can choose to use both kinds of lead or zinc or one or the other. If you do decide to use one kind of lead and zinc be aware that the ore for the lead or zinc that you aren't using will be PERMANENTLY REPLACED WITH STONE. This mod is supposed to be highly customizable so there will be lots of settings to check out. There is also a beta power converter node that transmits energy from the elepower grid to the technic lv grid and vice versa. This is not enabled by default because it is currently kinda broken.

Planned Future Features:
Make power converter work for all technic tiers
Add efficiency variable to conversion logic
]],
        owner = "Bob64 and DumbDave961 as the editor",
    }))
    inv:add_item("main", stack)
end)
