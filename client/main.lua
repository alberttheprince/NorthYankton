NorthYankton = exports.bob74_ipl:GetNorthYanktonObject()

RegisterNetEvent('NorthYankton:client:routingBucketChanged', function(bucket)
    local enabled = bucket == 1337
    SetZoneEnabled(GetZoneFromNameId("PrLog"), enabled)
    NorthYankton.Enable(enabled)
    if enabled then
        SetTimecycleModifier('MP_ARENA_THEME_STORM')
    else 
        ClearTimecycleModifier()
    end
end)

-- Teleport Portion of Resource
-- Credit to https://github.com/Re1ease/r1-teleport

local inZone = false
local activateTeleport = false
local vehCheck = false

CreateThread(function()
    while true do
        Wait(1000)

        for k, v in pairs(Config.Locations) do
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local calcFrom = Config.Locations[k].location.from
            local distance = #(pedCoords - calcFrom)
            if distance <= Config.DisplayTextDistance then
                zoning = k;
                
                if zoning then
                    inZone = true     
                    if distance <= Config.UseTeleportDistance then
                        activateTeleport = true
                    else
                        activateTeleport = false
                    end
                end
            end
        end
    end
end)

CreateThread(function()
    while true do
        if inZone then
            Wait(5)

            
                for k, v in pairs(Config.Locations) do
                    local ped = PlayerPedId()
                    local pedCoords = GetEntityCoords(ped)
                    local calcFrom = Config.Locations[k].location.from
                    local distance = #(pedCoords - calcFrom)
                    if distance <= Config.DisplayTextDistance then
                        selectedColor = '~s~'
                        DrawText3D(Config.Locations[k].location.from.x,Config.Locations[k].location.from.y,Config.Locations[k].location.from.z+0.5, selectedColor .. Config.Locations[k].location.text)
                    end
                end
            

            if activateTeleport then
                if IsControlJustReleased(0, Config.Keybind) then
                    
                    local ped = PlayerPedId()
                    if IsPedInAnyVehicle(ped, false) then
                        if not Config.TeleportInVehicle then
                            vehCheck = true
                        else
                            vehCheck = false
                        end
                    else
                        vehCheck = false
                    end
                    
                    if not vehCheck then
                        if Config.FreezePlayerOnTeleport then
                            FreezeEntityPosition(PlayerPedId(), true)
                        end
                        DoScreenFadeOut(1000)
                    
                        while not IsScreenFadedOut() do
                            Wait(0)
                        end

                        for k, v in pairs(Config.Locations) do
                            local ped = PlayerPedId()
                            local pedCoords = GetEntityCoords(ped)
                            local calcFrom = Config.Locations[k].location.from
                            local calcTo = Config.Locations[k].location.to
                            local distance = #(pedCoords - calcFrom)
                            if distance <= Config.UseTeleportDistance then
                                TriggerServerEvent('NorthYankton:server:playerRequestTeleport')
                                SetPedCoordsKeepVehicle(ped, calcTo)
                                activateTeleport = false
                                inZone = false
                            end
                        end
                        
                        Wait(1000)

                        DoScreenFadeIn(1000)
                        if Config.FreezePlayerOnTeleport then
                            FreezeEntityPosition(PlayerPedId(), false)
                        end
                    else
                        Wait(1000)
                    end
                end
            end
        else
            Wait(1000)
        end
    end
end)

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry('STRING')
	SetTextCentre(true)
	AddTextComponentString(text)
	SetDrawOrigin(x, y, z, 0)
	DrawText(0.0, 0.0)
	local factor = (string.len(text)) / 370
	DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
	ClearDrawOrigin()
end
