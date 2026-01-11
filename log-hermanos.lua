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
local bfList = {2753915549, 4442272183, 7449423635,79091703265657,100117331123089,85211729168715}
local forge = 76558904092080

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
elseif game.placeId == forge then
    repeat task.wait() until game:IsLoaded()
    repeat
    task.wait(0.1)
    until game:IsLoaded() and _G.Horst_SetDescription -- wait horst loaded
    wait(10)
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Shared = ReplicatedStorage:WaitForChild("Shared")

    local Equipments = require(ReplicatedStorage.Shared.Data.Equipments)
    local Knit = require(Shared.Packages.Knit)
    local PlayerController = Knit.GetController("PlayerController")
    local Replica = PlayerController.Replica

    local Pickaxes = {}
    local Gold
    local Race
    local level
    local exp
    local function tableContains(tbl, value)
        for _, v in pairs(tbl) do
            if v == value then
                return true
            end
        end
        return false
    end

    task.spawn(function()
        while task.wait(10) do
            Gold  = Replica.Data.Gold  or 0
            Level = Replica.Data.Level or 0
            Race  = Replica.Data.Race  or "N/A"
            Exp   = Replica.Data.Exp   or 0
            for _, item in pairs(Replica.Data.Inventory.Equipments) do
                if typeof(item) == "table" and Equipments.Items.Pickaxe[item.Name] then
                    table.insert(Pickaxes, item.Name)
                end
            end

            local RaceEmoji = {
                Demon = "👿",
                Angel = "😇"
            }

            local emoji = RaceEmoji[Race] or "😀"

            local Description = string.format(
                "%s Race: %s, ⛏️ Pickaxes: %s, 💰 Gold: %d, 📊 Level: %d, ⌛ Exp: %d",
                emoji,
                Race,
                table.concat(Pickaxes, ", "),
                Gold,
                Level,
                Exp
            )
            
            if tableContains(Pickaxes, "Demonic Pickaxe") and tableContains(Pickaxes, "Magma Pickaxe") then
                _G.Horst_SetDescription(Description)

                local ok, err = _G.Horst_AccountChangeDone()
                if ok then
                    print("Account change done sent successfully!")
                else
                    print("Failed to send DONE:", err)
                end
            end
            
            table.clear(Pickaxes)
            _G.Horst_SetDescription(Description)
            
            
        end
    end)
end
