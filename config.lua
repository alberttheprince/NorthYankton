Config = {}

-- General

Config.DisplayTextDistance = 3        -- Distance (in meters) that players can see teleporter
Config.UseTeleportDistance = 1        -- Distance (in meters) that players can use teleporter
Config.FreezePlayerOnTeleport = false -- If players should be frozen during teleporting
Config.TeleportInVehicle = false      -- If players can teleport while being inside a vehicle
Config.Keybind = 38                   -- Key to use to teleport. ("E") https://docs.fivem.net/docs/game-references/controls/
Config.RoutingBucket = 1337           -- Routing Bucket you want to use for North Yankton
Config.Identifier = "license2"        -- The identifier for storing the North Yankton state

-- North Yankton blips

Config.Blips = {
    {
        sprite = 135, -- radar_cinema                   -- Blip sprite https://docs.fivem.net/docs/game-references/blips/
        position = vector3(3159.01, -4808.40, 111.90)   -- Location of the blip
    },
    {
        sprite = 90, -- radar_flight_school
        position = vector3(3148.55, -4843.99, 112.02)
    },
}

-- Teleporter locations

Config.Locations = {
    {
        location = {
            from = vector3(-1045.21, -2750.24, 21.36),    -- Location inside of LS Airport Double Doors
            to = vector3(3149.21, -4839.99, 111.89),      -- Teleport location in front of Caipira Airways            
            text = "Book Ticket with Yankton Air",        -- Text to display on the teleporter in Los Santos
        },
    },

    {
        location = {
            from = vector3(3149.21, -4839.98, 111.89),    -- Teleport location in front of Caipira Airways
            to = vector3(-1034.73, -2733.54, 20.17),      -- Location at Taxi pick up area outside of LS Airport
            text = "Book Ticket with Caipira Airways",    -- Text to display on the teleporter in North Yankton
        },
    },
}
