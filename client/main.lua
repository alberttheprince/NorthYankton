NorthYankton = exports.ipl:GetNorthYanktonObject()

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

local createBlips = PL.UseBlips
local inZone = false
local activateTeleport = false
local vehCheck = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(PL.LoopTimer*1000)
 
        if createBlips then
            magicBlips()
            createBlips = false
        end

        for k, v in pairs(PL.Locations) do
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local calcFrom = PL.Locations[k].location.from
            local distance = #(pedCoords - calcFrom)
            if distance <= PL.DisplayTextDistance then
                zoning = k;
                
                if PL.DisplayText == "j-textui" then
                    exports["j-textui"]:Help("Press ~INPUT_CONTEXT~ " .. PL.Locations[k].location.text)
                elseif PL.DisplayText == "cd_drawtextui" then
                    TriggerEvent('cd_drawtextui:ShowUI', 'show', PL.Locations[k].location.text)
                end
                
                if zoning then
                    inZone = true     
                    if distance <= PL.UseTeleportDistance then
                        activateTeleport = true
                    else
                        activateTeleport = false
                    end
                end
            else
                if PL.DisplayText == "cd_drawtextui" then
                    TriggerEvent('cd_drawtextui:HideUI')
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        if inZone then
            Citizen.Wait(5)

            if PL.DisplayText == "DrawText" then
                for k, v in pairs(PL.Locations) do
                    local ped = PlayerPedId()
                    local pedCoords = GetEntityCoords(ped)
                    local calcFrom = PL.Locations[k].location.from
                    local distance = #(pedCoords - calcFrom)
                    if distance <= PL.DisplayTextDistance then
                        selectedColor = textColor()
                        DrawText3D(PL.Locations[k].location.from.x,PL.Locations[k].location.from.y,PL.Locations[k].location.from.z+0.5, selectedColor .. PL.Locations[k].location.text)
                    end
                end
            end

            if activateTeleport then
                if IsControlJustReleased(0, 38) then
                    
                    local ped = PlayerPedId()
                    if IsPedInAnyVehicle(ped, false) then
                        if not PL.TeleportInVehicle then
                            vehCheck = true
                        else
                            vehCheck = false
                        end
                    else
                        vehCheck = false
                    end
                    
                    if not vehCheck then
                        if PL.FreezePlayerOnTeleport then
                            FreezeEntityPosition(PlayerPedId(), true)
                        end
                        DoScreenFadeOut(PL.ScreenFadeOutTimer*1000)
                    
                        while not IsScreenFadedOut() do
                            Citizen.Wait(0)
                        end

                        for k, v in pairs(PL.Locations) do
                            local ped = PlayerPedId()
                            local pedCoords = GetEntityCoords(ped)
                            local calcFrom = PL.Locations[k].location.from
                            local calcTo = PL.Locations[k].location.to
                            local distance = #(pedCoords - calcFrom)
                            if distance <= PL.UseTeleportDistance then
                                TriggerServerEvent('NorthYankton:server:playerRequestTeleport')
                                SetPedCoordsKeepVehicle(ped, calcTo)
                                activateTeleport = false
                                inZone = false
                            end
                        end
                        
                        Citizen.Wait(PL.WaitTimer*1000)

                        DoScreenFadeIn(PL.ScreenFadeInTimer*1000)
                        if PL.FreezePlayerOnTeleport then
                            FreezeEntityPosition(PlayerPedId(), false)
                        end
                    else
                        Citizen.Wait(1000)
                    end
                end
            end
        else
            Citizen.Wait(PL.WaitTimer*1000)
        end
    end
end)

function magicBlips()
    for k, v in pairs(PL.Locations) do
        if v.location.showBlip == true then
            c = AddBlipForCoord(v.location.from.x, v.location.from.y, v.location.from.z)
            SetBlipDisplay(c, 4)
            SetBlipSprite(c, PL.BlipSprite)
            SetBlipColour(c, PL.BlipColor)
            SetBlipScale(c, PL.BlipScale)
            SetBlipAsShortRange(c, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.location.blipText)
            EndTextCommandSetBlipName(c)
        end
    end
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(true)
	AddTextComponentString(text)
	SetDrawOrigin(x,y,z, 0)
	DrawText(0.0, 0.0)
	local factor = (string.len(text)) / 370
	DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
	ClearDrawOrigin()
end

function textColor()
    for k, v in pairs(PL.Locations) do
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        local calcFrom = PL.Locations[k].location.from
        local distance = #(pedCoords - calcFrom)
        if distance <= PL.DisplayTextDistance then
            local x = PL.Locations[k].location.textColor
            if x == "Red" then
                x = "~r~"
                return x
            elseif x == "Blue" then
                x = "~b~"
                return x
            elseif x == "Green" then
                x = "~g~"
                return x
            elseif x == "Yellow" then
                x = "~y~"
                return x
            elseif x == "Purple" then
                x = "~p~"
                return x
            elseif x == "Black" then
                x = "~u~"
                return x
            elseif x == "Orange" then
                x = "~o~"
                return x
            elseif x == "White" then
                x = "~s~"
                return x
            end
        end
    end
end
