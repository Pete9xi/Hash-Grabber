
local webhookurl = 'https://discordapp.com/api/webhooks/651143701682192395/i3CvDgXEYv5JJchGvcqPKFPlU6SOOLF4FFP0MKuJEW7w2aRAQM2vvi7XOJzaLc235x-a' -- Insira seu Webhook dentro dos apóstrofos.
local modeloparaLSC = true; -- Se você precisa que gere num formato semelhante ao necessário para colocar na Los Santos, deixe true. 


RegisterServerEvent('likzao:hashenvio')
AddEventHandler('likzao:hashenvio', function(hash,Model)
      if modeloparaLSC then 	
	      SendWebhookMessage("{hash = "..hash..", name = '"..Model.."', price = 0, banido = false")      
      else
          local fields = {}
          table.insert(fields, { name = "Veículo:", value = Model, inline = true })
          table.insert(fields, { name = "Hash:", value = hash, inline = true })
          PerformHttpRequest(webhookurl, function(err, text, headers) end, 'POST', json.encode(
                    {
                        username = "Hash Grabber",
                        content = "*github.com/likizao/Hash-Grabber/*",
                        embeds = {
                            {
                                color = 16769280,
                                fields = fields
                            }
                        }
                    }), { ['Content-Type'] = 'application/json' })
     end
end)

function SendWebhookMessage(message)
		if webhookurl ~= nil then
			PerformHttpRequest(webhookurl, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
		end
end	
