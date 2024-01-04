local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Webhooks = module("Reborn/webhooks")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "protect")

src = {}
Tunnel.bindInterface("protect",src)
Proxy.addInterface("protect",src)

local loaded = {}

function src.pegaTrouxa()
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

    local fields2 = {}
    table.insert(fields2, { name = "ChomeInspector:", value = 'ID => **'..user_id..'** \nFoi pego tentando roubar o Html/Client da cidade.', inline = true });
    PerformHttpRequest("", function(err, text, headers) end, 'POST', json.encode({username = "In Game Log System", content = nil, embeds = {{color = 16754176, fields = fields2,}}}), { ['Content-Type'] = 'application/json' }) 
    print("Tentativa de Acesso ao Chrome Inspector! ID: "..user_id)
    vRP.execute("vRP/set_banned",{ steam = tostring(identity.steam), banned = 1 })
    vRP.kick(user_id,"Administração Mandou um Beijo <3")
end

RegisterCommand("combat", function(source, args, rawcmd)
    TriggerClientEvent("pixel_antiCL:show", source)
end)

AddEventHandler("playerDropped", function(reason)
    local source = source
    local crds = GetEntityCoords(GetPlayerPed(source))
    local identifier = vRP.getUserId(source)
    if identifier then
        TriggerClientEvent("pixel_anticl", -1, source, crds, identifier, reason)
        vRP.createWeebHook(Webhooks.webhookexit,"```prolog\n[ID]: "..identifier.." \n[IP]: "..GetPlayerEndpoint(source).." \n[=========SAIU DO SERVIDOR=========]\nREASON: "..reason.."\n"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
    end
end)