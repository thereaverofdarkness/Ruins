return function(center, surface)  --small smelting station
    local ce = surface.create_entity --save typing
    local fN = game.forces.neutral
    local direct = defines.direction
    ce{name = "stone-furnace", position = {center.x-2, center.y-2}, force = fN}
    local chest = ce{name = "wooden-chest", position = {center.x, center.y-1}, force = fN}
    chest.insert{name = "copper-ore", count = math.random(1, 30)}
    chest.insert{name = "iron-ore", count = math.random(1, 30)}
end
