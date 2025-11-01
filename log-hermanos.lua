repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer

local function isAllowedPlace(placeId, allowedList)
	for _, id in ipairs(allowedList) do
		if placeId == id then
			return true
		end
	end
	return false
end

local gagId = 126884695634066
local bfList = {2753915549, 4442272183, 7449423635,79091703265657}

if game.PlaceId == gagId then
    task.wait(10) -- ระยะเวลารอ ถ้าเปิดหลายจอเเนะนำให้ตั้งเป็น 20 วิ
    getgenv().Hermanos_Settings = {
        ['key'] = var1,
        ['PC'] = var2,
        ['Seeds'] = {},
        ['Pets'] = {"Queen Bee","Raccoon","Dragonfly","Disco Bee","Butterfly","Mimic Octopus","Fennec Fox","T-Rex","Brontosaurus","Spinosaurus","Dilophosaurus","Kitsune","Corrupted Kitsune","French Fry Ferret","Golden Goose","Griffin"},
        ['Gears'] = {"Level Up Lollipop","Grandmaster Sprinkler"},
        ['Eggs'] = {"Anti Bee Egg","Bee Egg","Night Egg","Mythical Egg","Bug Egg","Paradise Egg","Oasis Egg","Dinosaur Egg","Primal Egg","Zen Egg","Common Egg","Gourmet Egg"}

    }
    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/gag-main.lua'))() end)
elseif isAllowedPlace(game.PlaceId, bfList) then
    getgenv().Hermanos_Settings = {
        ['key'] = var1,
        ['PC'] = var2,
        ['Sword'] = {'Cursed Dual Katana', 'Shark Anchor'},
        ['Gun'] = {''},
        ['Accessories'] = {},
        ['Fruit'] = {'Kitsune', 'Leopard', 'Dragon (West)', 'Gas', 'Yeti',  'Dough', 'Dragon (East)','Gravity','Tiger'},
    }
    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/script.lua'))() end)
end
