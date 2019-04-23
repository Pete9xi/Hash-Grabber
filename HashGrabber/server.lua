
RegisterServerEvent('sun:hasg')
	AddEventHandler('sun:hasg', function(hash,Model)
	
      SendWebhookMessage("webhook", "{modelHash = "..hash..", modelName = '"..Model.."'")
end)

Citizen.CreateThread(function()
	function SendWebhookMessage(webhook,message)
		if webhook ~= "none" then
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
		end
	end
end)
