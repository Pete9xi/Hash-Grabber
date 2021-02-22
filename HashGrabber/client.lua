-- Enter the models (spawn name) of the vehicles below. ie "adder","alpha"
Model = {

}

hash_text = false 
done = false

Citizen.CreateThread(function()
    while true do
        if done == false then
                    for k,v in ipairs(Model) do
                                local hash = GetHashKey(v)
                                local Model = (v) 
                                TriggerServerEvent("hashgrabber:addtofile",hash,Model)
                     end
                
                done = true
          end
       Citizen.Wait(0)
   end
end)
