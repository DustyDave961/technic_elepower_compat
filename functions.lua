--Register alloying recipes for both technic and elepower alloy furnaces.
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

--Register grinding recipes for elepower pulverizers, grindstones, and technic grinders.
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

---For grinding ore materials in elepower grindstones and pulverizers, time = output + 4.
