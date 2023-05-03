

Config = {}
Config.speedUnit = 1-- 1: kmh, 2: mph


Config.useLegacyFuel = true   --- true and false
Config.Fuelexport  = 'LegacyFuel'  -- Name of the fuel script

Config.VeniceNotify =  false    --- true use VeniceNotification and false custom notfiy or esx shownotification

Config.VeniceUseNotify = function(text,time,type) TriggerEvent('codem-notification',text,time,type)  end -- dont touch

Config.Notify1 ={text = "Vous mettez la ceinture de sécurité", type = 'info', time = 5000 }   -- 
Config.Notify2 ={text ="Vous avez enlevé la ceinture de sécurité", type = "info", time = 5000 }  -- 
Config.Notify3 = {text = "Vous avez activé le régulateur de vitesse", type ="info" , time  = 5000}  -- 
Config.Notify4 = {text = "Régulateur de vitesse désactivé", type ="info" , time  = 5000}  ---

Config.voice = 2 -- 1 saltychat 2 pmavoice -- 3 mumblevoice

Config.SeatBeltMinSpeed = 15.6464
Config.SeatBeltMaxSpeed = 55.6464

Config.seatbeltkey = 'k'
Config.cruisekey = 'o'


Config.VeniceUseNotify(Config.Notify1, 5000, "info")
Config.VeniceUseNotify(Config.Notify2, 5000, "info")
Config.VeniceUseNotify(Config.Notify3, 5000, "info")
Config.VeniceUseNotify(Config.Notify4, 5000, "info")



