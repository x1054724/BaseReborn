-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local weed = {}
local chemical = {}
local alcohol = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEEDTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		for k,v in pairs(weed) do
			if weed[k] > 0 and vRP.getUserSource(k) then
				weed[k] = v - 1
				if weed[k] <= 0 then
					weed[k] = nil
				end
			end
		end
		for k,v in pairs(chemical) do
			if chemical[k] > 0 and vRP.getUserSource(k) then
				chemical[k] = v - 1
				if chemical[k] <= 0 then
					chemical[k] = nil
				end
			end
		end
		for k,v in pairs(alcohol) do
			if alcohol[k] > 0 and vRP.getUserSource(k) then
				alcohol[k] = v - 1
				if alcohol[k] <= 0 then
					alcohol[k] = nil
				end
			end
		end
		Citizen.Wait(10*60000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEEDRETURN
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.weedReturn(user_id)
	if weed[user_id] ~= nil then
		return weed[user_id]
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEEDTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.weedTimer(user_id,timer)
	if weed[user_id] ~= nil then
		weed[user_id] = weed[user_id] + timer
	else
		weed[user_id] = timer
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEMICALRETURN
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.chemicalReturn(user_id)
	if chemical[user_id] ~= nil then
		return chemical[user_id]
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEMICALTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.chemicalTimer(user_id,timer)
	if chemical[user_id] ~= nil then
		chemical[user_id] = chemical[user_id] + timer
	else
		chemical[user_id] = timer
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALCOHOLRETURN
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.alcoholReturn(user_id)
	if alcohol[user_id] ~= nil then
		return alcohol[user_id]
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEMICALTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.alcoholTimer(user_id,timer)
	if alcohol[user_id] ~= nil then
		alcohol[user_id] = alcohol[user_id] + timer
	else
		alcohol[user_id] = timer
	end
end