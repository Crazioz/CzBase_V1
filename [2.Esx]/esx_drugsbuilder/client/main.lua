ESX = exports["es_extended"]:getSharedObject()


Citizen.CreateThread(function()
	TriggerServerEvent("drugsbuilder_requestDrugs")
	startMakerLoop()
end)

RegisterNetEvent("drugsbuilder_openMenu")
AddEventHandler("drugsbuilder_openMenu", function(drugs)
	if not menuOpened then openMenu(drugs) end
end)

RegisterNetEvent("drugsbuilder_updateDrugs")
AddEventHandler("drugsbuilder_updateDrugs", function(drugs)
	updateDrugs(drugs)
end)

