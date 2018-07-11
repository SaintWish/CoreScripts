dataTableBuilder = {}

dataTableBuilder.BuildAIData = function(action, targetPid, targetRefIndex,
    posX, posY, posZ, distance, duration, shouldRepeat)

    local ai = {}
    ai.action = action
    ai.posX, ai.posY, ai.posZ = posX, posY, posZ
    ai.distance = distance
    ai.duration = duration
    ai.shouldRepeat = shouldRepeat

    if targetPid ~= nil then
        ai.targetPlayer = Players[targetPid].accountName
    else
        ai.targetRefIndex = targetRefIndex
    end

    return ai
end

return dataTableBuilder
