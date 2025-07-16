repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
local gagId = 126884695634066
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local processedUserIds = {}

local function isAllowedPlace(placeId, allowedList)
	for _, id in ipairs(allowedList) do
		if placeId == id then
			return true
		end
	end
	return false
end

local function safeRequestFriendship(player)
    pcall(function()
        if player ~= LocalPlayer and not processedUserIds[player.UserId] then
            processedUserIds[player.UserId] = true
            if not LocalPlayer:IsFriendsWith(player.UserId) then
                LocalPlayer:RequestFriendship(player)
                print("[+] Friend request sent to: " .. player.Name)
            else
                print("[=] Already friends with: " .. player.Name)
            end
        end
    end)
end

local function processAllPlayers()
    for _, player in ipairs(Players:GetPlayers()) do
        safeRequestFriendship(player)
        task.wait(0.3) -- faster but adjustable
    end
end

if game.PlaceId == gagId then
  processAllPlayers()
  
  Players.PlayerAdded:Connect(function(player)
      task.wait(10)
      safeRequestFriendship(player)
  end)
end
