repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
local gagId = 126884695634066
if game.PlaceId == gagId then
    script_key=KEYGAG;
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sudoxsmt/relaunch-api/refs/heads/main/vc-config.lua"))()
else 
    getgenv().Key = KEYMARU;
    getgenv().id = IDMARU;
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sudoxsmt/relaunch-api/refs/heads/main/maru-kaitun.lua"))()
end
