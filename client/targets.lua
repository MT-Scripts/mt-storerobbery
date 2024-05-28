if Config.Target == 'qb' then
    
for Registers_1, v in pairs(Config.Registers) do
    exports["qb-target"]:AddBoxZone("Registers_1" .. Registers_1, v.coords, 1, 1, {
        name = "Registers_1" .. Registers_1,
        heading = 90,
        minZ = v.coords.z - 0.2,
        maxZ = v.coords.z + 0.4,
        debugPoly = Config.Debug 
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RobRegister",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'

            }
        },
        distance = 1.5
    })
end

for Shelf_1, v in pairs(Config.Shelf_1) do
    exports["qb-target"]:AddBoxZone("Shelf_1" .. Shelf_1, v.coords, 1, 1, {
        name = "Shelf_1" .. Shelf_1,
        heading = 90,
        minZ = v.coords.z - 0.2,
        maxZ = v.coords.z + 0.4,
        debugPoly = Config.Debug 
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'

            }
        },
        distance = 1.5
    })
end

for Shelf_2, v in pairs(Config.Shelf_2) do
    exports["qb-target"]:AddBoxZone("Shelf_2" .. Shelf_2, v.coords, 1, 1, {
        name = "Shelf_2" .. Shelf_2,
        heading = 90,
        minZ = v.coords.z - 0.2,
        maxZ = v.coords.z + 0.4,
        debugPoly = Config.Debug 
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'

            }
        },
        distance = 1.5
    })
end

for Safe, v in pairs(Config.Safe) do
    exports["qb-target"]:AddBoxZone("Safe" .. Safe, v.coords, 1, 1, {
        name = "Safe" .. Safe,
        heading = 90,
        minZ = v.coords.z - 0.2,
        maxZ = v.coords.z + 0.4,
        debugPoly = Config.Debug 
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RobSafe",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            }
        },
        distance = 1.5
    })
end

end