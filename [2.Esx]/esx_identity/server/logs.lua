Config = {}

function SendWebHook(webhook, title, color, message)
    local embed = {}
    timestamp = os.date("%c")
    embed = {
        {
            ["color"] = color,
            ["title"] = title,
            ["description"] =  ""..message.."",
            ["footer"] ={
                ["text"] = timestamp,
            },
        }
    }
    PerformHttpRequest(webhook,
    function(err, text, headers)end, 'POST', json.encode({username = Config.serverName, avatar_url= Config.serverLogo ,embeds = embed}), { ['Content-Type']= 'application/json' })
end


AddEventHandler('z64_logs:sendWebhook', function(webhookdata)
    if webhookdata.webhookLink == nil then
        webhook = Config.webhook
    else
        webhook = webhookdata.webhookLink
    end
    title = webhookdata.title
    color = webhookdata.color
    message = webhookdata.message
    SendWebHook(webhook, title, color, message)
end)
