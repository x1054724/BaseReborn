Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}

config.base = "creative"

-- LOCAL ONDE IRA PUXAR AS IMAGENS
config.ip = "http://189.127.165.131/TITANIUM2023/imagens"

basesVehDB = {
    ['vrpex'] = "vrp_user_vehicles",
    ['creative'] = "vrp_vehicles",
    ['summerz'] = "summerz_vehicles",
    ['cn'] = "vehicles"
}

config.vehicleDB = basesVehDB[config.base]

config.rentPrice = 0.1

-- TABELA DE CONFIGURAÇÃO DA CONCESSIONÁRIA
config.conce = {
    [1] = {
        coord = vec3(-32.9,-1096.98,27.28),                 -- LOCAL PARA ABRIR A CONCE
        spaw_vehicle = vec3(-36.8,-1093.01,27.31),          -- LOCAL ONDE IRA CRIAR O VEICULO PARA SER VISUALIZADO
        camCoord = vec3(-36.88,-1097.37,27.00),             -- POSIÇÃO DA CAMERA
        testeDrive = vec3(-17.17,-1079.76,26.68),           -- LOCAL ONDE IRA CRIAR O VEICULO DE TEST DRIVE
        testeDriveHeading = 134.07,                         -- DIREÇÃO QUE O VEICULO DO TESTE DRIVE SERA CRIADO
        testDriveDuracao = 30,                              -- TEMPO DE DURAÇÃO DO TESTE DRIVE
    },
}

config.veiculos = {
    ['supercar'] = {        
        ['350z'] = { nome = '350 Z', valor = 250000, peso = 60 },
        ['acuransx'] = { nome = 'Acuran SX', valor = 350000, peso = 60 },
        ['astonmartindbs'] = { nome = 'Aston Martin DBS', valor = 350000, peso = 60 },
        ['audir8'] = { nome = 'Audi R8', valor = 370000, peso = 60 },
        ['aventador'] = { nome = 'Aventador', valor = 370000, peso = 60 },
        ['bentleybacalar'] = { nome = 'Bentley Bacala R', valor = 500000, peso = 60 },
        ['bloodline'] = { nome = 'BloodLine', valor = 370000, peso = 40 },
        ['bmwi8'] = { nome = 'BMW I8', valor = 420000, peso = 60 },
        ['bmwm1wb'] = { nome = 'BMW 1WB', valor = 420000, peso = 60 },
        ['bmwm4gts'] = { nome = 'BMW M4 GTS', valor = 450000, peso = 60 },
        ['bmwm5e34'] = { nome = 'BMW M5 E34', valor = 450000, peso = 60 },
        ['bugattiatlantic'] = { nome = 'Bugatti Atlantic', valor = 480000, peso = 60 },
        ['camaro'] = { nome = 'Camaro', valor = 400000, peso = 60 },
        ['civictyper'] = { nome = 'Civic Type R', valor = 300000, peso = 60 },
        ['corvettec7'] = { nome = 'Corvette C7', valor = 430000, peso = 60 },
        ['dodgecharger1970'] = { nome = 'Dodge Charger 1970', valor = 410000, peso = 60 },
        ['dodgechargerrt69'] = { nome = 'Dodge Charger RT69', valor = 425000, peso = 60 },
        ['dodgechargersrt'] = { nome = 'Dodge Charger SRT', valor = 415000, peso = 60 },
        ['escalade2021'] = { nome = 'Escalade 2021', valor = 315000, peso = 60 },
        ['escaladegt900'] = { nome = 'Escalade GT900', valor = 365000, peso = 60 },
        ['ferrarif12'] = { nome = 'Ferrari F12', valor = 290000, peso = 60 },
        ['ferrarif40'] = { nome = 'Ferrari F40', valor = 365000, peso = 60 },
        ['golfgti'] = { nome = 'Golf GTI', valor = 200000, peso = 60 },
        ['golfmk7'] = { nome = 'Golf MK7', valor = 180000, peso = 60 },
        ['jeepcherokee'] = { nome = 'Jeep Cherokee', valor = 280000, peso = 60 },
        ['lancerevolutionx'] = { nome = 'Lancer Evolution X', valor = 380000, peso = 60 },
        ['m8competition'] = { nome = 'M8 Competition', valor = 340000, peso = 60 },
        -- ['maverick2'] = { nome = 'Maverick 2', valor = 340000, peso = 60 },
        ['mazdarx7'] = { nome = 'Mazda RX7', valor = 400000, peso = 60 },
        ['mazdarx72'] = { nome = 'Mazda RX72', valor = 410000, peso = 60 },
        ['mercedesamg63'] = { nome = 'Mercedes AMG 63', valor = 510000, peso = 60 },
        ['mercedesg65'] = { nome = 'Mercedes G65', valor = 500000, peso = 60 },
        ['mercedesgt63'] = { nome = 'Mercedes GT63', valor = 490000, peso = 60 },
        ['mustang1969'] = { nome = 'Mustang 1969', valor = 460000, peso = 60 },
        ['mustangfast'] = { nome = 'Mustang Fast', valor = 560000, peso = 60 },
        ['nissangtr2'] = { nome = 'Nissan GTR 2', valor = 560000, peso = 60 },
        ['nissangtr3'] = { nome = 'Nissan GTR 3', valor = 600000, peso = 60 },
        ['nissangtr50'] = { nome = 'Nissan GTR 50', valor = 650000, peso = 60 },
        ['nissangtrnismo'] = { nome = 'nissangtrnismo', valor = 350000, peso = 60 },
        ['panameramansory'] = { nome = 'Panamera Mansory', valor = 550000, peso = 60 },
        ['porsche911'] = { nome = 'Porsche 911', valor = 570000, peso = 60 },
        ['r1'] = { nome = 'R1', valor = 400000, peso = 40 },
        ['r6'] = { nome = 'R6', valor = 450000, peso = 40 },
        ['rangerover'] = { nome = 'Range Rover', valor = 490000, peso = 60 },
        ['s1000rr'] = { nome = 'S1000 RR', valor = 490000, peso = 40 },
        ['shelbygt500'] = { nome = 'Shelby GT500', valor = 370000, peso = 60 },
        ['silvias15'] = { nome = 'Silvia S15', valor = 420000, peso = 60 },
        ['skyliner34'] = { nome = 'Skyline R34', valor = 420000, peso = 60 },
        ['skyliner342'] = { nome = 'Skyline R342', valor = 470000, peso = 60 },
        ['subarubrz'] = { nome = 'Subaru BRZ', valor = 400000, peso = 60 },
        ['subaruimpreza'] = { nome = 'Subaru Impreza', valor = 430000, peso = 60 },
        ['subaruimpreza'] = { nome = 'Subaru Impreza', valor = 430000, peso = 60 },
        ['toyotasupra2'] = { nome = 'Toyota Supra 2', valor = 380000, peso = 60 },
        ['urbandevil'] = { nome = 'Urban Devil', valor = 360000, peso = 40 },
        ['vwtouareg'] = { nome = 'VW Touareg', valor = 300000, peso = 60 },
    },
    ['motorbike'] = {
        ['avarus'] = { nome = 'avarus', valor = 440000, peso = 40 },
        ['bagger'] = { nome = 'bagger', valor = 300000, peso = 40 },
        ['bati'] = { nome = 'bati', valor = 370000, peso = 40 },
        ['bati2'] = { nome = 'bati2', valor = 50000, peso = 40 },
        ['bf400'] = { nome = 'bf400', valor = 450000, peso = 40 },
        ['carbonrs'] = { nome = 'carbonrs', valor = 370000, peso = 40 },
        ['chimera'] = { nome = 'chimera', valor = 345000, peso = 40 },
        ['cliffhanger'] = { nome = 'cliffhanger', valor = 310000, peso = 40 },
        ['daemon'] = { nome = 'daemon', valor = 240000, peso = 40 },
        ['daemon2'] = { nome = 'daemon2', valor = 200000, peso = 40 },
        ['defiler'] = { nome = 'defiler', valor = 460000, peso = 40 },
        ['deathbike'] = { nome = 'deathbike', valor = 215000, peso = 40 },
        ['deathbike2'] = { nome = 'deathbike2', valor = 430000, peso = 40 },
        ['deathbike3'] = { nome = 'deathbike3', valor = 425000, peso = 40 },
        ['diablous'] = { nome = 'diablous', valor = 430000, peso = 40 },
        ['diablous2'] = { nome = 'diablous2', valor = 460000, peso = 40 },
        ['double'] = { nome = 'double', valor = 370000, peso = 40 },
        ['enduro'] = { nome = 'enduro', valor = 195000, peso = 40 },
        ['esskey'] = { nome = 'esskey', valor = 320000, peso = 40 },
        ['faggio'] = { nome = 'faggio', valor = 15000, peso = 40 },
        ['faggio2'] = { nome = 'faggio2', valor = 3000, peso = 40 },
        ['faggio3'] = { nome = 'faggio3', valor = 10000, peso = 40 },
        ['fcr'] = { nome = 'fcr', valor = 195000, peso = 40 },
        ['fcr2'] = { nome = 'fcr2', valor = 215000, peso = 40 },
        ['gargoyle'] = { nome = 'gargoyle', valor = 345000, peso = 40 },
        ['hakuchou'] = { nome = 'hakuchou', valor = 380000, peso = 40 },
        ['hakuchou2'] = { nome = 'hakuchou2', valor = 550000, peso = 40 },
        ['hexer'] = { nome = 'hexer', valor = 250000, peso = 40 },
        ['innovation'] = { nome = 'innovation', valor = 285000, peso = 40 },
        ['lectro'] = { nome = 'lectro', valor = 380000, peso = 40 },
        ['manchez'] = { nome = 'manchez', valor = 355000, peso = 40 },
        ['nemesis'] = { nome = 'nemesis', valor = 345000, peso = 40 },
        ['nightblade'] = { nome = 'nightblade', valor = 415000, peso = 40 },
        ['pcj'] = { nome = 'pcj', valor = 230000, peso = 40 },
        ['ruffian'] = { nome = 'ruffian', valor = 450000, peso = 40 },
        ['ratbike'] = { nome = 'ratbike', valor = 185000, peso = 40 },
        ['rrocket'] = { nome = 'rrocket', valor = 250000, peso = 40 },
        ['sanchez'] = { nome = 'sanchez', valor = 185000, peso = 40 },
        ['sanchez2'] = { nome = 'sanchez2', valor = 195000, peso = 40 },
        ['sanctus'] = { nome = 'sanctus', valor = 185000, peso = 40 },
        ['shotaro'] = { nome = 'shotaro', valor = 10000000, peso = 40 },
        ['sovereign'] = { nome = 'sovereign', valor = 285000, peso = 40 },
        ['stryder'] = { nome = 'stryder', valor = 70000, peso = 40 },
        ['thrust'] = { nome = 'thrust', valor = 285000, peso = 40 },
        ['vader'] = { nome = 'vader', valor = 290000, peso = 40 },
        ['vindicator'] = { nome = 'vindicator', valor = 215000, peso = 40 },
        ['vortex'] = { nome = 'vortex', valor = 320000, peso = 40 },
        ['wolfsbane'] = { nome = 'wolfsbane', valor = 345000, peso = 40 },
        ['zombiea'] = { nome = 'zombiea', valor = 300000, peso = 40 },
        ['zombieb'] = { nome = 'zombieb', valor = 300000, peso = 40 },
        ['manchez2'] = { nome = 'manchez2', valor = 355000, peso = 40 },
        ['bmx'] = { nome = 'bmx', valor = 5000,peso = 40 },
        ['cruiser'] = { nome = 'cruiser', valor = 5000,peso = 40 },
        ['fixter'] = { nome = 'fixter', valor = 5000,peso = 40 },
        ['scorcher'] = { nome = 'scorcher', valor = 5000,peso = 40 },
        ['tribike'] = { nome = 'tribike', valor = 5000,peso = 40 },
        ['tribike2'] = { nome = 'tribike2', valor = 5000,peso = 40 },
        ['tribike3'] = { nome = 'tribike3', valor = 5000,peso = 40 },
    },
    ['sportcar'] = {
        ['alpha'] = { nome = 'alpha', valor = 240000, peso = 60 },
        ['banshee'] = { nome = 'banshee', valor = 240000, peso = 60 },
        ['bestiagts'] = { nome = 'bestiagts', valor = 290000, peso = 60 },
        ['blista2'] = { nome = 'blista2', valor = 50000, peso = 60 },
        ['blista3'] = { nome = 'blista3', valor = 70000, peso = 60 },
        ['buffalo2'] = { nome = 'buffalo2', valor = 240000, peso = 60 },
        ['buffalo3'] = { nome = 'buffalo3', valor = 240000, peso = 60 },
        ['carbonizzare'] = { nome = 'carbonizzare', valor = 250000, peso = 60 },
        ['comet2'] = { nome = 'comet2', valor = 170000, peso = 60 },
        ['comet3'] = { nome = 'comet3', valor = 230000, peso = 60 },
        ['comet4'] = { nome = 'comet4', valor = 300000, peso = 60 },
        ['comet5'] = { nome = 'comet5', valor = 300000, peso = 60 },
        ['coquette'] = { nome = 'coquette', valor = 200000, peso = 60 },
        ['coquette4'] = { nome = 'coquette4', valor = 3000000, peso = 60 },
        ['drafter'] = { nome = 'drafter', valor = 500000, peso = 60 },
        ['deveste'] = { nome = 'deveste', valor = 600000, peso = 60 },
        ['elegy'] = { nome = 'elegy', valor = 340000, peso = 60 },
        ['elegy2'] = { nome = 'elegy2', valor = 375000, peso = 60 },
        ['feltzer2'] = { nome = 'feltzer2', valor = 185000, peso = 60 },
        ['flashgt'] = { nome = 'flashgt', valor = 330000, peso = 60 },
        ['furoregt'] = { nome = 'furoregt', valor = 525000, peso = 60 },
        ['futo'] = { nome = 'futo', valor = 400000, peso = 60 },
        ['gb200'] = { nome = 'gb200', valor = 540000, peso = 60 },
        ['hotring'] = { nome = 'hotring', valor = 280000, peso = 60 },
        ['komoda'] = { nome = 'komoda', valor = 340000, peso = 60 },
        ['imorgon'] = { nome = 'imorgon', valor = 580000, peso = 60 },
        ['issi7'] = { nome = 'issi7', valor = 530000, peso = 60 },
        ['italigto'] = { nome = 'italigto', valor = 330000, peso = 60 },
        ['jugular'] = { nome = 'jugular', valor = 650000, peso = 60 },
        ['jester'] = { nome = 'jester', valor = 690000, peso = 60 },
        ['jester2'] = { nome = 'jester2', valor = 700000, peso = 60 },
        ['jester3'] = { nome = 'jester3', valor = 710000, peso = 60 },
        ['khamelion'] = { nome = 'khamelion', valor = 220000, peso = 60 },
        ['kuruma'] = { nome = 'kuruma', valor = 280000, peso = 60 },
        ['locust'] = { nome = 'locust', valor = 450000, peso = 60 },
        ['lynx'] = { nome = 'lynx', valor = 290000, peso = 60 },
        ['massacro'] = { nome = 'massacro', valor = 320000, peso = 60 },
        ['massacro2'] = { nome = 'massacro2', valor = 325000, peso = 60 },
        ['neo'] = { nome = 'neo', valor = 300000, peso = 60 },
        ['neon'] = { nome = 'neon', valor = 300000, peso = 60 },
        ['ninef'] = { nome = 'ninef', valor = 440000, peso = 60 },
        ['ninef2'] = { nome = 'ninef2', valor = 460000, peso = 60 },
        ['omnis'] = { nome = 'omnis', valor = 335000, peso = 60 },
        ['paragon'] = { nome = 'paragon', valor = 290000, peso = 60 },
        ['paragon2'] = { nome = 'paragon2', valor = 315000, peso = 60 },
        ['pariah'] = { nome = 'pariah', valor = 700000, peso = 60 },
        ['penumbra'] = { nome = 'penumbra', valor = 340000, peso = 60 },
        ['penumbra2'] = { nome = 'penumbra2', valor = 355000, peso = 60 },
        ['raiden'] = { nome = 'raiden', valor = 210000, peso = 60 },
        ['rapidgt'] = { nome = 'rapidgt', valor = 290000, peso = 60 },
        ['rapidgt2'] = { nome = 'rapidgt2', valor = 315000, peso = 60 },
        ['raptor'] = { nome = 'raptor', valor = 240000, peso = 60 },
        ['revolter'] = { nome = 'revolter', valor = 220000, peso = 60 },
        ['ruston'] = { nome = 'ruston', valor = 490000, peso = 60 },
        ['schafter2'] = { nome = 'schafter2', valor = 420000, peso = 60 },
        ['schafter3'] = { nome = 'schafter3', valor = 290000, peso = 60 },
        ['schafter4'] = { nome = 'schafter4', valor = 310000, peso = 60 },
        ['schlagen'] = { nome = 'schlagen', valor = 600000, peso = 60 },
        ['schwarzer'] = { nome = 'schwarzer', valor = 400000, peso = 60 },
        ['sentinel3'] = { nome = 'sentinel3', valor = 190000, peso = 60 },
        ['seven70'] = { nome = 'seven70', valor = 300000, peso = 60 },
        ['specter'] = { nome = 'specter', valor = 350000, peso = 60 },
        ['specter2'] = { nome = 'specter2', valor = 380000, peso = 60 },
        ['streiter'] = { nome = 'streiter', valor = 280000, peso = 60 },
        ['sugoi'] = { nome = 'sugoi', valor = 320000, peso = 60 },
        ['sultan'] = { nome = 'sultan', valor = 180000, peso = 60 },
        ['sultan2'] = { nome = 'sultan2', valor = 580000, peso = 60 },
        ['surano'] = { nome = 'surano', valor = 290000, peso = 60 },
        ['tampa2'] = { nome = 'tampa2', valor = 200000, peso = 60 },
        ['tropos'] = { nome = 'tropos', valor = 190000, peso = 60 },
        ['verlierer2'] = { nome = 'verlierer2', valor = 300000, peso = 60 },
        ['vstr'] = { nome = 'vstr', valor = 600000, peso = 60 },
        ['italirsx'] = { nome = 'italirsx', valor = 1500000, peso = 60 },
        ['veto'] = { nome = 'veto', valor = 310000, peso = 60 },
        ['veto2'] = { nome = 'veto2', valor = 320000, peso = 60 },
        ['zr350'] = { nome = 'zr350', valor = 320000, peso = 60 },
        ['calico'] = { nome = 'calico', valor = 35000, peso = 60 },
        ['futo2'] = { nome = 'futo2', valor = 285000, peso = 60 },
        ['euros'] = { nome = 'euros', valor = 300000, peso = 60 },
        ['jester4'] = { nome = 'jester4', valor = 85000, peso = 60 },
        ['remus'] = { nome = 'remus', valor = 400000, peso = 60 },
        ['growler'] = { nome = 'growler', valor = 320000, peso = 60 },
        ['vectre'] = { nome = 'vectre', valor = 285000, peso = 60 },
        ['cypher'] = { nome = 'cypher', valor = 50000, peso = 60 },
        ['sultan3'] = { nome = 'sultan3', valor = 85000, peso = 60 },
        ['rt3000'] = { nome = 'rt3000', valor = 200000, peso = 60 },
        ['adder'] = { nome = 'adder', valor = 320000, peso = 60 },
        ['autarch'] = { nome = 'autarch', valor = 80000, peso = 60 },
        ['banshee2'] = { nome = 'banshee2', valor = 120000, peso = 60 },
        ['bullet'] = { nome = 'bullet', valor = 240000, peso = 60 },
        ['cheetah'] = { nome = 'cheetah', valor = 230000, peso = 60 },
        ['cyclone'] = { nome = 'cyclone', valor = 280000, peso = 60 },
        ['entity2'] = { nome = 'entity2', valor = 240000, peso = 60 },
        ['entityxf'] = { nome = 'entityxf', valor = 280000, peso = 60 },
        ['emerus'] = { nome = 'emerus', valor = 300000, peso = 60 },
        ['fmj'] = { nome = 'fmj', valor = 320000, peso = 60 },
        ['furia'] = { nome = 'furia', valor = 400000, peso = 60 },
        ['gp1'] = { nome = 'gp1', valor = 130000, peso = 60 },
        ['infernus'] = { nome = 'infernus', valor = 180000, peso = 60 },
        ['italigtb'] = { nome = 'italigtb', valor = 190000, peso = 60 },
        ['italigtb2'] = { nome = 'italigtb2', valor = 200000, peso = 60 },
        ['krieger'] = { nome = 'krieger', valor = 280000, peso = 60 },
        ['le7b'] = { nome = 'le7b', valor = 300000, peso = 60 },
        ['nero'] = { nome = 'nero', valor = 340000, peso = 60 },
        ['nero2'] = { nome = 'nero2', valor = 280000, peso = 60 },
        ['osiris'] = { nome = 'osiris', valor = 250000, peso = 60 },
        ['penetrator'] = { nome = 'penetrator', valor = 210000, peso = 60 },
        ['pfister811'] = { nome = 'pfister811', valor = 280000, peso = 60 },
        ['prototipo'] = { nome = 'prototipo', valor = 400000, peso = 60 },
        ['reaper'] = { nome = 'reaper', valor = 300000, peso = 60 },
        ['s80'] = { nome = 's80', valor = 220000, peso = 60 },
        ['sc1'] = { nome = 'sc1', valor = 280000, peso = 60 },
        ['sheava'] = { nome = 'sheava', valor = 60000, peso = 60 },
        ['sultanrs'] = { nome = 'sultanrs', valor = 750000, peso = 60 },
        ['t20'] = { nome = 't20', valor = 400000, peso = 60 },
        ['taipan'] = { nome = 'taipan', valor = 600000, peso = 60 },
        ['tempesta'] = { nome = 'tempesta', valor = 400000, peso = 60 },
        ['tezeract'] = { nome = 'tezeract', valor = 70000, peso = 60 },
        ['thrax'] = { nome = 'thrax', valor = 400000, peso = 60 },
        ['tigon'] = { nome = 'tigon', valor = 720099, peso = 60 },
        ['turismor'] = { nome = 'turismor', valor = 400000, peso = 60 },
        ['tyrant'] = { nome = 'tyrant', valor = 500000, peso = 60 },
        ['tyrus'] = { nome = 'tyrus', valor = 700000, peso = 60 },
        ['vacca'] = { nome = 'vacca', valor = 650000, peso = 60 },
        ['vagner'] = { nome = 'vagner', valor = 2000000, peso = 60 },
        ['visione'] = { nome = 'visione', valor = 280000, peso = 60 },
        ['voltic'] = { nome = 'voltic', valor = 300000, peso = 60 },
        ['xa21'] = { nome = 'xa21', valor = 650000, peso = 60 },
        ['zentorno'] = { nome = 'zentorno', valor = 600000, peso = 60 },
        ['zorrusso'] = { nome = 'zorrusso', valor = 145000, peso = 60 },
                 
    },
    ['classic'] = {
        ['asbo'] = { nome = 'asbo', valor = 145000, peso = 60 },
        ['brioso'] = { nome = 'brioso', valor = 145000, peso = 60 },
        ['club'] = { nome = 'club', valor = 50000, peso = 60 },
        ['dilettante'] = { nome = 'dilettante', valor = 40000, peso = 60 },
        ['kanjo'] = { nome = 'kanjo', valor = 30000, peso = 60 },
        ['issi2'] = { nome = 'issi2', valor = 20000, peso = 60 },
        ['issi3'] = { nome = 'issi3', valor = 40000, peso = 60 },
        ['issi4'] = { nome = 'issi4', valor = 40000, peso = 60 },
        ['issi5'] = { nome = 'issi5', valor = 50000, peso = 60 },
        ['issi6'] = { nome = 'issi6', valor = 5000, peso = 60 },
        ['panto'] = { nome = 'panto', valor = 10000, peso = 60 },
        ['rhapsody'] = { nome = 'rhapsody', valor = 30000, peso = 60 },
        ['brioso2'] = { nome = 'brioso2', valor = 12000, peso = 60 },
        ['weevil'] = { nome = 'weevil', valor = 100000, peso = 60 },
        ['cogcabrio'] = { nome = 'cogcabrio', valor = 100000, peso = 60 },
        ['exemplar'] = { nome = 'exemplar', valor = 100000, peso = 60 },
        ['f620'] = { nome = 'f620', valor = 100000, peso = 60 },
        ['felon'] = { nome = 'felon', valor = 100000, peso = 60 },
        ['felon2'] = { nome = 'felon2', valor = 100000, peso = 60 },
        ['jackal'] = { nome = 'jackal', valor = 100000, peso = 60 },
        ['zion2'] = { nome = 'zion2', valor = 100000, peso = 60 },
        ['previon'] = { nome = 'previon', valor = 15000, peso = 60 },
    },
    ['sedan'] = {
        ['asea'] = { nome = 'asea', valor = 40000, peso = 40 },
        ['asterope'] = { nome = 'asterope', valor = 60000, peso = 40 },
        ['cog55'] = { nome = 'cog55', valor = 20000, peso = 40 },
        ['cognoscenti'] = { nome = 'cognoscenti', valor = 10000, peso = 40 },
        ['emperor'] = { nome = 'emperor', valor = 20000, peso = 40 },
        ['fugitive'] = { nome = 'fugitive', valor = 20000, peso = 40 },
        ['glendale'] = { nome = 'glendale', valor = 30000, peso = 40 },
        ['glendale2'] = { nome = 'glendale2', valor = 40000, peso = 40 },
        ['intruder'] = { nome = 'intruder', valor = 25000, peso = 40 },
        ['premier'] = { nome = 'premier', valor = 45000, peso = 40 },
        ['primo'] = { nome = 'primo', valor = 90000, peso = 40 },
        ['primo2'] = { nome = 'primo2', valor = 40000, peso = 40 },
        ['regina'] = { nome = 'regina', valor = 10000, peso = 40 },
        ['romero'] = { nome = 'romero', valor = 100000, peso = 40 },
        ['stafford'] = { nome = 'stafford', valor = 50000, peso = 40 },
        ['stanier'] = { nome = 'stanier', valor = 50000, peso = 40 },
        ['stratum'] = { nome = 'stratum', valor = 50000, peso = 40 },
        ['stretch'] = { nome = 'stretch', valor = 40000, peso = 40 },
        ['superd'] = { nome = 'superd', valor = 40000, peso = 40 },
        ['surge'] = { nome = 'surge', valor = 150000, peso = 40 },
        ['tailgater'] = { nome = 'tailgater', valor = 36000, peso = 40 },
        ['warrener'] = { nome = 'warrener', valor = 7000, peso = 40 },
        ['washington'] = { nome = 'washington', valor = 75000, peso = 40 },
        ['tailgater2'] = { nome = 'tailgater2', valor = 35000, peso = 40 },
    },
    ['suv'] = {
        ['bfinjection'] = { nome = 'bfinjection', valor = 20000, peso = 60 },
        ['bifta'] = { nome = 'bifta', valor = 20000, peso = 60 },
        ['blazer'] = { nome = 'blazer', valor = 25000, peso = 60 },
        ['blazer3'] = { nome = 'blazer3', valor = 30000, peso = 60 },
        ['blazer4'] = { nome = 'blazer4', valor = 15000, peso = 60 },
        ['bodhi2'] = { nome = 'bodhi2', valor = 50000, peso = 60 },
        ['brawler'] = { nome = 'brawler', valor = 2000000, peso = 60 },
        ['bruiser'] = { nome = 'bruiser', valor = 2000000, peso = 60 },
        ['bruiser2'] = { nome = 'bruiser2', valor = 2000000, peso = 60 },
        ['bruiser3'] = { nome = 'bruiser3', valor = 100000, peso = 60 },
        ['brutus'] = { nome = 'brutus', valor = 200000, peso = 60 },
        ['brutus2'] = { nome = 'brutus2', valor = 300000, peso = 60 },
        ['brutus3'] = { nome = 'brutus3', valor = 200000, peso = 60 },
        ['caracara2'] = { nome = 'caracara2', valor = 25000, peso = 60 },
        ['dloader'] = { nome = 'dloader', valor = 180000, peso = 60 },
        ['dubsta3'] = { nome = 'dubsta3', valor = 40000, peso = 60 },
        ['dune'] = { nome = 'dune', valor = 200000, peso = 60 },
        ['everon'] = { nome = 'everon', valor = 130000, peso = 60 },
        ['freecrawler'] = { nome = 'freecrawler', valor = 30000, peso = 60 },
        ['kalahari'] = { nome = 'kalahari', valor = 90000, peso = 60 },
        ['kamacho'] = { nome = 'kamacho', valor = 500000, peso = 60 },
        ['marshall'] = { nome = 'marshall', valor = 80000, peso = 60 },
        ['mesa3'] = { nome = 'mesa3', valor = 1000000, peso = 60 },
        ['monster'] = { nome = 'monster', valor = 1000000, peso = 60 },
        ['monster3'] = { nome = 'monster3', valor = 1000000, peso = 60 },
        ['monster4'] = { nome = 'monster4', valor = 1000000, peso = 60 },
        ['monster5'] = { nome = 'monster5', valor = 50000, peso = 60 },
        ['outlaw'] = { nome = 'outlaw', valor = 50000, peso = 60 },
        ['rancherxl'] = { nome = 'rancherxl', valor = 30000, peso = 60 },
        ['rebel'] = { nome = 'rebel', valor = 50000, peso = 60 },
        ['rebel2'] = { nome = 'rebel2', valor = 70000, peso = 60 },
        ['riata'] = { nome = 'riata', valor = 82000, peso = 60 },
        ['sandking'] = { nome = 'sandking', valor = 120000, peso = 60 },
        ['sandking2'] = { nome = 'sandking2', valor = 130000, peso = 60 },
        ['trophytruck'] = { nome = 'trophytruck', valor = 70000, peso = 60 },
        ['trophytruck2'] = { nome = 'trophytruck2', valor = 70000, peso = 60 },
        ['vagrant'] = { nome = 'vagrant', valor = 30000, peso = 60 },
        ['verus'] = { nome = 'verus', valor = 250000, peso = 60 },
        ['winky'] = { nome = 'winky', valor = 145000, peso = 60 },
        ['guardian'] = { nome = 'guardian', valor = 120000, peso = 60 },
        ['baller'] = { nome = 'baller', valor = 300000, peso = 60 },
        ['sadler'] = { nome = 'sadler', valor = 100000, peso = 60 },
        ['bison'] = { nome = 'bison', valor = 75000, peso = 60 },
        ['bison2'] = { nome = 'bison2', valor = 75000, peso = 60 },
        ['bison3'] = { nome = 'bison3', valor = 75000, peso = 60 },
        ['bobcatxl'] = { nome = 'bobcatxl', valor = 75000, peso = 60 },
        ['tractor2'] = { nome = 'tractor2', valor = 80000, peso = 60 },
        ['baller2'] = { nome = 'baller2', valor = 300000, peso = 80 },
        ['baller3'] = { nome = 'baller3', valor = 10000, peso = 80 },
        ['baller4'] = { nome = 'baller4', valor = 40000, peso = 80 },
        ['bjxl'] = { nome = 'bjxl', valor = 50000, peso = 80 },
        ['cavalcade'] = { nome = 'cavalcade', valor = 100000, peso = 80 },
        ['cavalcade2'] = { nome = 'cavalcade2', valor = 100000, peso = 80 },
        ['contender'] = { nome = 'contender', valor = 120000, peso = 80 },
        ['dubsta'] = { nome = 'dubsta', valor = 80000, peso = 80 },
        ['dubsta2'] = { nome = 'dubsta2', valor = 60000, peso = 80 },
        ['fq2'] = { nome = 'fq2', valor = 50000, peso = 80 },
        ['granger'] = { nome = 'granger', valor = 40000, peso = 80 },
        ['gresley'] = { nome = 'gresley', valor = 50000, peso = 80 },
        ['habanero'] = { nome = 'habanero', valor = 40000, peso = 80 },
        ['huntley'] = { nome = 'huntley', valor = 60000, peso = 80 },
        ['landstalker'] = { nome = 'landstalker', valor = 50000, peso = 80 },
        ['landstalker2'] = { nome = 'landstalker2', valor = 120000, peso = 80 },
        ['mesa'] = { nome = 'mesa', valor = 50000, peso = 80 },
        ['novak'] = { nome = 'novak', valor = 100000, peso = 80 },
        ['patriot'] = { nome = 'patriot', valor = 30000, peso = 80 },
        ['patriot2'] = { nome = 'patriot2', valor = 90000, peso = 80 },
        ['radi'] = { nome = 'radi', valor = 40000, peso = 80 },
        ['rebla'] = { nome = 'rebla', valor = 35000, peso = 80 },
        ['rocoto'] = { nome = 'rocoto', valor = 30000, peso = 80 },
        ['seminole'] = { nome = 'seminole', valor = 40000, peso = 80 },
        ['seminole2'] = { nome = 'seminole2', valor = 200000, peso = 80 },
        ['serrano'] = { nome = 'serrano', valor = 120000, peso = 80 },
        ['toros'] = { nome = 'toros', valor = 500000, peso = 80 },
        ['xls'] = { nome = 'xls', valor = 20000, peso = 80 },
    },
    ['exclusive'] = {
        ['agerars'] = { nome = 'agerars', valor = 250000, peso = 40 },
        ['bugattichiron'] = { nome = 'bugattichiron', valor = 250000, peso = 40 },
        ['jesko'] = { nome = 'jesko', valor = 250000, peso = 40 },
        ['supragr'] = { nome = 'supragr', valor = 250000, peso = 40 },
        ['bdivo'] = { nome = 'bdivo', valor = 250000, peso = 40 },
        ['slamvan2'] = { nome = 'slamvan2', valor = 250000, peso = 40 },
        ['bmwhommage'] = { nome = 'bmwhommage', valor = 250000, peso = 40 },
        ['rs6c8'] = { nome = 'rs6c8', valor = 250000, peso = 40 },
        ['teslaprior'] = { nome = 'teslaprior', valor = 250000, peso = 40 },
        ['wmfenyr'] = { nome = 'wmfenyr', valor = 250000, peso = 40 },
        ['frauscher16'] = { nome = 'frauscher16', valor = 250000, peso = 40 },
        ['audirs7'] = { nome = 'audirs7', valor = 250000, peso = 40 },
        ['rmodskyline34'] = { nome = 'rmodskyline34', valor = 250000, peso = 40 },
        ['monstergt'] = { nome = 'monstergt', valor = 250000, peso = 40 },
        ['monsterr'] = { nome = 'monsterr', valor = 250000, peso = 40 },
        ['monsterr34'] = { nome = 'monsterr34', valor = 250000, peso = 40 },
        ['sr650fly'] = { nome = 'sr650fly', valor = 250000, peso = 40 },
        ['yacht2'] = { nome = 'yacht2', valor = 250000, peso = 40 },
        ['rmodsianr1'] = { nome = 'rmodsianr1', valor = 250000, peso = 40 },
        ['f350offroadspec'] = { nome = 'f350offroadspec', valor = 250000, peso = 40 },
        ['bbdawn'] = { nome = 'bbdawn', valor = 250000, peso = 40 },
        ['gcmlamboultimae'] = { nome = 'gcmlamboultimae', valor = 250000, peso = 40 },
        ['amggt63'] = { nome = 'amggt63', valor = 250000, peso = 40 },
        ['fordmustang'] = { nome = 'fordmustang', valor = 100000, peso = 40 },
        ['lancerevolution9'] = { nome = 'lancerevolution9', valor = 100000, peso = 40 },
        ['bmwm4gts'] = { nome = 'bmwm4gts', valor = 150000, peso = 40 },
        ['ferrariitalia'] = { nome = 'ferrariitalia', valor = 150000, peso = 40 },
        ['lamborghinihuracan'] = { nome = 'lamborghinihuracan', valor = 150000, peso = 40 },
        ['nissangtr'] = { nome = 'nissangtr', valor = 150000, peso = 40 },      
    },
    ['vans'] = {
        ['mule'] = { nome = 'mule', valor = 1000000, peso = 200 },
        ['mule2'] = { nome = 'mule2', valor = 1200000, peso = 200 },
        ['mule3'] = { nome = 'mule3', valor = 1400000, peso = 200 },
        ['boxville'] = { nome = 'boxville', valor = 260000, peso = 180 },
        ['boxville2'] = { nome = 'boxville2', valor = 260000, peso = 180 },
        ['boxville3'] = { nome = 'boxville3', valor = 260000, peso = 180 },
        ['boxville4'] = { nome = 'boxville4', valor = 260000, peso = 180 },
        ['burrito'] = { nome = 'burrito', valor = 260000, peso = 180 },
        ['burrito2'] = { nome = 'burrito2', valor = 245000, peso = 180 },
        ['burrito3'] = { nome = 'burrito3', valor = 245000, peso = 180 },
        ['burrito4'] = { nome = 'burrito4', valor = 40000, peso = 180 },
        ['burrito5'] = { nome = 'burrito5', valor = 40000, peso = 180 },
        ['gburrito'] = { nome = 'gburrito', valor = 40000, peso = 180 },
        ['gburrito2'] = { nome = 'gburrito2', valor = 80000, peso = 180 },
        ['journey'] = { nome = 'journey', valor = 120000, peso = 180 },
        ['minivan'] = { nome = 'minivan', valor = 130000, peso = 180 },
        ['minivan2'] = { nome = 'minivan2', valor = 140000, peso = 180 },
        ['paradise'] = { nome = 'paradise', valor = 160000, peso = 180 },
        ['pony'] = { nome = 'pony', valor = 12000, peso = 180 },
        ['pony2'] = { nome = 'pony2', valor = 200000, peso = 180 },
        ['rumpo2'] = { nome = 'rumpo2', valor = 60000, peso = 180 },
        ['rumpo3'] = { nome = 'rumpo3', valor = 25000, peso = 180 },
        ['speedo'] = { nome = 'speedo', valor = 115000, peso = 180 },
        ['speedo2'] = { nome = 'speedo2', valor = 32000, peso = 180 },
        ['speedo4'] = { nome = 'speedo4', valor = 50000, peso = 180 },
        ['surfer'] = { nome = 'surfer', valor = 60000, peso = 180 },
        ['surfer2'] = { nome = 'surfer2', valor = 150000, peso = 180 },
        ['taco'] = { nome = 'taco', valor = 150000, peso = 180 },
        ['youga'] = { nome = 'youga', valor = 150000, peso = 180 },
        ['youga2'] = { nome = 'youga2', valor = 150000, peso = 180 },
        ['youga3'] = { nome = 'youga3', valor = 150000, peso = 180 },
    },
    ['vips'] = {}
}
