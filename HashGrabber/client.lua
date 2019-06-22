-- Insira os modelos (nome de spawn) dos veículos abaixo.
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
                                local hash = GetHashKey(v)
                                local Model = (v) 
                                TriggerServerEvent("likzao:hashenvio",hash,Model)
                     end
                
                feito = true
          end
       Citizen.Wait(0)
   end
end)
