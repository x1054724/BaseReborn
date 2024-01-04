-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cmVRP = {}
Tunnel.bindInterface("cashmachine",cmVRP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local machineGlobal = 1200
local machineStart = false
local registerTimers = {}
local active = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
function cmVRP.startMachine()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local copAmount = vRP.numPermission("Police")
		if parseInt(#copAmount) <= Config.cashMachine['cops'] then
			TriggerClientEvent("Notify",source,"aviso","Sistema indisponível no momento, tente mais tarde.",5000)
			return false
		--[[ elseif parseInt(machineGlobal) > 0 then
			TriggerClientEvent("Notify",source,"aviso","Aguarde "..vRP.getTimers(parseInt(machineGlobal)),5000)
			return false ]]
		else
			if not machineStart then
				machineStart = true
				machineGlobal = 1200
				vRP.wantedTimer(parseInt(user_id),300)
				vRP.removeInventoryItem(user_id,"c4",1)
				return true
			end
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLPOLICE
-----------------------------------------------------------------------------------------------------------------------------------------
function cmVRP.callPolice(x,y,z)
	local copAmount = vRP.numPermission("Police")
	for k,v in pairs(copAmount) do
		local player = vRP.getUserSource(v)
		async(function()
			TriggerClientEvent("NotifyPush",player,{ time = os.date("%H:%M:%S - %d/%m/%Y"), text = "Me ajuda esta tendo um roubo a caixa eletronico aqui neste bairro!", code = 31, title = "Roubo ao Caixa Eletrônico", x = x, y = y, z = z, rgba = {170,80,25} })
		end)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOPMACHINE
-----------------------------------------------------------------------------------------------------------------------------------------
function cmVRP.stopMachine(x,y,z)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if machineStart then
			machineStart = false
			local grid = vRP.getGridzone(x,y)
			TriggerEvent("ld-inv:DropItem",{ inventory = "ground", item = "dollars", qtd = math.random(15000,17500), x = x, y = y, z = z })
			local random = math.random(100)
			if parseInt(random) >= 75 then
				TriggerEvent("ld-inv:DropItem",{ inventory = "ground", item = "aluminum", qtd = math.random(10,20), x = x, y = y, z = z })
			elseif parseInt(random) >= 50 and parseInt(random) <= 74 then
				TriggerEvent("ld-inv:DropItem",{ inventory = "ground", item = "rubber", qtd = math.random(25,50), x = x, y = y, z = z })
			elseif parseInt(random) >= 25 and parseInt(random) <= 49 then
				TriggerEvent("ld-inv:DropItem",{ inventory = "ground", item = "plastic", qtd = math.random(25,50), x = x, y = y, z = z })
			elseif parseInt(random) <= 24 then
				TriggerEvent("ld-inv:DropItem",{ inventory = "ground", item = "plastic", qtd = math.random(10,20), x = x, y = y, z = z })
			end
		end
	end
end

function cmVRP.cashRegister(x,y,z)
	local source = source
	local user_id = vRP.getUserId(source)
	local copAmount = vRP.numPermission("Police")
	if #copAmount >= Config.cashMachine['cops'] then
		vRPclient.stopActived(source)
		if vRP.tryGetInventoryItem(user_id,"lockpick",1,true) then
			return true
		else
			TriggerClientEvent("Notify",source,"negado","Necessário de 1x lockpick.",5000)
			return false
		end
	else
		TriggerClientEvent("Notify",source,"importante","Necessário de no mínimo 2 policias em patrulha.",5000)
		return false
	end
end

function cmVRP.startRegister(x,y,z)
	local source = source
	local user_id = vRP.getUserId(source)
	table.insert(registerTimers,{ x,y,z,120 })
	active[user_id] = 15
	TriggerClientEvent("cashRegister:updateRegister",-1,registerTimers)
	vRPclient._playAnim(source,false,{"oddjobs@shop_robbery@rob_till","loop"},true)
	TriggerClientEvent("Progress",source,30000,"Utilizando...")
	cmVRP.callPolice(x,y,z)
	repeat
		if tonumber(active[user_id]) > 0 and tonumber(active[user_id]) <= 30 then
			vRP.giveInventoryItem(user_id,"dollars2",math.random(200,500),true)
		end
		Citizen.Wait(1500)
	until active[user_id] == 0
		active[user_id] = nil
		Citizen.Wait(500)
		vRPclient._removeObjects(source)
		vRP.wantedTimer(user_id,15)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		if parseInt(machineGlobal) > 0 then
			machineGlobal = parseInt(machineGlobal) - 1
			if parseInt(machineGlobal) <= 0 then
				machineStart = false
			end
		end
		for k,v in pairs(registerTimers) do
			if registerTimers[k][4] > 0 then
				registerTimers[k][4] = registerTimers[k][4] - 1

				if registerTimers[k][4] <= 0 then
					registerTimers[k] = nil
					TriggerClientEvent("cashRegister:updateRegister",-1,registerTimers)
				end
			end
		end
		for k,v in pairs(active) do
			if active[k] > 0 then
				active[k] = active[k] - 1
				if active[user_id] == 0 then
					active[user_id] = nil
				end
			end
		end
		Citizen.Wait(1000)
	end
end)

