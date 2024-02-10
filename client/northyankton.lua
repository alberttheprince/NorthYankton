NorthYankton = exports.bob74_ipl:GetNorthYanktonObject()

RegisterNetEvent('NorthYankton:client:routingBucketChanged', function(enabled)
    -- Load the map
    NorthYankton.Enable(enabled)

    SetZoneEnabled(GetZoneFromNameId('PrLog'), enabled)
    SetMapdatacullboxEnabled('prologue', enabled)
    SetMapdatacullboxEnabled('Prologue_Main', enabled)
    SetAllPathsCacheBoundingstruct(enabled)

    -- Enable all paths
    SetRoadsInAngledArea(5526.24, -5137.23, 61.78925, 3679.327, -4973.879, 125.0828, 192, false, enabled, true);
    SetRoadsInAngledArea(3691.211, -4941.24, 94.59368, 3511.115, -4869.191, 126.7621, 16, false, enabled, true);
    SetRoadsInAngledArea(3510.004, -4865.81, 94.69557, 3204.424, -4833.817, 126.8152, 16, false, enabled, true);
    SetRoadsInAngledArea(3186.534, -4832.798, 109.8148, 3202.187, -4833.993, 114.815, 16, false, enabled, true);

    -- Enable the minimap
    SetMinimapInPrologue(enabled)

    if enabled then
	RequestIpl("prologue03_grv_cov") -- Missing "grave" IPL for hole in graveyard
        SetTimecycleModifier('MP_ARENA_THEME_STORM')
        SetWeatherTypeNowPersist('SNOWLIGHT') -- Use XMAS if you want heavier snow/snowstorm effect
    else
        ClearTimecycleModifier()
        ClearWeatherTypePersist()
    end
end)


-- Teleport Portion of Resource

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
                        DrawText3D(Config.Locations[k].location.from.x, Config.Locations[k].location.from.y, Config.Locations[k].location.from.z+0.5, selectedColor .. Config.Locations[k].location.text)
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
	DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
	ClearDrawOrigin()
end
