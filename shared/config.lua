Config = {}

Config.Debug = false


Config.Notify = 'ox' -- \\ qb or ox 
Config.Target = 'qb' -- \\ qb or ox

Config.Dispatch = 'qb' -- qb or ps-dispatch or cd_dispatch
Config.Minigame = 'ps-ui' -- ps-ui or ox_lib or qb-lock (For shelf/Registers)

Config.requiredCopsCount  = 0




Config.Safe_Config = {
    -- \\ Minigame 
    Minigame = 'ps-ui', --\\ if '' it will use use Config.Minigame
    Minigame_Type = 'Thermite', -- \\ Scrambler or Thermite

    -- \\ Items 
}


Config.Registers = {
    [1] = { ["coords"] = vector3(-47.87, -1759.38, 29.42)}
}

Config.Shelf_1 = {
    [1] = { ["coords"] = vector3(-48.59, -1755.27, 29.42)}
}

Config.Shelf_2 = {
    [1] = { ["coords"] = vector3(-51.05, -1753.2, 29.42)}
}

Config.Safe = {
    [1] = { ["coords"] = vector3(-43.36, -1748.36, 29.42)}
}