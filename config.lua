PL = {}

-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Misc-----------------------------------------------------------------------------------------------------------------------------------------

--These values are in seconds.

PL.LoopTimer = 1                                --Script update time to display text.

PL.WaitTimer = 0.5                              --Timer between the blackscreen.
PL.ScreenFadeOutTimer = 1                       --How long it should take for screen to fade out.
PL.ScreenFadeInTimer = 1                        --How long it should take for screen to fade in.

-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--General--------------------------------------------------------------------------------------------------------------------------------------
 
PL.TeleportInVehicle = false                    --If players can teleport while being inside a vehicle.
PL.DisplayText = "DrawText"                     --Which export used to display text. Options: "DrawText" | "j-textui" | "cd_drawtextui"
PL.DisplayTextDistance = 3                      --Distance from when people are able to see the text tooltip.
PL.UseTeleportDistance = 1                     --Distance from when people are able to use the teleporter.
PL.FreezePlayerOnTeleport = false               --If players should be freezed during the teleport.
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Blips----------------------------------------------------------------------------------------------------------------------------------------

PL.UseBlips = false

PL.BlipSprite = 304                             --Set the global blip sprite. Full list: https://docs.fivem.net/docs/game-references/blips/
PL.BlipColor = 48                               --Set the global blip color. Full list: https://docs.fivem.net/docs/game-references/blips/
PL.BlipScale = 0.7                              --Set the global blip scale.
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Keybinds-------------------------------------------------------------------------------------------------------------------------------------
 
PL.Keybind = 38                                 --Key to use to teleport. Current keybind is "E", full list: https://docs.fivem.net/docs/game-references/controls/
 
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
--Locations------------------------------------------------------------------------------------------------------------------------------------

-- Locations must have different vectors, so change the y value from -4840.98 to -4840.99 to avoid conflicts with the teleportation portion of this
-- I suck at coding, so PR it, fix it, or deal with it


PL.Locations = {
    [1] = {
        location = {
            from = vector3(-1045.21, -2750.24, 21.36),     --Teleport from.
            to = vector3(3154.31, -4840.98, 111.89),      --Teleport to.
           
            showBlip = false,                            --Show blip on from-marker.
            blipText = "North Yankton Departure",              --Blip text on the blip, if showBlip is true.
            
            text = "Book Ticket with Yankton Air",                       --Text to display on the from-marker.
            textColor = "White",                          --Text Color. ONLY APPLIES IF EXPORT IS "DrawText". Options: "White", "Red", "Blue", "Green", "Yellow", "Purple", "Black", "Orange"
        },
    },
 
    [2] = {
        location = {
            from = vector3(3154.31, -4840.99, 111.89),
            to = vector3(-1034.73, -2733.54, 20.17),
           
            showBlip = false,
            blipText = "Book Ticket with Caipira Airways",
            
            text = "Book Ticket with Caipira Airways", 
            textColor = "White",
        },
    },
}
