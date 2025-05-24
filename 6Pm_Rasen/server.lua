
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("rasen:pay")
AddEventHandler("rasen:pay", function(points)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    
    if points < 0 then
	-- ban player or log it
	print('rasen: ' .. xPlayer.identifier .. ' hat versucht, das Rasen-Skript auszunutzen!')
	return
    end

    if points > 10000 then
	print('rasen: ' .. xPlayer.identifier .. 'wahrscheinlich wurde versucht, das Rasen-Skript auszunutzen!')
	return		
    end
		
    xPlayer.addMoney(points * 50)
end)
