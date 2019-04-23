-- Insira os modelos abaixo.
Modelo = {
    "rmodbmwi8",
    "ftoro",
    "gtr",
    "amarok",
    "pturismo",
    "p1",
    "Skyline",
    "rmodveneno",
    "urus2018",
    "everest",
    "lp700r",
    "193500hd",
    "cbb",
    "chiron17",
    "370z",
    "bug09",
    "aqui",
    "aqui",
    "aqui",
    "aqui",
}

hash_text = false 
feito = false
Citizen.CreateThread(function()
    while true do
        if feito == false then
                for k,v in ipairs(Modelo) do
                local PlayerPed = GetPlayerPed(-1) 
                local carro = v
                local hash = GetHashKey(v)
                local Model = (v) 
                       --     TriggerEvent('chatMessage', "[^1 HASH]", { 255, 255, 255}, hash.." || VEÍCULO "..v.." nome!")
                            TriggerEvent('chatMessage', "[^1 HASH]", { 255, 255, 255}, "{ modelHash = "..hash..", modelName = "..v.."},")
                            TriggerServerEvent("sun:hasg",hash,Model)
            end
        feito = true
end
       Citizen.Wait(0)
   end
end)
