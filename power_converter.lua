node_positions = {}

minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= "technic_elepower_compat:power_converter" then
        -- If the formname does not match, do nothing
        return
    end

    -- Get the position of the node that the player was interacting with
    local pos = node_positions[player:get_player_name()]

    -- Get the metadata of the node
    local meta = minetest.get_meta(pos)

    -- Check which button was pressed and update the metadata accordingly
    if fields.toggle_direction then
        local current_direction = meta:get_string("conversion_direction")
        if current_direction == "technic_to_elepower" then
            meta:set_string("conversion_direction", "elepower_to_technic")
        else
            meta:set_string("conversion_direction", "technic_to_elepower")
        end
    elseif fields.toggle_on_off then
        local current_state = meta:get_string("state")
        if current_state == "on" then
            meta:set_string("state", "off")
        else
            meta:set_string("state", "on")
        end
    elseif fields.set_en_input then
        meta:set_string("en_input", fields.en_input)
    end
end)

function get_formspec(pow_buffer)
    return "size[5,4]" ..
        "label[0,0;Storage: " .. pow_buffer.storage .. "/" .. pow_buffer.capacity .. "]" ..
        "label[0,1;Output: " .. pow_buffer.usage .. "]" ..
        "button[0,2;5,1;toggle;Toggle On/Off]"
end

ele.register_machine("technic_elepower_compat:power_converter", {
    description = "Power Converter",
    tiles = {"converter_top.png", "converter_bottom.png", "converter_side.png"},
    groups = {cracky=3, ele_machine = 1, ele_user = 1, ele_provider = 1, technic_machine=1, technic_lv=1},
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        -- Store the position of the node that the player is interacting with
        node_positions[clicker:get_player_name()] = pos

        -- Get the metadata of the node
        local meta = minetest.get_meta(pos)

        -- Create the formspec
        local formspec = "size[5,4]" ..
            "button[0.5,0.5;4,1;toggle_direction;Toggle Conversion Direction]" ..
            "button[0.5,1.5;4,1;toggle_on_off;Toggle On/Off]" ..
            "field[0.5,2.5;4,1;en_input;EU Input;" .. meta:get_string("en_input") .. "]" ..
            "button[0.5,3.5;4,1;set_en_input;Set EU Input]"

        -- Show the formspec to the player
        minetest.show_formspec(clicker:get_player_name(), "technic_elepower_compat:power_converter", formspec)
    end,
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        -- initialize en_input, state, and conversion_direction to default values
        meta:set_string("en_input", "0")
        meta:set_string("state", "off")
        meta:set_string("conversion_direction", "technic_to_elepower")
        -- start the timer
        minetest.get_node_timer(pos):start(1.0)
	meta:set_string("pos", minetest.pos_to_string(pos))
    end,
    on_timer = function(pos, elapsed)
        local meta = minetest.get_meta(pos)
        local state = meta:get_string("state")
        local direction = meta:get_string("conversion_direction")
	local en_input_str = meta:get_string("en_input")
        local en_input = tonumber(en_input_str)
	local eu_input = meta:get_int("LV_EU_input")
	local capacity   = ele.helpers.get_node_property(meta, pos, "capacity")
	local inrush     = ele.helpers.get_node_property(meta, pos, "inrush")
	local storage    = meta:get_int("storage")
	local generation = ele.helpers.get_node_property(meta, pos, "usage")
        local is_enabled = state == "on"
        local pow_buffer = {capacity = capacity, storage = storage, usage = 0}
        local status = "Idle"

        if en_input == nil then
	    en_input = 0
	    meta:set_string("en_input", "0")
	end

        if is_enabled then
            pow_buffer.usage = generation
            pow_buffer.storage = pow_buffer.storage + pow_buffer.usage
            if pow_buffer.storage > capacity then
                pow_buffer.storage = capacity
            end
            status = "Active"
        end

        meta:set_string("formspec", get_formspec(pow_buffer))
        meta:set_string("infotext", ("%s %s\n%s"):format("Test Node", status, ele.capacity_text(capacity, pow_buffer.storage)))
        meta:set_int("storage", pow_buffer.storage)

        if state == "on" then
            if direction == "elepower_to_technic" then
                if storage >= 2*(en_input) then
                    -- If storage is greater than en_input, output power
                    meta:set_int("usage", en_input - (en_input + en_input))
                    meta:set_int("inrush", en_input)
                    meta:set_int("output", 0)
                    meta:set_int("LV_EU_supply", en_input)
	       	    meta:set_int("LV_EU_demand", 0)
                    status = "Active"
                else
                    -- If storage is not greater than en_input, stop outputting power
                    meta:set_int("usage", 0)
                    meta:set_int("output", 0)
                    meta:set_int("inrush", en_input)
                    meta:set_int("LV_EU_supply", 0)
		    meta:set_int("LV_EU_demand", 0)
                    status = "Unpowered"
                end
            elseif direction == "technic_to_elepower" then
		if eu_input >= en_input then
                    meta:set_int("inrush", en_input)
                    meta:set_int("output", en_input)
                    meta:set_int("usage", en_input)
                    meta:set_int("LV_EU_demand", en_input)
                    meta:set_int("LV_EU_supply", 0)
		    status = "Active"
                else
		    meta:set_int("inrush", 0)
                    meta:set_int("output", en_input)
                    meta:set_int("usage", 0)
                    meta:set_int("LV_EU_demand", en_input)
                    meta:set_int("LV_EU_supply", 0)
		    status = "Unpowered"
	        end
		--[[if eu_input < en_input and storage >= 2*(en_input) then
                    meta:set_int("inrush", 0)
                    meta:set_int("output", en_input)
                    meta:set_int("usage", 0)
                    meta:set_int("LV_EU_demand", 0)
                    meta:set_int("LV_EU_supply", 0)
		    status = "Active"
		end]]
	    end
        elseif state == "off" then
            --if the machine is off, set the inrush to 0 and the Technic demand and supply to 0
            meta:set_int("output", 0)
            meta:set_int("inrush", 0)
            meta:set_int("usage", 0)
            meta:set_int("LV_EU_demand", 0)
            meta:set_int("LV_EU_supply", 0)
        end


        meta:set_string("infotext", ("%s %s\n%s"):format("Power Converter", status, ele.capacity_text(capacity, pow_buffer.storage)))

--[[        local pos_string = minetest.get_meta(pos):get_string("pos")
        local pos = minetest.string_to_pos(pos_string) 
        local metadata = minetest.get_meta(pos):to_table()
        minetest.chat_send_all("Metadata for technic_elepower_compat:power_converter: " .. minetest.serialize(metadata))
]]

        -- restart the timer
        local timer = minetest.get_node_timer(pos)
        timer:start(1.0)
    end,
    ele_capacity = 10000,
    ele_usage = 0,
    ele_inrush = 0,
    ele_output = 0,
    
    connect_sides = {"right", "left", "top", "bottom"}
})

technic.register_machine("LV", "technic_elepower_compat:power_converter", technic.producer_receiver)
