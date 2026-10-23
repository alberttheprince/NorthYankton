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
    -- Services in the expanded North Yankton map.
    {
        name = "Mechanic Shop",
        sprite = 72,
        position = vector3(3066.90, -4893.58, 110.33)
    },
    {
        name = "Ludendorff Medical Center",
        sprite = 61,
        position = vector3(2984.50, -4633.00, 111.01)
    },
    {
        name = "Police Station",
        sprite = 60,
        position = vector3(2981.39, -4611.15, 111.01)
    },
    {
        name = "Barber",
        sprite = 71,
        position = vector3(3083.77, -4843.69, 111.19)
    },
    {
        name = "Clothing Store",
        sprite = 73,
        position = vector3(2904.25, -4785.56, 111.44)
    },
    {
        name = "Gun Store",
        sprite = 110,
        position = vector3(2883.86, -4787.72, 111.07)
    },
    {
        name = "Bank",
        sprite = 108,
        position = vector3(3064.02, -4842.04, 110.35)
    },
    {
        name = "Gas Station",
        sprite = 361,
        position = vector3(3385.32, -4883.53, 110.76)
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
