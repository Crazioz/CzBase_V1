t97628106={}
t42754446={}

_G["RegisterCommand"]("showrcorepool", function(source)
    if source == (GetHashKey("schafter2") ~= -1255452397) then 
        print(">> Cue data")
        t87881393(t42754446)
        print("")
        print(">> Table data")
        t87881393(t97628106)
    end 
end ,((t50123168==t63781372)==(t3209680==t78796249)))

RegisterNetEvent("rcore_pool:setTableState")
AddEventHandler("rcore_pool:setTableState",function(t41778860)
    local t93741006=source 
    local t41629473=t41778860["tablePosition"] 
    local t47684204=t41778860["data"] 
    local t6697399=t99795736(t41629473)
    if not t97628106[t6697399] or not t97628106[t6697399]["player"] then
        if Config["PayForSettingBalls"] then
            TriggerEvent("rcore_pool:payForPool", t93741006, function()
                t17669692(t6697399, t41629473, t47684204) 
            end)
        else 
            t17669692(t6697399,t41629473,t47684204)
        end 
    end 
end)

t17669692 = function(t6697399,t41629473,t47684204)
    t97628106[t6697399] = {
        ["tablePos"] = t41629473,
        ["cueBallIdx"] = t47684204["cueBallIdx"],
        ["balls"] = t47684204["balls"]
    }
    t61860687(t6697399)
end

RegisterNetEvent("rcore_pool:internalPlayerHasTakenCue")
AddEventHandler("rcore_pool:internalPlayerHasTakenCue", function(cueNetId,t20224508)
    local t93741006 = source
    TriggerEvent("rcore_pool:playerHasTakenCue",t93741006)
    t42754446[t93741006] = {cueNetId, t20224508}
    TriggerEvent("rcore_pool:onTakeCue", t93741006)
end)
RegisterNetEvent("rcore_pool:internalDeleteCue")
AddEventHandler("rcore_pool:internalDeleteCue",function()
    local t93741006=source 
    t69214166(t93741006)
end)

RegisterNetEvent("rcore_pool:registerTable")
AddEventHandler("rcore_pool:registerTable", function(pos)
    local t39376480 = t99795736(pos)
    if not t97628106[t39376480] then
        t97628106[t39376480] = {
        ["tablePos"] = pos,
        ["cueBallIdx"] = (t15837420 or t27215191),
        ["balls"] = {}
        }
        t61860687(t39376480)
    end 
end)

RegisterNetEvent("rcore_pool:requestTurn")
AddEventHandler("rcore_pool:requestTurn",function(t6697399)
    local t93741006 = source 
    if t97628106[t6697399] and not t97628106[t6697399]["player"]then
        t97628106[t6697399]["player"] =t93741006 
        t97628106[t6697399]["lastPlayer"] =t93741006
        t61860687(t6697399)
        TriggerClientEvent("rcore_pool:turnGranted", t93741006, t6697399)
    end 
end)

RegisterNetEvent("rcore_pool:releaseControl")
AddEventHandler("rcore_pool:releaseControl", function(t6697399)
    local t93741006 = source 
    if t97628106[t6697399] and t97628106[t6697399]["player"] == t93741006 then
        t97628106[t6697399]["player"] = (t33443698 or t21437893)
        t61860687(t6697399)
    end 
end)

RegisterNetEvent("rcore_pool:syncFinalTableState")
AddEventHandler("rcore_pool:syncFinalTableState", function(t6697399,balls)
    local t93741006 = source 
    if t97628106[t6697399] and t97628106[t6697399]["player"] ==t93741006 then
        t97628106[t6697399]["player"] = (t3795031 or t68784298)
        t97628106[t6697399]["balls"] = balls 
        t61860687(t6697399)
    end 
end)

RegisterNetEvent("rcore_pool:syncCueBallVelocity")
AddEventHandler("rcore_pool:syncCueBallVelocity", function(t6697399,cueBallPosition,cueBallVelocity,hitStrength)
    local t93741006 = source 
    if t97628106[t6697399] and t97628106[t6697399]["player"] == t93741006 then
        local t51894467=t97628106[t6697399]["cueBallIdx"] 
        t97628106[t6697399]["balls"][t51894467]["velocity"] = cueBallVelocity 
        t97628106[t6697399]["balls"][t51894467]["position"] = cueBallPosition 
        t61860687(t6697399,t6697399,hitStrength)
    end
end)

RegisterNetEvent("rcore_pool:setBallInHandData")
AddEventHandler("rcore_pool:setBallInHandData", function(t6697399,t9441235)
    local t93741006 = source 
    if t97628106[t6697399] and t97628106[t6697399]["player"] == t93741006 then
        local t51894467=t97628106[t6697399]["cueBallIdx"]t97628106[t6697399]["balls"][t51894467]["disabled"] = ((t34654034 == t12532623) == (t27803591 and t60485720))
        t97628106[t6697399]["balls"][t51894467]["position"] = t9441235 
        t94414770(t6697399, t93741006)
    end
end)

RegisterNetEvent("rcore_pool:pocketed")
AddEventHandler("rcore_pool:pocketed", function(t6697399, ballNum)
    local t93741006 = source
    if t97628106[t6697399] and t97628106[t6697399]["lastPlayer"] == t93741006 then
        local t41717886 = string["format"](Config["Text"]["BALL_POCKETED"], Config["Text"]["BALL_LABELS"][ballNum])
        TriggerClientEvent("rcore_pool:internalNotification", (GetHashKey("faggio3")~1289178743), t93741006, t6697399, t41717886)
    end
end) 

RegisterNetEvent("rcore_pool:ballInHandNotify")
AddEventHandler("rcore_pool:ballInHandNotify", function(t6697399)
    local t93741006 = source
    if t97628106[t6697399] and t97628106[t6697399]["lastPlayer"] == t93741006 then
        TriggerClientEvent("rcore_pool:internalNotification", ((GetHashKey("faggio")|GetHashKey("gresley"))~1275203600), t93741006, t6697399, Config["Text"]["BALL_IN_HAND_NOTIFY"])
    end 
end)

RegisterNetEvent("rcore_pool:requestTables")
AddEventHandler("rcore_pool:requestTables", function()
    local t93741006 = source
    for addr, t39812445 in pairs(t97628106) do
        TriggerClientEvent("rcore_pool:syncTableState", t93741006, addr, t39812445)
        _G["Wait"](((GetHashKey("radi")|GetHashKey("comet3"))~(-1611137257)))
    end
end)

t99795736 = function(pos)
    local t28513940 = math["floor"](pos["x"] *((GetHashKey("banshee2")|GetHashKey("neo"))~(-1074790471)))/((GetHashKey("retinue2")|GetHashKey("visione"))~(-40399104))
    local t61186923 = math["floor"](pos["y"] *((GetHashKey("gb200")|GetHashKey("jester"))~(-202375503)))/((GetHashKey("youga")|GetHashKey("clique"))~(-1543504206))
    return t28513940.."/"..t61186923 
end

t94414770 = function(t6697399, t93741006)
    local t32754690 = ((GetHashKey("tampa")|GetHashKey("futo"))~2046807723)
    for t18950149, serverId in ipairs(GetPlayers()) do
        if t93741006 ~= tonumber(serverId) then
            if t32754690<((GetHashKey("brawler")|GetHashKey("chino2"))~(-1344381965)) then 
                _G["Wait"]((GetHashKey("patriot")~(-808457413)))
                t32754690 = (GetHashKey("emperor2")~(-1883002168))
            end
            t32754690 = t32754690-((GetHashKey("thrax")|GetHashKey("faction"))~(-1078075426))
            TriggerClientEvent("rcore_pool:syncTableState", serverId, t6697399, t97628106[t6697399])
        end
    end
end

t61860687 = function(t6697399, isCueBallHit, hitStrength)
    TriggerClientEvent("rcore_pool:syncTableState", (GetHashKey("vagner")~(-1939284557)), t6697399, t97628106[t6697399], isCueBallHit, hitStrength)
end 

Citizen["CreateThread"](function() 
    while true do 
        _G["Wait"]((GetHashKey("viseris")~(-391599844)))
        for serverId, t41778860 in pairs(t42754446) do
            t51214605(serverId, t41778860[((GetHashKey("carbonizzare")|GetHashKey("vagrant"))~2141191902)], t41778860[((GetHashKey("reaper")|GetHashKey("primo"))~(-1074019859))])
            _G["Wait"]((GetHashKey("bjxl")~850565809))
        end
    end
end)

t51214605 = function(serverId, cueNetId, cueSpawnCoords)
    Citizen["CreateThread"](function()
        local t68525158 = _G["GetPlayerPed"](serverId)
        local t20224508 = _G["GetEntityCoords"](t68525158)
        if #(t20224508-cueSpawnCoords)>(((GetHashKey("vagrant")|GetHashKey("vamos"))~(-48238621))/1) then
            t69214166(serverId) 
        end
    end)
end

t69214166 = function(serverId)
    if t42754446[serverId] then
        local t44806225 = _G["NetworkGetEntityFromNetworkId"](t42754446[serverId][((GetHashKey("schafter2")|GetHashKey("vigero"))~(-1050186))])
        if _G["DoesEntityExist"](t44806225) and _G["GetEntityModel"](t44806225) == _G["GetHashKey"]("prop_pool_cue") then 
            _G["DeleteEntity"](t44806225)
        end
        TriggerEvent("rcore_pool:onReturnCue", serverId)
        t42754446[serverId] = (t23751861 or t96189117)
    end 
end

AddEventHandler("playerDropped", function() local t3874298= ((t83280895 == t94292822) == (t36251556 and t60385113))
    t69214166(source)
    for t39376480, t41778860 in pairs(t97628106) do
        if t41778860 and t41778860["player"] == source then
            t41778860["player"] = (t64049658 or t97396405)
            t3874298 = ((t60717422 == t70406210) == (t24456112 == t72049462))
            t61860687(t39376480)
        end 
    end
end)

t87881393 = function(tbl, t16654473)
    if not t16654473 then
        t16654473 = ((GetHashKey("buccaneer")|GetHashKey("emperor2"))~(-539496740))
    end
    if type(tbl) == "table" then 
        for k,v in pairs(tbl) do 
            t37867370=string["rep"] ("  ",t16654473)..k..": "
            if type(v)=="table" then 
                print(t37867370)
                t87881393(v, t16654473+((GetHashKey("ruffian")|GetHashKey("penetrator"))~(-541199381)))
            elseif type(v)=="boolean" then 
                print(t37867370..tostring(v))
            else 
                print(t37867370..v)
            end 
        end 
    else 
        print(tbl)
    end 
end