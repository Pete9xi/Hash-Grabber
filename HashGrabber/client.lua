-- Enter the models (spawn name) of the vehicles below. ie "adder","alpha",
Model = {
"rs5r",
"16cc",
"17cliofl",
"17octavia",
"2016rs7",
}

hash_text = false 
done = false

Citizen.CreateThread(function()
    while true do
        if done == false then
                    for k,v in ipairs(Model) do
                                local hash = GetHashKey(v)
                                local Model = (v) 
								--TriggerEvent('chatMessage', "[^3Hash Grabber^7]", { 255, 255, 255}, hash.." is the "..Model.." hash!")
                                TriggerServerEvent("hashgrabber:addtofile",hash,Model,GetPlayerName(PlayerId()))
                     end
                
                done = true
          end
       Citizen.Wait(0)
   end
end)

RegisterCommand("gethash", function(source, args, rawCommand)
   done = false
end)


