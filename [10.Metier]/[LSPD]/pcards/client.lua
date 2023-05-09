RegisterCommand('mcard', function()
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 120000

    TriggerEvent('mcard:display', true)
    TriggerEvent('anima', true)

    while display do
      Citizen.Wait(1)
      ShowInfo('Appuyer sur ~INPUT_CONTEXT~ pour ranger la carte.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('mcard:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('mcard:display', false)
        StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      end
    end
  end)
end)

RegisterNetEvent('mcard:display')
AddEventHandler('mcard:display', function(value)
  SendNUIMessage({
    type = "mcard",
    display = value
  })
end)

RegisterNetEvent("anima")
AddEventHandler("anima", function(inputText) 
RequestAnimDict("amb@code_human_wander_clipboard@male@base")
TaskPlayAnim(PlayerPedId(),"amb@code_human_wander_clipboard@male@base", "static", 1.0,-1.0, 120000, 1, 1, true, true, true)
end)


function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end