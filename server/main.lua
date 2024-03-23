RegisterNetEvent('NorthYankton:server:playerRequestTeleport', function()
    local enabled = GetPlayerRoutingBucket(source) == Config.RoutingBucket

    ToggleNorthYankton(source, not enabled);
end)

RegisterNetEvent('NorthYankton:server:checkState', function()
    local enabled = GetNorthYanktonState(source)

    if enabled then
        ToggleNorthYankton(source, true)
    end
end)

function ToggleNorthYankton(source, enabled)
    -- Set the player in the North Yankton routing bucket
    local bucket = Config.RoutingBucket
    SetPlayerRoutingBucket(source, enabled and bucket or 0)

    -- Set the persistent state
    SetNorthYanktonState(source, enabled)

    -- Enable North Yankton on the client
    TriggerClientEvent('NorthYankton:client:routingBucketChanged', source, enabled)
end

function SetNorthYanktonState(source, enabled)
    local identifier = GetIdentifier(source)

    SetResourceKvpInt(identifier, enabled and 1 or 0)
end

function GetNorthYanktonState(source)
    local identifier = GetIdentifier(source)

    return GetResourceKvpInt(identifier, 0) == 1
end

function GetIdentifier(source)
    return GetPlayerIdentifierByType(source, Config.Identifier)
end

exports('ToggleNorthYankton', ToggleNorthYankton)
