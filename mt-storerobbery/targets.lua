local QBCore = exports['qb-core']:GetCoreObject()

-- Loja Grove Street
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira1", vector3(-48.86, -1755.31, 29.42), 1, 1, {
        name = "parteleira1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira2", vector3(-52.49, -1753.27, 29.42), 1, 1, {
        name = "parteleira2",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora1", vector3(-46.73, -1757.95, 29.42), 1, 1, {
        name = "registadora1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre1", vector3(-43.49, -1748.42, 29.42), 1, 1, {
        name = "cofre1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Innosense Boulevard
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira3", vector3(27.46, -1345.07, 29.5), 1, 1, {
        name = "parteleira3",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira4", vector3(29.03, -1342.66, 29.5), 1, 1, {
        name = "parteleira4",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora2", vector3(24.49, -1344.88, 29.5), 1, 1, {
        name = "registadora2",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre2", vector3(28.19, -1339.23, 29.5), 1, 1, {
        name = "cofre2",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Vespucci Boulevard
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira5", vector3(1137.87, -982.14, 46.42), 1, 1, {
        name = "parteleira5",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira6", vector3(1138.76, -984.38, 46.42), 1, 1, {
        name = "parteleira6",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora3", vector3(1134.25, -982.46, 46.42), 1, 1, {
        name = "registadora3",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre3", vector3(1126.78, -980.15, 45.42), 1, 1, {
        name = "cofre3",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Cliton Avenue
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira7", vector3(376.0, 327.67, 103.57), 1, 1, {
        name = "parteleira7",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira8", vector3(378.76, 326.93, 103.57), 1, 1, {
        name = "parteleira8",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora4", vector3(373.11, 328.64, 103.57), 1, 1, {
        name = "registadora4",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre4", vector3(378.1, 333.37, 103.57), 1, 1, {
        name = "cofre4",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Prosperity Street
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira9", vector3(-1489.05, -380.68, 40.16), 1, 1, {
        name = "parteleira9",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira10", vector3(-1484.96, -381.37, 40.16), 1, 1, {
        name = "parteleira10",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora5", vector3(-1486.2, -378.06, 40.16), 1, 1, {
        name = "registadora5",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre5", vector3(-1479.05, -375.49, 39.16), 1, 1, {
        name = "cofre5",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Barbarano Road
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira11", vector3(-3243.89, 1006.01, 12.83), 1, 1, {
        name = "parteleira11",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira12", vector3(-3246.5, 1005.0, 12.83), 1, 1, {
        name = "parteleira12",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora7", vector3(-3244.57, 1000.18, 12.83), 1, 1, {
        name = "registadora7",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre7", vector3(-3250.06, 1004.29, 12.83), 1, 1, {
        name = "cofre7",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Route 68 
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira13", vector3(546.37, 2668.91, 42.16), 1, 1, {
        name = "parteleira13",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira14", vector3(543.53, 2668.47, 42.16), 1, 1, {
        name = "parteleira14",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora8", vector3(549.36, 2669.12, 42.16), 1, 1, {
        name = "registadora8",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre8", vector3(546.46, 2662.84, 42.16), 1, 1, {
        name = "cofre8",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Alhamura Drive
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira15", vector3(1964.31, 3744.43, 32.34), 1, 1, {
        name = "parteleira15",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira16", vector3(1961.57, 3746.23, 32.34), 1, 1, {
        name = "parteleira16",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora9", vector3(1958.9, 3742.04, 32.34), 1, 1, {
        name = "registadora9",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre9", vector3(1959.31, 3748.89, 32.34), 1, 1, {
        name = "cofre9",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)

-- Loja Paleto Bay
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira17", vector3(164.04, 6640.9, 31.7), 1, 1, {
        name = "parteleira17",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("parteleira18", vector3(166.87, 6641.84, 31.7), 1, 1, {
        name = "parteleira18",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarParteleira2",
                icon = "fad fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("registadora10", vector3(162.16, 6643.35, 31.7), 1, 1, {
        name = "registadora10",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarRegistadora",
                icon = "fad fa-sack-dollar",
                label = 'Rob Cash Register'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("cofre10", vector3(168.78, 6644.78, 31.7), 1, 1, {
        name = "cofre10",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-storerobbery:client:RoubarCofre",
                icon = "fad fa-sack-dollar",
                label = 'Rob Safe'
            },
        },
        distance = 1.5
    })
end)