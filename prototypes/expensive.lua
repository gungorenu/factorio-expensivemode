-- expensive recipe overrider
function set_recipe_from_expensive(name)
    -- get game recipe
    local recipe = data.raw.recipe[name]

    -- get stuff from expensive part and overwrite to normal side
    recipe.ingredients = recipe.expensive.ingredients
    recipe.enabled = recipe.expensive.enabled
    recipe.energy_required = recipe.expensive.energy_required
    recipe.result = recipe.expensive.result
    recipe.results = recipe.expensive.results
    recipe.result_count = recipe.expensive.result_count

    -- reset normal/expensive
    recipe.expensive = nil
    recipe.normal = nil
end 

-- update manually single output
function update_recipe_with_expensive_custom_output(name,myingredients,mytime,myoutput,myoutputcount)
    -- get game recipe
    local recipe = data.raw.recipe[name]

    -- reset normal/expensive
    recipe.expensive = nil
    recipe.normal = nil

    -- update recipe
    recipe.ingredients = myingredients
    recipe.energy_required = mytime

    if myoutput then
        recipe.result = myoutput
    else
        recipe.result = name
    end
    if myoutputcount then
        recipe.result_count = myoutputcount
    else
        recipe.result_count = 1
    end
end

-- update manually multiple output
function update_recipe_with_expensive_custom_outputs(name,myingredients,mytime,myoutput)
    -- get game recipe
    local recipe = data.raw.recipe[name]

    -- reset normal/expensive
    recipe.expensive = nil
    recipe.normal = nil

    -- update recipe
    recipe.ingredients = myingredients
    recipe.energy_required = mytime
    recipe.results = myoutput
    recipe.result_count = nil
end
