Config = {
    Alert = "~g~Tu te situe dans une Safe Zone.",
    Warning = "~r~Vous êtes dans une Safe Zone. ~r~Tu ne pourra pas tirer.",
    Radius = 50,
    Locations = {
        -- Set the locations you wish to be a safezone.
        -- Format: {XCoord, YCoord, ZCoord}
        {233.61401367188,-780.59454345703,30.685453414917}, -- PC CENTRALE
    }
}

Config.target = true -- Use target system for vehicle push (disables TextUI)
Config.targetSystem = 'ox_target' -- Target System to use. ox_target, qtarget, qb-target
Config.Usebones = true -- Use bones for vehicle push
Config.PushKey = 'E' -- Key to push vehicle
Config.TurnRightKey = 'D' -- Keys to turn the vehicle while pushing it.
Config.TurnLeftKey = 'A' -- Keys to turn the vehicle while pushing it.
Config.TextUI = true -- Use Text UI for vehicle push
Config.useOTSkills = false -- Use OT Skills for XP gain from pushing vehicles. Found here: https://otstudios.tebex.io
Config.maxReward = 20 -- Max amount of xp that can be gained from pushing a vehicle per push, make sure this is the same or less than what is set for strength in your OT_skills config.
Config.healthMin = 2000.0 -- Minimum health of vehicle to be able to push it.

Config.blacklist = { -- blacklist vehicle models from being pushed.
    [`phantom`] = true
}