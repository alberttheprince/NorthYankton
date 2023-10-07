Enabled = false

RegisterNetEvent('NorthYankton:server:playerRequestTeleport', function()
    Enabled = not Enabled
    local bucket = Enabled and 1337 or 0
    SetPlayerRoutingBucket(source, bucket)
    TriggerClientEvent('NorthYankton:client:routingBucketChanged', source, bucket)
end)
