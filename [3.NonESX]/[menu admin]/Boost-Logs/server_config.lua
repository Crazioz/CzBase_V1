Config = {}
    Config.Logs = {
        ['adminmenu-viewinv'] = "",-- Webhok link
        ['adminmenu-godmode'] = "",
        ['adminmenu-invisible'] ="",
        ['adminmenu-stamina'] = "",
        ['adminmenu-run'] = "",
        ['adminmenu-swim'] = "",
        ['adminmenu-superjump'] ="",
        ['adminmenu-ragdoll'] = "",

        ['adminmenu-stayinveh'] ="", -- Webhok link
        ['adminmenu-armor'] = "",
        ['adminmenu-cleanclothes'] = "",
        ['adminmenu-wetclothes'] = "",
        ['adminmenu-suicide'] = "",
        ['adminmenu-noclip'] = "",
        ['adminmenu-numberplate'] = "",
        ['adminmenu-multiplier'] = "",
        ['adminmenu-infinitefuel'] = "",
        
        ['adminmenu-vehgodmode'] = "",-- Webhok link
        ['adminmenu-repairveh'] = "",
        ['adminmenu-tpm'] = "",
        ['adminmenu-tpcoords'] = "",
        ['adminmenu-thermal'] = "",
        ['adminmenu-night'] = "",
        ['adminmenu-plyblips'] = "",
        ['adminmenu-heal'] = "",
        ['adminmenu-heal-err'] = "",
        
        ['adminmenu-setjob'] = "",
        ['adminmenu-setfaction'] = "",



        ['adminmenu-giveaccm'] = "",
        ['adminmenu-giveaccm-err'] = "",
        ['adminmenu-removeaccm'] = "",
        ['adminmenu-removeaccm-err'] ="",
        ['adminmenu-revivep'] = "",
        ['adminmenu-revivep-err'] = "",
        ['adminmenu-goto'] = "",
        ['adminmenu-goto-err'] = "",
        
        ['adminmenu-bring'] = "",
        ['adminmenu-bring-err'] = "",
        ['adminmenu-setwaypoint'] = "",
        ['adminmenu-setwaypoint-err'] = "",
        ['adminmenu-printid'] = "",
        ['adminmenu-printid-err'] = "",
        ['adminmenu-killp'] = "",
        ['adminmenu-killp-err'] = "",
        ['adminmenu-kickp'] = "",
        ['adminmenu-kickp-err'] = "",
        ['adminmenu-sendm'] = "",
        ['adminmenu-sendm-err'] = "",
        ['adminmenu-giveitem'] = "",
        ['adminmenu-giveitem-err'] = "",
        ['adminmenu-removeitem'] = "",
        ['adminmenu-removeitem-err'] = "",
        ['adminmenu-spawncar'] = "",
        ['adminmenu-spawncar-err'] = "",
        ['adminmenu-eject'] = "",
        ['adminmenu-eject-err'] = "",
        ['adminmenu-crash'] = "",
        ['adminmenu-crash-err'] = "",
        ['adminmenu-togglelicense'] = "",
        ['adminmenu-togglelicense-err'] = "",
        ['adminmenu-openadminmenu'] = "",
        ['adminmenu-openadminmenu-err'] = "",
        ['adminmenu-spectate'] = "",

    }


Config.Colors = {
    ["default"] = 16711680,
    ["blue"] = 25087,
    ["green"] = 762640,
    ["white"] = 16777215,
    ["black"] = 0,
    ["orange"] = 16743168,
    ["lightgreen"] = 65309,
    ["yellow"] = 15335168,
    ["turqois"] = 62207,
    ["pink"] = 16711900,
    ["red"] = 16711680,
}

--[[
    Usage:
    local data = {
        ['Player'] = nil, -- You need to set source here
        ['Target'] = nil, -- You need to set source here
        ['Log'] = 'default', -- Log name
        ['Title'] = 'Title', -- Title
        ['Message'] = 'Message' -- Message
        ['Color'] = 'blue', -- Set your color here check Config.Colors for available colors
    }

    TriggerEvent('Boost-Logs:SendLog', data)

]]--
