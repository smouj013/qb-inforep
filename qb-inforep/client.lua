local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local inforepOpen = false

--COMANDO--
RegisterCommand('inforep', function()
    if not inforepOpen then
        QBCore.Functions.TriggerCallback("qb-inforep:server:Reputacion", function(reputacion, drogas, fabricar, componentes, trabajo, grua, hotdogs, taxi, camion)
            SendNUIMessage({
                action = "open",
                reputacion = nil,
                drogas = drogas,
                fabricar = fabricar,
                componentes = componentes,
                trabajo = nil,
                grua = grua,
                hotdogs = hotdogs,
                taxi = taxi,
                camion = camion
            })
            inforepOpen = true
        end)
    else
        SendNUIMessage({
            action = "close",
        })
        inforepOpen = false
    end
end)
--TECLA--
RegisterKeyMapping('inforep', 'Abre el panel de info de reputación.', 'keyboard', Config.OpenKey)
