-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

-----------------------------------
--########## Funções vRP ##########
-----------------------------------

function getUserId(source)
    return vRP.getUserId(source)
end

function getUserSource(user_id)
	if Config.base == "summerz" then
		return vRP.userSource(user_id)
	end
	return vRP.getUserSource(user_id)
end

function getUserIdentity(user_id)
    if Config.base == "summerz" then
		return vRP.userIdentity(user_id)
	end
	return vRP.getUserIdentity(user_id)
end

function hasPermission(user_id, perm)
    return vRP.hasPermission(user_id, perm)
end

function paymentMethod(user_id, price)
    if Config.base == "creative" or Config.base == "summerz" then
        return vRP.paymentBank(parseInt(user_id),price)
    elseif Config.base == "vrpex" then
        return vRP.tryFullPayment(parseInt(user_id),price)
    end
end

function addBank(user_id, amount)
    local nplayer = getUserSource(user_id)
    if nplayer then
        if Config.base == "creative" or Config.base == "summerz" then
            vRP.addBank(user_id, amount)
        elseif Config.base == "vrpex" then
            vRP.giveBankMoney(user_id, amount)
        end
        TriggerClientEvent("Notify",nplayer,"sucesso","Dinheiro recebido R$"..amount,5000)
    end
end

function prepare(name, query)
    vRP.prepare(name, query)
end

function query(name, data)
    return vRP.query(name, data)
end

function execute(name, data)
    vRP.execute(name, data)
end

function prompt(source,title,text)
    return vRP.prompt(source,title,text)
end

function getSData(key)
    return vRP.getSData(key)
end

function request(source,text,time)
    return vRP.request(source,text,time)
end

function playAnim(source)
    if Config.base == "creative" or Config.base == "summerz" then
        vRPclient.playAnim(source, true,{"anim@mp_player_intmenu@key_fob@","fob_click"},false)
    elseif Config.base == "vrpex" then
        vRPclient.playAnim(source, true,{{"anim@mp_player_intmenu@key_fob@","fob_click"}},false)
    end
    Citizen.Wait(400)
    vRPclient.stopAnim(source)
end