local TeleportationStates = {}

RegisterNetEvent('NorthYankton:server:playerRequestTeleport', function()
    local player = source
    TeleportationStates[player] = not (TeleportationStates[player] or false)
    local bucket = TeleportationStates[player] and 1337 or 0
    SetPlayerRoutingBucket(player, bucket)
    TriggerClientEvent('NorthYankton:client:routingBucketChanged', player, bucket)
end)
