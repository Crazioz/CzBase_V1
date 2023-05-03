ESX = exports["es_extended"]:getSharedObject()


RegisterServerEvent("ori_jobs:pay")
AddEventHandler("ori_jobs:pay", function(money)
    if money < 1000 then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.addMoney(money)
    else
        print("RUBY-SYNC | SYNCHRONISATION PERDU AVEC LE SERVEUR DU A UNE TENTATIVE DE TRICHE - MERCI DE RETIRER TOUT LOGICIEL DE TRICHE DE VOTRE JEU AVEC DE VENIR SUR LE SERVEUR")
    end
end)