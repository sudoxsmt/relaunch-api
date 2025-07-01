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
local bfList = {2753915549, 4442272183, 7449423635}

if game.PlaceId == gagId then
    task.wait(30) -- ระยะเวลารอ ถ้าเปิดหลายจอเเนะนำให้ตั้งเป็น 20 วิ
    getgenv().Hermanos_Settings = {
        ['key'] = var1,
        ['PC'] = var2,
        ['Seeds'] = {"Sunflower","Candy Blossom","Moon Blossom","Candy Blossom","Dragon Pepper","Elephant Ears","Honeysuckle"},
        ['Pets'] = {"Queen Bee","Raccoon","Dragonfly","Disco Bee","Butterfly","Mimic Octopus","Fennec Fox","Capybara","Toucan"},
        ['Gears'] = {"Master Sprinkler"},
        ['Eggs'] = {"Anti Bee Egg","Bee Egg","Night Egg","Mythical Egg","Bug Egg","Paradise Egg","Oasis Egg"}

    }
    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/gag-main.lua'))() end)
elseif isAllowedPlace(game.PlaceId, bfList) then
    getgenv().Hermanos_Settings = {
        ['key'] = var1,
        ['PC'] = var2,
        ['Sword'] = {'Cursed Dual Katana', 'Shark Anchor'},
        ['Gun'] = {''},
        ['Accessories'] = {},
        ['Fruit'] = {'Kitsune', 'Leopard', 'Dragon (West)', 'Gas', 'Yeti',  'Dough', 'Dragon (East)'},
    }
    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/script.lua'))() end)
end
