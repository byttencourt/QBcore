local Promise = nil

exports("ActionMinigame",function(data)
	SetNuiFocus(true, false)
	TriggerScreenblurFadeIn() -- startBlur
	SendNUIMessage({
		action = "ACTION_MINIGAME",
		data = data
	})
	Promise = promise.new()
	local result = Citizen.Await(Promise)
	return result
end)

RegisterNUICallback("eventcallback",function(data, cb)
	if data.action == 'Resultminigame' then
		TriggerScreenblurFadeOut() -- stopBlur
		SetNuiFocus(false, false)
		Promise:resolve(data.data)
	end
	cb("OK")
end)

RegisterCommand("testxx",function()
	local result = exports["CS.Minigame"]:ActionMinigame({
		text 			= "PICK LOCK",
		eventkey 		= "Space", --หาจากตรง event.code  https://www.toptal.com/developers/keycode
		sprintSpeed 	= 800,
		addRandom 		= {10, 20},
		removeRandom 	= {5, 10},
	})
	-- print(json.encode(result))
	print(result.result)
end,false)