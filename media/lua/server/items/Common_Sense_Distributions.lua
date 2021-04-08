--Distributions = Distributions or {};
--SuburbsDistributions = Distributions;
--SuburbsDistributions = distributionTable;
--local distributionTable = {};
require 'Items/SuburbsDistributions'



--Add to a table
local function addtable (table1, table2, val1, val2)
	table.insert(SuburbsDistributions[table1][table2].items, val1);
	table.insert(SuburbsDistributions[table1][table2].items, val2);
end

--Change an item's drop percentage
local function changetable(table1, table2, val1, val2)
	for i = 1, #SuburbsDistributions[table1][table2].items do
		if(SuburbsDistributions[table1][table2].items[i] == val1) then 
			SuburbsDistributions[table1][table2].items[i+1] = val2
		end
	end
end

--Add to a Procedural Table
local function addproc (table1, val1, val2)
	table.insert(ProceduralDistributions.list[table1].items, val1);
	table.insert(ProceduralDistributions.list[table1].items, val2);
end

--Remove from a Procedural Table
function removeproc(table1, val1)
  for i = 1, #ProceduralDistributions.list[table1].items do
    repeat
    if ProceduralDistributions.list[table1].items[i] == val1 then
      
      table.remove(ProceduralDistributions.list[table1].items, i+1)
      table.remove(ProceduralDistributions.list[table1].items, i)
      
    end
    until((ProceduralDistributions.list[table1].items[i] == val1) == false)
  end
end

--Remove from a Table
function removetable(table1, table2, val1)
  for i = 1, #SuburbsDistributions[table1][table2].items do
    repeat
    if SuburbsDistributions[table1][table2].items[i] == val1 then
      
      table.remove(SuburbsDistributions[table1][table2].items, i+1)
      table.remove(SuburbsDistributions[table1][table2].items, i)
      
    end
    until((SuburbsDistributions[table1][table2].items[i] == val1) == false)
  end
end

--PHARMACY
removeproc("StoreShelfMedical", "Pills")
removetable("pharmacystorage", "metal_shelves", "PillsVitamins");
removetable("pharmacystorage", "metal_shelves", "Bandaid");
removetable("pharmacystorage", "metal_shelves", "Scissors");
removetable("pharmacystorage", "metal_shelves", "Tweezers");
removetable("pharmacystorage", "metal_shelves", "AlcoholWipes");
removetable("pharmacystorage", "counter", "PillsBeta");
removetable("pharmacystorage", "counter", "PillsAntiDep");
removetable("pharmacystorage", "counter", "PillsSleepingTablets");
removetable("pharmacystorage", "counter", "Antibiotics");
--MEDCLINIC
removetable("medclinic", "counter", "PillsVitamins");
removetable("medclinic", "counter", "Tweezers");
removetable("medclinic", "counter", "PillsBeta");
removetable("medclinic", "counter", "PillsAntiDep");
removetable("medclinic", "counter", "PillsSleepingTablets");
removetable("medclinic", "counter", "Antibiotics");
removetable("medclinic", "counter", "Radio.WalkieTalkie4");
removetable("medclinic", "counter", "Radio.WalkieTalkie5");
removetable("medclinic", "counter", "Radio.HamRadio1");
removetable("medicalstorage", "counter", "Radio.HamRadio1");
--ALL COUNTER
removetable("all", "counter", "HuntingKnife");
removetable("all", "counter", "Pistol");
removetable("all", "counter", "Revolver_Short");
removetable("all", "counter", "DoubleBarrelShotgun");
removetable("all", "counter", "Bullets9mm");
removetable("all", "counter", "Bullets38");
removetable("all", "counter", "farming.CarrotBagSeed");
removetable("all", "counter", "farming.BroccoliBagSeed");
removetable("all", "counter", "farming.RedRadishBagSeed");
removetable("all", "counter", "farming.StrewberrieBagSeed");
removetable("all", "counter", "farming.TomatoBagSeed");
removetable("all", "counter", "farming.PotatoBagSeed");
removetable("all", "counter", "farming.CabbageBagSeed");
--ZIPEE STORE 
removetable("zippeestore", "counter", "Pistol");
removetable("zippeestore", "counter", "Revolver_Short");
removetable("zippeestore", "counter", "DoubleBarrelShotgun");
removetable("zippeestore", "counter", "ShotgunShells");
removetable("zippeestore", "counter", "Bullets9mm");
removetable("zippeestore", "counter", "Bullets38");
--GROCERY STORE 
removetable("grocery", "counter", "ShotgunShells");
removetable("grocery", "counter", "Shotgun");
removetable("grocery", "counter", "DoubleBarrelShotgun");
--GIGAMART
removetable("zippeestore", "counter", "Pistol");
removetable("zippeestore", "counter", "Revolver_Short");
removetable("zippeestore", "counter", "DoubleBarrelShotgun");
removeproc("GigamartLightbulb", "LightBulb")
removeproc("GigamartLightbulb", "LightBulbRed")
removeproc("GigamartLightbulb", "LightBulbGreen")
removeproc("GigamartLightbulb", "LightBulbBlue")
removeproc("GigamartLightbulb", "LightBulbYellow")
removeproc("GigamartLightbulb", "LightBulbCyan")
removeproc("GigamartLightbulb", "LightBulbMagenta")
removeproc("GigamartLightbulb", "LightBulbOrange")
removeproc("GigamartLightbulb", "LightBulbPurple")
removeproc("GigamartLightbulb", "LightBulbPink")
--RESTAURANT
removetable("all", "restaurantdisplay", "farming.CarrotBagSeed");
removetable("all", "restaurantdisplay", "farming.BroccoliBagSeed");
removetable("all", "restaurantdisplay", "farming.RedRadishBagSeed");
removetable("all", "restaurantdisplay", "farming.StrewberrieBagSeed");
removetable("all", "restaurantdisplay", "farming.TomatoBagSeed");
removetable("all", "restaurantdisplay", "farming.PotatoBagSeed");
removetable("all", "restaurantdisplay", "farming.CabbageBagSeed");
--BOOK SHELVES
removetable("all", "shelves", "BookCarpentry4");
removetable("all", "shelves", "BookCarpentry5");
removetable("all", "shelves", "BookCooking4");
removetable("all", "shelves", "BookCooking5");
removetable("all", "shelves", "BookForaging4");
removetable("all", "shelves", "BookForaging5");
removetable("all", "shelves", "BookFarming4");
removetable("all", "shelves", "BookFarming5");
removetable("all", "shelves", "BookFishing4");
removetable("all", "shelves", "BookFishing5");
removetable("all", "shelves", "BookTrapping4");
removetable("all", "shelves", "BookTrapping5");
removetable("all", "shelves", "BookFirstAid4");
removetable("all", "shelves", "BookFirstAid5");
removetable("all", "shelves", "BookMetalWelding4");
removetable("all", "shelves", "BookMetalWelding5");
removetable("all", "shelves", "BookElectrician4");
removetable("all", "shelves", "BookElectrician5");
removetable("all", "shelves", "BookMechanic4");
removetable("all", "shelves", "BookMechanic5");
changetable("all", "shelves", "BookCarpentry1", 4);
changetable("all", "shelves", "BookCarpentry2", 2);
changetable("all", "shelves", "BookCarpentry3", 2);
changetable("all", "shelves", "BookCooking1", 4);
changetable("all", "shelves", "BookCooking2", 2);
changetable("all", "shelves", "BookCooking3", 2);
changetable("all", "shelves", "BookForaging1", 4);
changetable("all", "shelves", "BookForaging2", 2);
changetable("all", "shelves", "BookForaging3", 2);
changetable("all", "shelves", "BookFarming1", 4);
changetable("all", "shelves", "BookFarming2", 2);
changetable("all", "shelves", "BookFarming3", 2);
changetable("all", "shelves", "BookFishing1", 4);
changetable("all", "shelves", "BookFishing2", 2);
changetable("all", "shelves", "BookFishing3", 2);
changetable("all", "shelves", "BookTrapping1", 4);
changetable("all", "shelves", "BookTrapping2", 2);
changetable("all", "shelves", "BookTrapping3", 2);
changetable("all", "shelves", "BookFirstAid1", 4);
changetable("all", "shelves", "BookFirstAid2", 2);
changetable("all", "shelves", "BookFirstAid3", 2);
changetable("all", "shelves", "BookMetalWelding1", 4);
changetable("all", "shelves", "BookMetalWelding2", 2);
changetable("all", "shelves", "BookMetalWelding3", 2);
changetable("all", "shelves", "BookElectrician1", 4);
changetable("all", "shelves", "BookElectrician2", 2);
changetable("all", "shelves", "BookElectrician3", 2);
changetable("all", "shelves", "BookMechanic1", 4);
changetable("all", "shelves", "BookMechanic2", 2);
changetable("all", "shelves", "BookMechanic3", 2);
--POST
removetable("post", "counter", "DoubleBarrelShotgun");
--CORNERSTORE
--removetable("cornerstore", "counter", "DoubleBarrelShotgun");
--GAS STORE AND CORNERSTORE
removetable("gasstore", "counter", "PopBottle");
removetable("gasstore", "counter", "Pop");
removetable("gasstore", "counter", "Pop1");
removetable("gasstore", "counter", "Pop2");
removetable("gasstore", "counter", "Pop3");
removetable("gasstore", "counter", "EmptyPetrolCan");
removetable("gasstore", "counter", "Wrench");
removetable("gasstore", "counter", "LugWrench");
removetable("gasstore", "counter", "Jack");
removetable("gasstore", "counter", "TirePump");
removetable("gasstore", "counter", "OldTire1");
removetable("gasstore", "counter", "OldTire2");
removetable("gasstore", "counter", "OldTire3");
removetable("gasstore", "counter", "NormalTire1");
removetable("gasstore", "counter", "NormalTire2");
removetable("gasstore", "counter", "NormalTire3");
removetable("gasstore", "counter", "ModernTire1");
removetable("gasstore", "counter", "ModernTire2");
removetable("gasstore", "counter", "ModernTire3");
removetable("gasstore", "counter", "LeadPipe");
removetable("gasstore", "counter", "PipeWrench");
removetable("gasstore", "shelves", "OldTire1");
removetable("gasstore", "shelves", "OldTire2");
removetable("gasstore", "shelves", "OldTire3");
removetable("gasstore", "shelves", "NormalTire1");
removetable("gasstore", "shelves", "NormalTire2");
removetable("gasstore", "shelves", "NormalTire3");
removetable("gasstore", "shelves", "ModernTire1");
removetable("gasstore", "shelves", "ModernTire2");
removetable("gasstore", "shelves", "ModernTire3");
removetable("gasstore", "shelves", "PopBottle");
removetable("gasstore", "shelves", "Pop");
removetable("gasstore", "shelves", "Pop1");
removetable("gasstore", "shelves", "Pop2");
removetable("gasstore", "shelves", "Pop3");
removetable("gasstore", "fridge", "Steak");
removetable("gasstore", "fridge", "Burger");
removetable("gasstore", "fridge", "Pie");
removetable("gasstore", "fridge", "PorkChop");
removetable("gasstore", "fridge", "MuttonChop");
removetable("gasstore", "fridge", "OatsRaw");
removetable("gasstore", "freezer", "Steak");
removetable("gasstore", "freezer", "Burger");
removetable("gasstore", "freezer", "PorkChop");
removetable("gasstore", "freezer", "MuttonChop");
removetable("cornerstore", "counter", "PopBottle");
removetable("cornerstore", "counter", "Pop");
removetable("cornerstore", "counter", "Pop1");
removetable("cornerstore", "counter", "Pop2");
removetable("cornerstore", "counter", "Pop3");
--BOOKSTORE
changetable("bookstore", "other", "BookCarpentry4", .5);
changetable("bookstore", "other", "BookCarpentry5", .5);
changetable("bookstore", "other", "BookCooking4", .5);
changetable("bookstore", "other", "BookCooking5", .5);
changetable("bookstore", "other", "BookForaging4", .5);
changetable("bookstore", "other", "BookForaging5", .5);
changetable("bookstore", "other", "BookFarming4", .5);
changetable("bookstore", "other", "BookFarming5", .5);
changetable("bookstore", "other", "BookFishing4", .5);
changetable("bookstore", "other", "BookFishing5", .5);
changetable("bookstore", "other", "BookTrapping4", .5);
changetable("bookstore", "other", "BookTrapping5", .5);
changetable("bookstore", "other", "BookFirstAid4", .5);
changetable("bookstore", "other", "BookFirstAid5", .5);
changetable("bookstore", "other", "BookMetalWelding4", .5);
changetable("bookstore", "other", "BookMetalWelding5", .5);
changetable("bookstore", "other", "BookElectrician4", .5);
changetable("bookstore", "other", "BookElectrician5", .5);
changetable("bookstore", "other", "BookMechanic4", .5);
changetable("bookstore", "other", "BookMechanic5", .5);
--GARDENSTORE
changetable("gardenstore", "shelves", "Axe", 2);
changetable("gardenstore", "shelves", "WoodAxe", 2);
--FARMSTORAGE
changetable("farmstorage", "all", "Axe", 2);
changetable("farmstorage", "all", "WoodAxe", 2);
--GUNSTORE
removetable("gunstore", "displaycase", "ShotgunShellsBox");
removetable("gunstore", "displaycase", "PistolCase1");
removetable("gunstore", "displaycase", "PistolCase2");
removetable("gunstore", "displaycase", "PistolCase3");
removetable("gunstore", "displaycase", "Bullets9mmBox");
removetable("gunstore", "displaycase", "Bullets38Box");
removetable("gunstore", "displaycase", "Bullets44Box");
removetable("gunstore", "displaycase", "Bullets45Box");
removetable("gunstore", "displaycase", "GunPowder");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "308Box");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "223Box");
removetable("gunstore", "displaycase", "223Box");
changetable("gunstore", "displaycase", "pistol", 3);
changetable("gunstore", "displaycase", "pistol2", 1);
changetable("gunstore", "displaycase", "pistol3", 1);
changetable("gunstore", "displaycase", "HuntingRifle", 1);
changetable("gunstore", "displaycase", "VarmintRifle", 1);
changetable("gunstore", "displaycase", "Revolver_Short", 1);
changetable("gunstore", "displaycase", "Revolver", 1);
--changetable("gunstore", "displaycase", "Revolver_Long", 1);

removetable("gunstore", "metal_shelves", "HuntingRifle");
removetable("gunstore", "metal_shelves", "VarmintRifle");
removetable("gunstore", "metal_shelves", "Shotgun");
removetable("gunstore", "metal_shelves", "DoubleBarrelShotgun");
removetable("gunstore", "metal_shelves", "PistolCase1");
removetable("gunstore", "metal_shelves", "PistolCase2");
removetable("gunstore", "metal_shelves", "PistolCase3");
removetable("gunstore", "metal_shelves", "Revolver_Short");
removetable("gunstore", "metal_shelves", "Revolver");
removetable("gunstore", "metal_shelves", "Revolver_Long");
removetable("gunstore", "metal_shelves", "HuntingKnife");
removetable("gunstore", "metal_shelves", "Pistol");
removetable("gunstore", "metal_shelves", "Pistol2");
removetable("gunstore", "metal_shelves", "Pistol3");
removetable("gunstore", "metal_shelves", "Axe");
removetable("gunstore", "metal_shelves", "Katana");
removetable("gunstore", "metal_shelves", "Machete");

removetable("gunstore", "locker", "HuntingRifle");
removetable("gunstore", "locker", "VarmintRifle");
removetable("gunstore", "locker", "Shotgun");
removetable("gunstore", "locker", "DoubleBarrelShotgun");
removetable("gunstore", "locker", "PistolCase1");
removetable("gunstore", "locker", "PistolCase2");
removetable("gunstore", "locker", "PistolCase3");
removetable("gunstore", "locker", "Revolver_Short");
removetable("gunstore", "locker", "Revolver");
removetable("gunstore", "locker", "Revolver_Long");
removetable("gunstore", "locker", "HuntingKnife");
removetable("gunstore", "locker", "Pistol");
removetable("gunstore", "locker", "Pistol2");
removetable("gunstore", "locker", "Pistol3");
removetable("gunstore", "locker", "Axe");
removetable("gunstore", "locker", "WoodAxe");
removetable("gunstore", "locker", "Katana");
removetable("gunstore", "locker", "Machete");

removetable("gunstore", "counter", "HuntingRifle");
removetable("gunstore", "counter", "VarmintRifle");
removetable("gunstore", "counter", "Shotgun");
removetable("gunstore", "counter", "DoubleBarrelShotgun");
removetable("gunstore", "counter", "PistolCase1");
removetable("gunstore", "counter", "PistolCase2");
removetable("gunstore", "counter", "PistolCase3");
removetable("gunstore", "counter", "Revolver_Short");
removetable("gunstore", "counter", "Revolver");
removetable("gunstore", "counter", "Revolver_Long");
removetable("gunstore", "counter", "HuntingKnife");
removetable("gunstore", "counter", "Pistol");
removetable("gunstore", "counter", "Pistol2");
removetable("gunstore", "counter", "Pistol3");
removetable("gunstore", "counter", "Axe");
removetable("gunstore", "counter", "WoodAxe");

removetable("gunstorestorage", "all", "HuntingRifle");
removetable("gunstorestorage", "all", "VarmintRifle");
removetable("gunstorestorage", "all", "Shotgun");
removetable("gunstorestorage", "all", "DoubleBarrelShotgun");
removetable("gunstorestorage", "all", "PistolCase1");
removetable("gunstorestorage", "all", "PistolCase2");
removetable("gunstorestorage", "all", "PistolCase3");
removetable("gunstorestorage", "all", "Revolver_Short");
removetable("gunstorestorage", "all", "Revolver");
removetable("gunstorestorage", "all", "Revolver_Long");
removetable("gunstorestorage", "all", "HuntingKnife");
removetable("gunstorestorage", "all", "Pistol");
removetable("gunstorestorage", "all", "Pistol2");
removetable("gunstorestorage", "all", "Pistol3");
removetable("gunstorestorage", "all", "Axe");
removetable("gunstorestorage", "all", "WoodAxe");
removetable("gunstorestorage", "all", "Katana");
removetable("gunstorestorage", "all", "Machete");




--PHARMACY
addtable("pharmacystorage", "counter", "AlcoholWipes", 1);
addtable("pharmacystorage", "counter", "Bandage", .1);
addtable("pharmacystorage", "counter", "Bandaid", .5);
addtable("pharmacystorage", "counter", "Bandaid", .5);
addtable("pharmacystorage", "counter", "Tweezers", .5);
addtable("pharmacystorage", "counter", "SutureNeedle", .5);
addtable("pharmacystorage", "counter", "SutureNeedleHolder", .1);
addtable("pharmacystorage", "counter", "Scalpel", .1);
addtable("pharmacystorage", "counter", "CottonBalls", 1);
addtable("pharmacystorage", "counter", "Tissue", 1);
addtable("pharmacystorage", "fridge", "Antibiotics", 50);
addtable("pharmacystorage", "fridge", "Antibiotics", 50);
addtable("pharmacystorage", "fridge", "Antibiotics", 50);
--ALL COUNTER
addtable("all", "counter", "EmptyJar", .1);
addtable("all", "counter", "Glasses_Reading", .1);
addtable("all", "counter", "Glasses_Sun", .1);
addtable("all", "counter", "Gloves_LeatherGloves", .1);
addtable("all", "counter", "Ring_Right_MiddleFinger_Silver", .1);
addtable("all", "counter", "Bag_FannyPackFront", .1);
addtable("all", "counter", "Bag_Schoolbag", .1);
addtable("all", "counter", "Garbagebag", 1);
addtable("all", "counter", "SewingKit", .1);
addtable("all", "counter", "CDplayer", 1);
addtable("all", "counter", "Screwdriver", .1);
addtable("all", "counter", "Wrench", .1);
addtable("all", "counter", "Magazine", 2);
addtable("all", "counter", "Book", 0.5);
addtable("all", "counter", "Bandaid", .1);
addtable("all", "counter", "Cigarettes", 1);
addtable("all", "counter", "Paperclip", 1);
addtable("all", "counter", "Scotchtape", 1);
addtable("all", "counter", "Glue", 1);
--TOOLSTORE
addtable("toolstore", "counter", "farming.CarrotBagSeed", 1);
addtable("toolstore", "counter", "farming.BroccoliBagSeed", 1);
addtable("toolstore", "counter", "farming.RedRadishBagSeed", 1);
addtable("toolstore", "counter", "farming.StrewberrieBagSeed", 1);
addtable("toolstore", "counter", "farming.TomatoBagSeed", 1);
addtable("toolstore", "counter", "farming.PotatoBagSeed", 1);
addtable("toolstore", "counter", "farming.CabbageBagSeed", 1);
addtable("toolstore", "counter", "Sledgehammer", .1);
--GARAGE
addtable("garage", "metal_shelves", "farming.CabbageBagSeed", .1);
addtable("garage", "metal_shelves", "farming.BroccoliBagSeed", .1);
addtable("garage", "metal_shelves", "farming.RedRadishBagSeed", .1);
addtable("garage", "metal_shelves", "farming.StrewberrieBagSeed", .1);
addtable("garage", "metal_shelves", "farming.TomatoBagSeed", .1);
addtable("garage", "metal_shelves", "farming.PotatoBagSeed", .1);
addtable("garage", "metal_shelves", "farming.CabbageBagSeed", .1);
--GARAGESTORAGE
addtable("garagestorage", "other", "farming.CabbageBagSeed", .5);
addtable("garagestorage", "other", "farming.BroccoliBagSeed", .5);
addtable("garagestorage", "other", "farming.RedRadishBagSeed", .5);
addtable("garagestorage", "other", "farming.StrewberrieBagSeed", .5);
addtable("garagestorage", "other", "farming.TomatoBagSeed", .5);
addtable("garagestorage", "other", "farming.PotatoBagSeed", .5);
addtable("garagestorage", "other", "farming.CabbageBagSeed", .5);
addtable("garagestorage", "other", "Axe", 1);
addtable("garagestorage", "other", "HandAxe", 2);
addtable("garagestorage", "other", "WoodAxe", .5);
addtable("garagestorage", "other", "Crowbar", 1);
addtable("garagestorage", "other", "Glue", 1);
addtable("garagestorage", "other", "Woodglue", 1);
addtable("garagestorage", "other", "Sledgehammer", .1);
--GROCERY
addtable("grocery", "freezer", "Ham", 5);
addtable("grocery", "freezer", "Ham", 5);
addtable("grocery", "freezer", "Steak", 5);
addtable("grocery", "freezer", "Steak", 5);
addtable("grocery", "freezer", "Salmon", 5);
addtable("grocery", "freezer", "Salmon", 5);
--GIGAMART
addtable("gigamart", "freezer", "Ham", 5);
addtable("gigamart", "freezer", "Ham", 5);
addtable("gigamart", "freezer", "Steak", 5);
addtable("gigamart", "freezer", "Steak", 5);
addtable("gigamart", "freezer", "Salmon", 5);
addtable("gigamart", "freezer", "Salmon", 5);
addproc("GigamartLightbulb", "Bullets9mmBox", 10);
addproc("GigamartLightbulb", "Bullets9mmBox", 10);
addproc("GigamartLightbulb", "Bullets9mmBox", 10);
addproc("GigamartLightbulb", "223Box", 10);
addproc("GigamartLightbulb", "223Box", 10);
addproc("GigamartLightbulb", "308Box", 10);
addproc("GigamartLightbulb", "308Box", 10);
addproc("GigamartLightbulb", "308Box", 10);
addproc("GigamartLightbulb", "Bullets38Box", 10);
addproc("GigamartLightbulb", "Bullets44Box", 10);
addproc("GigamartLightbulb", "Bullets45Box", 10);
addproc("GigamartLightbulb", "GunPowder", 10);
addproc("GigamartLightbulb", "GunPowder", 10);
addproc("GigamartLightbulb", "HuntingKnife", 10);
addproc("GigamartLightbulb", "ShotgunShellsBox", 10);
addproc("GigamartLightbulb", "ShotgunShellsBox", 10);
addproc("GigamartLightbulb", "ShotgunShellsBox", 10);
addproc("GigamartLightbulb", "RecoilPad", 1);
addproc("GigamartLightbulb", "Sling", 1);
addproc("GigamartLightbulb", "FiberglassStock", 1);
addproc("GigamartLightbulb", "x2Scope", 1);
addproc("GigamartLightbulb", "x4Scope", 1);
addproc("GigamartLightbulb", "x8Scope", 1);
--CASH REGISTER
addtable("all", "cashregister", "Lighter", 1);
addtable("all", "cashregister", "Matches", 1);
addtable("all", "cashregister", "Cigarettes", 1);
addtable("bookstore", "cashregister", "Lighter", 5);
addtable("bookstore", "cashregister", "Matches", 5);
addtable("bookstore", "cashregister", "Cigarettes", 5);
--ALL FREEZER
addtable("all", "freezer", "Ham", 5);
addtable("all", "freezer", "Ham", 5);
addtable("all", "freezer", "Steak", 5);
addtable("all", "freezer", "Steak", 5);
addtable("all", "freezer", "Salmon", 5);
addtable("all", "freezer", "Salmon", 5);
--ALL INVENTORY MALE
addtable("all", "inventorymale", "Cigarettes", 3);
addtable("all", "inventorymale", "9mmClip", .1);
addtable("all", "inventorymale", "45Clip", .1);
addtable("all", "inventorymale", "44Clip", .1);
addtable("all", "inventorymale", "Bullets9mm", 3);
addtable("all", "inventorymale", "Bullets38", 1);
addtable("all", "inventorymale", "Bullets44", 1);
addtable("all", "inventorymale", "Bullets45", 1);
addtable("all", "inventorymale", "ShotgunShells", 1);
--ALL INVENTORY FEMALE
addtable("all", "inventoryfemale", "Cigarettes", 3);
addtable("all", "inventoryfemale", "9mmClip", .1);
addtable("all", "inventoryfemale", "45Clip", .1);
addtable("all", "inventoryfemale", "44Clip", .1);
addtable("all", "inventoryfemale", "Bullets9mm", 3);
addtable("all", "inventoryfemale", "Bullets38", 1);
addtable("all", "inventoryfemale", "Bullets44", 1);
addtable("all", "inventoryfemale", "Bullets45", 1);
addtable("all", "inventoryfemale", "ShotgunShells", 1);
--LAUNDRY
addtable("laundry", "counter", "Duffelbag", 1);
--BOOKSTORE
--GAS STORE AND CORNERSTORE
addtable("gasstore", "counter", "Bullets9mmBox", 2);
addtable("gasstore", "counter", "Bullets9mmBox", 2);
addtable("gasstore", "counter", "Bullets9mmBox", 2);
addtable("gasstore", "counter", "308Box", 1);
addtable("gasstore", "counter", "ShotgunShellsBox", 2);
addtable("gasstore", "counter", "ShotgunShellsBox", 2);
addtable("gasstore", "counter", "ShotgunShellsBox", 2);
addtable("gasstore", "counter", "Bullets38Box", 1);
addtable("gasstore", "counter", "Bullets44Box", 1);
addtable("gasstore", "counter", "Bullets45Box", 1);
addtable("gasstore", "counter", "223Box", 1);
addtable("gasstore", "counter", "Cigarettes", 5);
addtable("gasstore", "counter", "Cigarettes", 5);
addtable("gasstore", "counter", "Earbuds", .1);
addtable("gasstore", "counter", "Headphones", .1);
addtable("gasstore", "counter", "VideoGame", .1);
addtable("gasstore", "counter", "Tissue", 1);
addtable("gasstore", "counter", "HandTorch", 1);
addtable("gasstore", "counter", "WhiskeyFull", 1);
addtable("gasstore", "counter", "BeefJerky", 5);
addtable("gasstore", "counter", "Chocolate", 1);
addtable("gasstore", "counter", "Bandaid", 1);
addtable("gasstore", "counter", "Corkscrew", .1);
addtable("gasstore", "shelves", "PeanutButter", 1);
addtable("gasstore", "shelves", "Macandcheese", 1);
addtable("gasstore", "fridge", "PopBottle", 3);
addtable("gasstore", "fridge", "Pop", 3);
addtable("gasstore", "fridge", "Pop1", 3);
addtable("gasstore", "fridge", "Pop2", 3);
addtable("gasstore", "fridge", "Pop3", 3);
addtable("gasstore", "fridge", "BeerBottle", 3);
addtable("gasstore", "fridge", "BeerBottle", 3);
addtable("gasstore", "fridge", "BeerBottle", 3);
addtable("gasstore", "fridge", "BeerCan", 3);
addtable("gasstore", "fridge", "BeerCan", 3);
addtable("gasstore", "fridge", "BeerCan", 3);
addtable("gasstore", "freezer", "Icecream", 3);
addtable("gasstore", "freezer", "Pizza", 3);
addtable("gasstore", "freezer", "Pizza", 3);
addtable("gasstorage", "metal_shelves", "WhiskeyFull", 3);
addtable("cornerstore", "counter", "Earbuds", .1);
addtable("cornerstore", "counter", "Headphones", .1);
addtable("cornerstore", "counter", "VideoGame", .1);
addtable("cornerstore", "counter", "Tissue", 1);
addtable("cornerstore", "counter", "HandTorch", 1);
addtable("cornerstore", "counter", "WhiskeyFull", 1);
addtable("cornerstore", "counter", "BeefJerky", 5);
addtable("cornerstore", "counter", "Chocolate", 1);
addtable("cornerstore", "counter", "Bandaid", 1);
addtable("cornerstore", "counter", "Corkscrew", .1);
--GARDENSTORE
addtable("gardenstore", "shelves", "HandAxe", 2);
addtable("gardenstore", "shelves", "Sledgehammer", .1);
addtable("gardenstore", "shelves", "GardenSaw", 2);
addtable("gardenstore", "shelves", "Saw", 2);
addtable("gardenstore", "shelves", "HandShovel", 2);
addtable("gardenstore", "crate", "HandAxe", 1);
addtable("gardenstore", "crate", "GardenSaw", 1);
addtable("gardenstore", "crate", "Saw", 1);
addtable("gardenstore", "crate", "HandShovel", 1);
--GENERALSTORE
addtable("generalstore", "other", "Bullets9mmBox", 1);
addtable("generalstore", "other", "Bullets9mmBox", 1);
addtable("generalstore", "other", "Bullets9mmBox", 1);
addtable("generalstore", "other", "308Box", 1);
addtable("generalstore", "other", "ShotgunShellsBox", 1);
addtable("generalstore", "other", "ShotgunShellsBox", 1);
addtable("generalstore", "other", "ShotgunShellsBox", 1);
addtable("generalstore", "other", "Bullets38Box", 1);
addtable("generalstore", "other", "Bullets44Box", 1);
addtable("generalstore", "other", "Bullets45Box", 1);
addtable("generalstore", "other", "223Box", 1);
addtable("generalstore", "other", "WhiskeyFull", 1);
addtable("generalstore", "other", "BeefJerky", 5);
--STORAGEUNIT
addtable("storageunit", "all", "Bullets9mmBox", 1);
addtable("storageunit", "all", "Bullets9mmBox", 1);
addtable("storageunit", "all", "Bullets9mmBox", 1);
addtable("storageunit", "all", "308Box", 1);
addtable("storageunit", "all", "ShotgunShellsBox", 1);
addtable("storageunit", "all", "ShotgunShellsBox", 1);
addtable("storageunit", "all", "ShotgunShellsBox", 1);
addtable("storageunit", "all", "Bullets38Box", 1);
addtable("storageunit", "all", "Bullets44Box", 1);
addtable("storageunit", "all", "Bullets45Box", 1);
addtable("storageunit", "all", "223Box", 1);
addtable("storageunit", "all", "Crowbar", .5);
addtable("storageunit", "all", "Axe", .5);
addtable("storageunit", "all", "OldTire1", .1);
addtable("storageunit", "all", "OldTire2", .1);
addtable("storageunit", "all", "OldTire3", .1);
addtable("storageunit", "all", "NormalTire1", .1);
addtable("storageunit", "all", "NormalTire2", .1);
addtable("storageunit", "all", "NormalTire3", .1);
addtable("storageunit", "all", "ModernTire1", .1);
addtable("storageunit", "all", "ModernTire2", .1);
addtable("storageunit", "all", "ModernTire3", .1);
--GUNSTORE
addtable("gunstore", "displaycase", "AssaultRifle", 1);
addtable("gunstore", "displaycase", "AssaultRifle2", 1);

addtable("gunstore", "metal_shelves", "GunPowder", 10);
addtable("gunstore", "metal_shelves", "GunPowder", 10);
addtable("gunstore", "metal_shelves", "GunPowder", 10);
addtable("gunstore", "metal_shelves", "Bullets9mmBox", 10);
addtable("gunstore", "metal_shelves", "Bullets9mmBox", 10);
addtable("gunstore", "metal_shelves", "Bullets9mmBox", 10);
addtable("gunstore", "metal_shelves", "308Box", 10);
addtable("gunstore", "metal_shelves", "308Box", 10);
addtable("gunstore", "metal_shelves", "556Box", 10);
addtable("gunstore", "metal_shelves", "556Box", 10);
addtable("gunstore", "metal_shelves", "556Box", 10);
addtable("gunstore", "metal_shelves", "ShotgunShellsBox", 10);
addtable("gunstore", "metal_shelves", "ShotgunShellsBox", 10);
addtable("gunstore", "metal_shelves", "ShotgunShellsBox", 10);
addtable("gunstore", "metal_shelves", "Bullets38Box", 10);
addtable("gunstore", "metal_shelves", "Bullets44Box", 10);
addtable("gunstore", "metal_shelves", "Bullets45Box", 10);
addtable("gunstore", "metal_shelves", "223Box", 10);
addtable("gunstore", "metal_shelves", "9mmClip", 5);
addtable("gunstore", "metal_shelves", "9mmClip", 3);
addtable("gunstore", "metal_shelves", "45Clip", 1);
addtable("gunstore", "metal_shelves", "44Clip", 1);
addtable("gunstore", "metal_shelves", "223Clip", 2);
addtable("gunstore", "metal_shelves", "308Clip", 1);
addtable("gunstore", "metal_shelves", "556Clip", 3);
addtable("gunstore", "metal_shelves", "556Clip", 3);
addtable("gunstore", "metal_shelves", "M14Clip", 1);


addtable("gunstore", "locker", "GunPowder", 10);
addtable("gunstore", "locker", "GunPowder", 10);
addtable("gunstore", "locker", "GunPowder", 10);
addtable("gunstore", "locker", "Bullets9mmBox", 10);
addtable("gunstore", "locker", "Bullets9mmBox", 10);
addtable("gunstore", "locker", "Bullets9mmBox", 10);
addtable("gunstore", "locker", "308Box", 10);
addtable("gunstore", "locker", "308Box", 10);
addtable("gunstore", "locker", "556Box", 10);
addtable("gunstore", "locker", "556Box", 10);
addtable("gunstore", "locker", "556Box", 10);
addtable("gunstore", "locker", "ShotgunShellsBox", 10);
addtable("gunstore", "locker", "ShotgunShellsBox", 10);
addtable("gunstore", "locker", "ShotgunShellsBox", 10);
addtable("gunstore", "locker", "Bullets38Box", 10);
addtable("gunstore", "locker", "Bullets44Box", 10);
addtable("gunstore", "locker", "Bullets45Box", 10);
addtable("gunstore", "locker", "223Box", 10);
addtable("gunstore", "locker", "9mmClip", 5);
addtable("gunstore", "locker", "9mmClip", 3);
addtable("gunstore", "locker", "45Clip", 1);
addtable("gunstore", "locker", "44Clip", 1);
addtable("gunstore", "locker", "223Clip", 2);
addtable("gunstore", "locker", "308Clip", 1);
addtable("gunstore", "locker", "556Clip", 3);
addtable("gunstore", "locker", "556Clip", 3);
addtable("gunstore", "locker", "M14Clip", 1);

addtable("gunstore", "counter", "GunPowder", 10);
addtable("gunstore", "counter", "GunPowder", 10);
addtable("gunstore", "counter", "GunPowder", 10);
addtable("gunstore", "counter", "Bullets9mmBox", 10);
addtable("gunstore", "counter", "Bullets9mmBox", 10);
addtable("gunstore", "counter", "Bullets9mmBox", 10);
addtable("gunstore", "counter", "308Box", 10);
addtable("gunstore", "counter", "308Box", 10);
addtable("gunstore", "counter", "556Box", 10);
addtable("gunstore", "counter", "556Box", 10);
addtable("gunstore", "counter", "556Box", 10);
addtable("gunstore", "counter", "ShotgunShellsBox", 10);
addtable("gunstore", "counter", "ShotgunShellsBox", 10);
addtable("gunstore", "counter", "ShotgunShellsBox", 10);
addtable("gunstore", "counter", "Bullets38Box", 10);
addtable("gunstore", "counter", "Bullets44Box", 10);
addtable("gunstore", "counter", "Bullets45Box", 10);
addtable("gunstore", "counter", "223Box", 10);
addtable("gunstore", "counter", "9mmClip", 5);
addtable("gunstore", "counter", "9mmClip", 3);
addtable("gunstore", "counter", "45Clip", 1);
addtable("gunstore", "counter", "44Clip", 1);
addtable("gunstore", "counter", "223Clip", 2);
addtable("gunstore", "counter", "308Clip", 1);
addtable("gunstore", "counter", "556Clip", 3);
addtable("gunstore", "counter", "556Clip", 3);
addtable("gunstore", "counter", "M14Clip", 1);


addtable("gunstorestorage", "all", "GunPowder", 10);
addtable("gunstorestorage", "all", "GunPowder", 10);
addtable("gunstorestorage", "all", "GunPowder", 10);
addtable("gunstorestorage", "all", "Bullets9mmBox", 10);
addtable("gunstorestorage", "all", "Bullets9mmBox", 10);
addtable("gunstorestorage", "all", "Bullets9mmBox", 10);
addtable("gunstorestorage", "all", "308Box", 10);
addtable("gunstorestorage", "all", "308Box", 10);
addtable("gunstorestorage", "all", "556Box", 10);
addtable("gunstorestorage", "all", "556Box", 10);
addtable("gunstorestorage", "all", "556Box", 10);
addtable("gunstorestorage", "all", "ShotgunShellsBox", 10);
addtable("gunstorestorage", "all", "ShotgunShellsBox", 10);
addtable("gunstorestorage", "all", "ShotgunShellsBox", 10);
addtable("gunstorestorage", "all", "Bullets38Box", 10);
addtable("gunstorestorage", "all", "Bullets44Box", 10);
addtable("gunstorestorage", "all", "Bullets45Box", 10);
addtable("gunstorestorage", "all", "223Box", 10);
addtable("gunstorestorage", "all", "9mmClip", 10);
addtable("gunstorestorage", "all", "9mmClip", 10);
addtable("gunstorestorage", "all", "45Clip", 10);
addtable("gunstorestorage", "all", "44Clip", 10);
addtable("gunstorestorage", "all", "223Clip", 10);
addtable("gunstorestorage", "all", "223Clip", 10);
addtable("gunstorestorage", "all", "308Clip", 10);
addtable("gunstorestorage", "all", "556Clip", 10);
addtable("gunstorestorage", "all", "556Clip", 10);
addtable("gunstorestorage", "all", "556Clip", 10);
addtable("gunstorestorage", "all", "M14Clip", 10);
addtable("gunstorestorage", "all", "M14Clip", 10);
addtable("gunstorestorage", "all", "M14Clip", 10);


--[[
TODO

Create function to change Min and Max Procedural rolls

Tweak gun/ammo spawn rates.  More pistols/shotguns, less rifles.  More attachments.  Less clips.

Still to go through:
School and/or lockers
Police
Army
Add another spawn or two for Ham Radios
Mechanic
Winter Clothing
Extra Ammo in safehouses?
hunting
camping
--]]




--DistributionsTable = SuburbsDistributions;
--table.insert(Distributions, 1, distributionTable);

--for mod compat:
--SuburbsDistributions = distributionTable;



