Config = {
    --====================== BULLETIN UI ======================-- [OPTIONAL]

    Enable_custom_messages = false,     -- true = bulletin ui: https://github.com/Mobius1/bulletin (You need to manually install this) | false = native installed notify and chatMessage function (c_functions.lua & s_functions.lua), feel free to edit it.

    --====================== Sound Integration ======================-- [OPTIONAL]

    EnableSound = true,                -- true = xSound | false is no sound, you can edit this if you like.
    SoundReach = 100.0,                 -- Change to your liking. Default = 250 gta units.
    SoundVolume = 0.25,                 -- NOT RECOMMENDED above 0.5. You've only got 2 ears, if they function keep it that way :) *Depends on your sound file, so test it before you publish the script.
    SoundFileName = "carlock",  -- Insert your custom sound URL here, or use this one.

    --====================== HotKeys [Enabled by Default] ======================--

    HotKeys = { -- MATCH THESE TO THE BUTTONS (https://docs.fivem.net/docs/game-references/controls/)
        ToggleVehicleLock = 303,      -- U
    },

    --====================== Messages ======================--

    Messages = {
        VehicleLocked = "Vous avez ~r~verrouillé~s~ votre ~y~véhicule~s~.",
        VehicleLocked2 = "Vous avez ~r~verrouillé~s~ votre ~y~",
        VehicleUnlocked = "Vous avez ~g~déverrouillé~s~ votre ~y~véhicule~s~.",
        VehicleUnlocked2 = "Vous avez ~g~déverrouillé~s~ votre ~y~",
        VehicleNotToBeUsed = "Ce véhicule ne doit ~r~pas ~w~être utilisé.",
        NotInRange = "~r~ERROR ~w~Vous n'êtes pas face du véhicule que vous souhaitez déverrouiller ou vous n'êtes pas assez proche."
    }
}

