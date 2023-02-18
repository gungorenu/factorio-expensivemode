require("prototypes.expensive")

-- if set to true then shall use direct copy from "expensive" part but in 1.2 it might go off, to avoid a crash switch the method and it should continue
local useOverwrite = settings.startup["ugung-expensivemode-use-overwrite"].value

if settings.startup["ugung-expensivemode-enabled"].value then

    if useOverwrite then
        set_recipe_from_expensive("express-transport-belt")
        set_recipe_from_expensive("pipe")
        set_recipe_from_expensive("tank")
        set_recipe_from_expensive("steel-plate")
        set_recipe_from_expensive("battery")
        set_recipe_from_expensive("explosives")
        set_recipe_from_expensive("iron-gear-wheel")
        set_recipe_from_expensive("electronic-circuit")
        set_recipe_from_expensive("advanced-circuit")
        set_recipe_from_expensive("processing-unit")
        set_recipe_from_expensive("low-density-structure")
        set_recipe_from_expensive("submachine-gun")
        set_recipe_from_expensive("cannon-shell")
        set_recipe_from_expensive("explosive-cannon-shell")
        set_recipe_from_expensive("steam-engine")
        set_recipe_from_expensive("burner-mining-drill")
        set_recipe_from_expensive("electric-mining-drill")
        set_recipe_from_expensive("assembling-machine-2")
    else
        update_recipe_with_expensive_custom_output("express-transport-belt", {
            {"iron-gear-wheel", 20},
            {"fast-transport-belt", 1},
            {type="fluid", name="lubricant", amount=20}
        }, 0.5, nil, nil)
        update_recipe_with_expensive_custom_output("pipe", {{"iron-plate", 2}}, 0.5, nil, nil)
        update_recipe_with_expensive_custom_output("tank", {
            {"engine-unit", 64},
            {"steel-plate", 100},
            {"iron-gear-wheel", 30},
            {"advanced-circuit", 20}
        }, 8, nil, nil)
        update_recipe_with_expensive_custom_output("steel-plate", {{"iron-plate", 10}}, 32, nil, nil)
        update_recipe_with_expensive_custom_output("battery", {
            {type="fluid", name="sulfuric-acid", amount=40},
            {"iron-plate", 1},
            {"copper-plate", 1}
        }, 5, nil, nil)
        update_recipe_with_expensive_custom_output("explosives", {
            {type="item", name="sulfur", amount=2},
            {type="item", name="coal", amount=2},
            {type="fluid", name="water", amount=10}
        }, 5, nil, 2)
        update_recipe_with_expensive_custom_output("iron-gear-wheel", {{"iron-plate", 4}}, 0.5, nil, nil)
        update_recipe_with_expensive_custom_output("electronic-circuit", {
            {"iron-plate", 2},
            {"copper-cable", 8}
        }, 0.5, nil, nil)
        update_recipe_with_expensive_custom_output("advanced-circuit", {
            {"electronic-circuit", 2},
            {"plastic-bar", 4},
            {"copper-cable", 8}
        }, 6, nil, nil)
        update_recipe_with_expensive_custom_output("processing-unit", {
            {"electronic-circuit", 20},
            {"advanced-circuit", 2},
            {type = "fluid", name = "sulfuric-acid", amount = 10}
        }, 10, nil, nil)
        update_recipe_with_expensive_custom_output("low-density-structure", {
            {"steel-plate", 2},
            {"copper-plate", 20},
            {"plastic-bar", 30}
        }, 20, nil, nil)
        update_recipe_with_expensive_custom_output("submachine-gun", {
            {"iron-gear-wheel", 15},
            {"copper-plate", 20},
            {"iron-plate", 30}
        }, 10, nil, nil)
        update_recipe_with_expensive_custom_output("cannon-shell", {
            {"steel-plate", 4},
            {"plastic-bar", 4},
            {"explosives", 1}
        }, 8, nil, nil)
        update_recipe_with_expensive_custom_output("explosive-cannon-shell", {
            {"steel-plate", 4},
            {"plastic-bar", 4},
            {"explosives", 2}
        }, 8, nil, nil)
        update_recipe_with_expensive_custom_output("steam-engine", {
            {"iron-gear-wheel", 10},
            {"pipe", 5},
            {"iron-plate", 50}
        }, 0.5, nil, nil)
        update_recipe_with_expensive_custom_output("burner-mining-drill", {
            {"iron-gear-wheel", 6},
            {"stone-furnace", 2},
            {"iron-plate", 6}
        }, 4, nil, nil)
        update_recipe_with_expensive_custom_output("electric-mining-drill", {
            {"electronic-circuit", 5},
            {"iron-gear-wheel", 10},
            {"iron-plate", 20}
        }, 2, nil, nil)
        update_recipe_with_expensive_custom_output("assembling-machine-2", {
            {"steel-plate", 5},
            {"electronic-circuit", 5},
            {"iron-gear-wheel", 10},
            {"assembling-machine-1", 1}
        }, 0.5, nil, nil)
    end
end
