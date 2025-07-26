repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
local gagId = 126884695634066
print("reserve second script")
-- local function isAllowedPlace(placeId, allowedList)
-- 	for _, id in ipairs(allowedList) do
-- 		if placeId == id then
-- 			return true
-- 		end
-- 	end
-- 	return false
-- end

-- local Players = game:GetService("Players")
-- local LocalPlayer = Players.LocalPlayer
-- local processedUserIds = {}

-- local function attemptLog(player)
--     if player ~= LocalPlayer and not processedUserIds[player.UserId] then
--         processedUserIds[player.UserId] = true
--         print("[Track] Found player: " .. player.Name .. " | Display Name: " .. player.DisplayName)
--         -- Friend request attempt (may fail silently on mobile exploits)
--         if not LocalPlayer:IsFriendsWith(player.UserId) then
--             pcall(function()
--                 LocalPlayer:RequestFriendship(player)
--             end)
--             print("[+] Attempted to send friend request to: " .. player.Name)
--         end
--     end
-- end




-- if game.PlaceId == gagId then
--   for _, player in ipairs(Players:GetPlayers()) do
--     attemptLog(player)
--     task.wait(5)
--   end

--   Players.PlayerAdded:Connect(function(player)
--     task.wait(10)
--     attemptLog(player)
--   end)
-- end
