
RegisterServerEvent('sun:hasg')
	AddEventHandler('sun:hasg', function(hash,Model)
	
      SendWebhookMessage(ac_webhook_hash, "**Nome Veiculo** \n```\nHash: "..hash.." Modelo: "..Model.."```")
end)

Citizen.CreateThread(function()
	ac_webhook_hash = GetConvar("ac_webhook_hash", "none")
	function SendWebhookMessage(webhook,message)
		if webhook ~= "none" then
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
		end
	end
end)
