RegisterNetEvent('NorthYankton:server:playerRequestTeleport', function()
    local bucket = GetPlayerRoutingBucket(source) == 1337 and 0 or 1337
    SetPlayerRoutingBucket(source, bucket)
    TriggerClientEvent('NorthYankton:client:routingBucketChanged', source, bucket)
end)
