RegisterNetEvent('NorthYankton:server:playerRequestTeleport', function()
    local enabled = GetPlayerRoutingBucket(source) == Config.RoutingBucket

    ToggleNorthYankton(source, not enabled);
end)

function ToggleNorthYankton(source, enabled)
    -- Set the player in the North Yankton routing bucket
    local bucket = Config.RoutingBucket
    SetPlayerRoutingBucket(source, enabled and bucket or 0)

    -- Enable North Yankton on the client
    TriggerClientEvent('NorthYankton:client:routingBucketChanged', source, enabled)
end

exports('ToggleNorthYankton', ToggleNorthYankton)
