--This is a function that registers alloying recipes for both technic and elepower alloy furnaces.

function register_alloy_recipe(input1, input2, output1, time1, time2) 
	technic.register_alloy_recipe({
		input  = {input1, input2},
		output = output1,	
		time = time1 or 6
	})
	elepm.register_craft({
		type   = "alloy",
		recipe = {input1, input2},
		output = output1,
		time = time2 or 4
	})
end

minetest.chat_send_all("The function is being called.")