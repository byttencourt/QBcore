local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('EasyDrift:addMoney')
AddEventHandler('EasyDrift:addMoney', function(Reward)
    local _source = source
    
    local Player = QBCore.Functions.GetPlayer(_source)
    
    if Player then
        local moneytype = "cash"
        local montantRecompense = (Reward)
        Player.Functions.AddMoney(moneytype, montantRecompense, "Drift Reward")
      --  print("Récompense en argent : $" .. montantRecompense)
    end
end)
