-- Insira os modelos (nome de spawn) dos veículos abaixo.
Modelo = {
"amarok",
"150",
"440i",
"718caymans",
"acs8",
"adder",
"alpha",
"aperta",
"aventadors",
"bati",
"blista",
"bmws",
"buccaneer",
"c7",
"clio",
"demon",
"elegy2",
"exemplar",
"f4rr",
"faggio2",
"fatboy",
"fc15",
"felon",
"ferrari812",
"hayabusa",
"hcbr17",
"hexer",
"lykan",
"m4",
"mule",
"oracle",
"prairie",
"r8ppi",
"rocoto",
"ruffian",
"sentinel",
"sentinel2",
"enduro",
"stanier",
"stretch",
"t20",
"ttrs",
"vader",
"vigero",
"xt66",
"zentenario",
"zentorno",
"zl12017",
"zx10r",
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
