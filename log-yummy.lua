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
local nightId = {79546208627805 , 126509999114328}
local bfList = {2753915549, 4442272183, 7449423635,79091703265657,100117331123089,85211729168715}

if game.PlaceId == gagId then
  task.wait(15)
  _G.Config = { 
		UserID = getgenv().UserID , 
		discord_id = getgenv().DiscordId , 
		Note = getgenv().Note, 
  } 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/refs/heads/main/gag"))()
elseif isAllowedPlace(game.PlaceId, nightId) then
	task.wait(15)
	_G.Config = { 
			UserID = getgenv().UserID , 
			discord_id = getgenv().DiscordId , 
			Note = getgenv().Note, 
	} 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/refs/heads/main/99night"))()
elseif isAllowedPlace(game.PlaceId, bfList) then
task.wait(15)
  _G.Config = { 
		UserID = getgenv().UserID , 
		discord_id = getgenv().DiscordId , 
		Note = getgenv().Note, 
  } 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/skadidau/unfazedfree/main/trackstatblox"))()
end