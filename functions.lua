--This is a function that registers grinding recipes for technic grinders and elepower pulverizers.

function register_grind_recipe(input1, output1, time1, time2) 
	technic.register_grinder_recipe({
		input  = {input1},
		output = output1,	
		time = time1 or 3
	})
	elepm.register_craft({
		type   = "grind",
		recipe = {input1},
		output = output1,
		time = time2 or 8
	})
end

minetest.chat_send_all("The function is being called.")

--For grinding ore materials in elepower grindstones and pulverizers, time = output + 4.



