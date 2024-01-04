-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
tpVRP = {}
Tunnel.bindInterface("transporter",tpVRP)
vtpSERVER = Tunnel.getInterface("transporter")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local ouService = false
local inService = false
local selected = 0
local blip = nil
local coSelected = 0
local deSelected = 0
local vehModel = 1747439474
local timeSeconds = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELIVER
-----------------------------------------------------------------------------------------------------------------------------------------
local deliver = {
	{ 147.59,-1035.76,29.35,158.22 },
	{ 145.95,-1035.18,29.35,159.58 },
	{ 289.11,-1256.84,29.45,272.09 },
	{ 288.85,-1282.36,29.64,268.68 },
	{ -56.95,-1752.06,29.43,46.38 },
	{ -203.75,-861.35,30.27,25.8 },
	{ -254.43,-692.46,33.61,158.32 },
	{ -256.22,-716.01,33.53,67.9 },
	{ -721.08,-415.53,34.99,265.41 },
	{ -846.3,-341.27,38.69,115.1 },
	{ -846.84,-340.21,38.69,115.17 },
	{ -2072.35,-317.25,13.32,262.88 },
	{ 228.18,338.4,105.57,158.25 },
	{ 380.78,323.41,103.57,161.78 },
	{ -30.19,-723.7,44.23,339.56 },
	{ 5.27,-919.86,29.56,249.37 },
	{ 24.51,-945.96,29.36,338.97 },
	{ 33.19,-1348.25,29.5,177.59 },
	{ 295.76,-896.13,29.22,251.01 },
	{ 296.47,-894.21,29.24,252.01 },
	{ 356.96,173.57,103.07,341.32 },
	{ 285.48,143.38,104.18,160.1 },
	{ 158.65,234.21,106.63,338.35 },
	{ -165.16,234.78,94.93,90.0 },
	{ -165.16,232.76,94.93,90.11 },
	{ -258.82,-723.35,33.48,71.14 },
	{ -301.69,-830.01,32.42,350.36 },
	{ -303.25,-829.73,32.42,354.01 },
	{ 129.2,-1291.15,29.27,297.55 },
	{ -717.69,-915.66,19.22,87.44 },
	{ -660.73,-854.06,24.49,179.16 },
	{ 1153.69,-326.77,69.21,98.26 },
	{ -1827.27,784.85,138.31,128.04 },
	{ -2975.02,380.14,15.0,262.69 },
	{ -3040.71,593.1,7.91,284.56 },
	{ -1109.8,-1690.81,4.38,125.01 },
	{ 527.35,-160.71,57.1,268.13 },
	{ -1430.16,-211.08,46.51,112.53 },
	{ -1415.95,-212.01,46.51,227.98 },
	{ -1286.26,-213.42,42.45,122.23 },
	{ -1289.29,-226.83,42.45,120.79 },
	{ -1285.61,-224.29,42.45,301.24 },
	{ -1205.03,-326.26,37.84,115.33 },
	{ -1205.72,-324.77,37.86,113.88 },
	{ -1282.54,-210.92,42.45,301.87 },
	{ 89.73,2.47,68.31,337.43 },
	{ 1077.73,-776.52,58.25,180.02 },
	{ -1305.41,-706.37,25.33,127.89 },
	{ -27.98,-724.52,44.23,338.4 },
	{ -57.68,-92.66,57.78,291.21 },
	{ -866.64,-187.78,37.85,120.99 },
	{ -867.6,-186.1,37.85,117.72 },
	{ -2293.93,354.83,174.61,112.06 },
	{ -2294.72,356.52,174.61,115.3 },
	{ -2295.48,358.17,174.61,112.25 },
	{ 112.55,-819.38,31.34,159.55 },
	{ -2956.9,487.66,15.47,176.75 },
	{ -2958.98,487.8,15.47,175.92 },
	{ -596.07,-1161.29,22.33,0.51 },
	{ -594.53,-1161.27,22.33,358.18 },
	{ 1138.26,-468.94,66.74,72.73 },
	{ 1167.0,-456.08,66.8,341.24 },
	{ 236.6,219.66,106.29,289.38 },
	{ 236.95,218.7,106.29,290.55 },
	{ 237.48,217.82,106.29,292.16 },
	{ 237.89,216.91,106.29,291.38 },
	{ 238.32,215.98,106.29,289.65 },
	{ 129.68,-1291.94,29.27,297.52 },
	{ 130.11,-1292.67,29.27,295.5 },
	{ 119.07,-883.66,31.13,69.71 },
	{ -1410.34,-98.76,52.43,106.76 },
	{ -1409.76,-100.52,52.39,105.93 },
	{ -1570.11,-546.69,34.96,215.83 },
	{ -1571.04,-547.38,34.96,215.83 },
	{ -821.63,-1081.9,11.14,31.81 },
	{ -537.83,-854.49,29.3,179.26 },
	{ 111.31,-775.26,31.44,341.09 },
	{ 114.45,-776.39,31.42,340.98 },
	{ -3043.99,594.56,7.74,198.83 },
	{ 315.1,-593.67,43.29,68.07 },
	{ -712.85,-818.9,23.73,0.02 },
	{ -710.01,-818.99,23.73,0.56 },
	{ -1315.71,-834.74,16.97,307.5 },
	{ -1314.77,-835.98,16.97,305.88 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- POUCHS
-----------------------------------------------------------------------------------------------------------------------------------------
local collect = {
	{ 263.11,216.8,101.69,340.16 },
	{ 263.98,216.49,101.69,342.07 },
	{ 264.78,216.19,101.69,341.62 },
	{ 265.64,215.87,101.69,345.01 },
	{ 266.46,215.51,101.69,345.13 },
	{ 266.63,214.9,101.69,253.25 },
	{ 266.38,214.22,101.69,253.76 },
	{ 266.1,213.44,101.69,252.3 },
	{ 265.8,212.68,101.69,254.85 },
	{ 265.58,212.02,101.69,256.95 },
	{ 264.91,211.73,101.69,158.15 },
	{ 264.13,211.98,101.69,159.89 },
	{ 263.16,212.33,101.69,165.34 },
	{ 262.4,212.62,101.69,161.24 },
	{ 261.67,212.88,101.69,161.44 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTSERVICE
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()

		if not IsPedInAnyVehicle(ped) and not inService then
			local coords = GetEntityCoords(ped)
			local init = configs.transporter.init
			local distance = #(coords - vector3(init[1],init[2],init[3]))
			if distance <= 2.5 then
				timeDistance = 4
				DrawText3D(init[1],init[2],init[3],"~g~E~w~ TRANSPORTER",450)
				if distance <= 0.6 and IsControlJustPressed(1,38) then
					toggleServiceTransporter()
					Citizen.Wait(5000)
				end
			end
		end

		Citizen.Wait(timeDistance)
	end
end)

function toggleServiceTransporter()
	if inService then
		inService = false
		if DoesBlipExist(blip) then
			RemoveBlip(blip)
			blip = nil
		end
	else
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		local init = configs.transporter.init
		local distance = #(coords - vector3(init[1],init[2],init[3]))
		if distance <= 15 then
			startthreadservicetrans()
			startthreadserviceseconds()
			inService = true
			if not ouService then
				ouService = true
				coSelected = math.random(#collect)
				deSelected = math.random(#deliver)
			end
			makeBlipMarked()
			TriggerEvent("Notify","sucesso","Você iniciou o emprego de <b>Transportador</b>.",3000)
		end
	end
end

Citizen.CreateThread(function()
	while true do
		local will = 500
		if inService then
			will = 4
			drawTxt_le("PRESSIONE ~r~F7~w~ SE DESEJA FINALIZAR O EXPEDIENTE",4,0.24,0.922,0.4,255,255,255,237)
			if IsControlJustPressed(1,168) then
				TriggerEvent("Notify","negado","Emprego de <b>Transportador</b> finalizado.",5000)
				inService = false
				if DoesBlipExist(blip) then
					RemoveBlip(blip)
					blip = nil
				end
			end
		end
		Citizen.Wait(will)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSERVICE
-----------------------------------------------------------------------------------------------------------------------------------------
function startthreadservicetrans()
	Citizen.CreateThread(function()
		while true do
			local timeDistance = 500
			if inService then
				local ped = PlayerPedId()
				if not IsPedInAnyVehicle(ped) then
					local coords = GetEntityCoords(ped)

					-- COLLECT
					local collectDis = #(coords - vector3(collect[coSelected][1],collect[coSelected][2],collect[coSelected][3]))
					if collectDis <= 10 then
						timeDistance = 4
						DrawMarker(21,collect[coSelected][1],collect[coSelected][2],collect[coSelected][3]-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,100,185,230,50,0,0,0,1)
						if collectDis <= 0.6 and IsControlJustPressed(1,38) and timeSeconds <= 0 then
							timeSeconds = 2
							if vtpSERVER.collectMethod() then
								SetEntityHeading(ped,collect[coSelected][4])
								SetEntityCoords(ped,collect[coSelected][1],collect[coSelected][2],collect[coSelected][3]-1)

								SetTimeout(5000,function()
									vRP.removeObjects()
									TriggerEvent("cancelando",false)
									coSelected = math.random(#collect)
								end)
							end
						end
					end

					-- DELIVER
					local deliverDis = #(coords - vector3(deliver[deSelected][1],deliver[deSelected][2],deliver[deSelected][3]))
					if deliverDis <= 100 then
						timeDistance = 4
						DrawMarker(21,deliver[deSelected][1],deliver[deSelected][2],deliver[deSelected][3]-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,100,185,230,50,0,0,0,1)
						if deliverDis <= 0.6 and IsControlJustPressed(1,38) and timeSeconds <= 0 then
							timeSeconds = 2
							if vtpSERVER.paymentMethodTransporter() then
								deSelected = math.random(#deliver)
								makeBlipMarked()
							end
						end
					end
				end
			end
			Citizen.Wait(timeDistance)
		end
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMESECONDS
-----------------------------------------------------------------------------------------------------------------------------------------
function startthreadserviceseconds()
	Citizen.CreateThread(function()
		while true do
			if timeSeconds > 0 then
				timeSeconds = timeSeconds - 1
			end
			Citizen.Wait(1000)
		end
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAKEBLIPRACE
-----------------------------------------------------------------------------------------------------------------------------------------
function makeBlipMarked()
	if DoesBlipExist(blip) then
		RemoveBlip(blip)
		blip = nil
	end

	blip = AddBlipForCoord(deliver[deSelected][1],deliver[deSelected][2],deliver[deSelected][3])
	SetBlipSprite(blip,1)
	SetBlipColour(blip,84)
	SetBlipScale(blip,0.4)
	SetBlipAsShortRange(blip,false)
	SetBlipRoute(blip,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Delivery")
	EndTextCommandSetBlipName(blip)
end