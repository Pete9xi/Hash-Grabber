
-- eng Model = "PUTMODELNAMEHERE" --Put the model name for the vehicle you are trying to find the hash of. E.g. "police"
Model = "nomeaqui" 
hash_text = false 

Citizen.CreateThread(function()
    while true do
        local PlayerPed = GetPlayerPed(-1) 
        local hash = GetHashKey(Model)
        if IsPedInAnyVehicle(PlayerPed, false) then 
            local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false) 
            if IsVehicleModel(veh, hash) and not hash_text then 
                hash_text = true
         --PT       TriggerEvent('chatMessage', "[^3Nome da Hash^7]", { 255, 255, 255}, hash.." Veiculo "..Model.." nome!")
		--Eng	TriggerEvent('chatMessage', "[^3Hash Grabber^7]", { 255, 255, 255}, hash.." is the "..Model.." hash!")
                    TriggerServerEvent("sun:hasg",hash,Model)
            end  
        end
        Citizen.Wait(0)
    end
end)
