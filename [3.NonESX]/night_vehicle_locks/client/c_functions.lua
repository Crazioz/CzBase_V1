-- Client Functions

function IsPlayerAuthorisedToLockThisVehicle(VehClass, VehNetId)
    -- Create your function or trigger your event to check the permission!

    -- If your function has been performed, return either true or false.
    return true
end

function notify(notificationText, notificationDuration, notificationPosition, notificationType)
    if Config.Enable_custom_messages then
        exports.bulletin:Send({ 
            message = notificationText,
            timeout = notificationDuration,
            position = notificationPosition,
            progress = true,
            theme = notificationType,
            flash = false
        })
    else
        SetNotificationTextEntry("STRING")
        AddTextComponentString(notificationText)
        DrawNotification(true, true)
    end
end

function GetVehicleInDirection(coordFrom, coordTo)
    local plyPed = PlayerPedId()
    local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, plyPed, 0)
    local _, _, _, _, targetedSubject = GetRaycastResult(rayHandle)
    return targetedSubject
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function allToUpper(str)
    return (string.upper(str))
end

