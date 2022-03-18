local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-inforep:server:Reputacion', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local reputacion, trabajo
    local drogas, fabricar, componentes, grua, hotdogs, taxi, camion = 0, 0, 0, 0, 0, 0, 0
    if QBCore.Functions.GetPlayer(source) then
        reputacion = Player.PlayerData.metadata
        drogas = reputacion["dealerrep"]
        fabricar = reputacion["craftingrep"]
        componentes = reputacion["attachmentcraftingrep"]
        trabajo = reputacion["jobrep"]
        grua = trabajo["tow"]
        hotdogs = trabajo["hotdog"]
        taxi = trabajo["taxi"]
        camion = trabajo["trucker"]
    end
    cb(reputacion, drogas, fabricar, componentes, trabajo, grua, hotdogs, taxi, camion)
end)
