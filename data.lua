---@class nil
---@field autotech_startup boolean

---@type fun(graph: dependency_graph)[]
_G.dependency_graph_lib_custom_callbacks = {}

--- Registers a custom function to be run after the initial graph generation but before the linearisation.
--- To be called in the data-updates phase.
---@param fun fun(graph: dependency_graph)
function _G.dependency_graph_lib_register_custom_callback(fun)
    dependency_graph_lib_custom_callbacks[#dependency_graph_lib_custom_callbacks + 1] = fun
end
    


-- Register vanilla startup items
-- Other mods should add or remove this flag to their items as needed during data-updates
data.raw.item["wood"].autotech_startup = true
data.raw.item["iron-plate"].autotech_startup = true
data.raw.item["burner-mining-drill"].autotech_startup = true
data.raw.item["stone-furnace"].autotech_startup = true
data.raw.gun["pistol"].autotech_startup = true
data.raw.ammo["firearm-magazine"].autotech_startup = true

-- Register vanilla startup entities
-- Other mods should add or remove this flag to their entities as needed
-- Only add entities which are placed on the map and not items in the inventory or checsts, etc.
data.raw.character["character"].autotech_startup = true

-- Register vanilla startup planet
data.raw.planet["nauvis"].autotech_startup = true
