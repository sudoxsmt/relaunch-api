repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer

local gagId = 126884695634066

if game.PlaceId == gagId then
  task.wait(35)
  local player = game:GetService("Players").LocalPlayer
  local backpack = player:WaitForChild("Backpack")
  local replicatedStorage = game:GetService("ReplicatedStorage")
  local favoriteItemEvent = replicatedStorage:WaitForChild("GameEvents"):WaitForChild("Favorite_Item")
  
  for _, tool in ipairs(backpack:GetChildren()) do
      if tool:IsA("Tool") then
          local success, value = pcall(function()
              return tool:GetAttribute("d")
          end)
  
          if success and value == true then
              local args = {
                  backpack:WaitForChild(tool.Name)
              }
              favoriteItemEvent:FireServer(unpack(args))
              task.wait(0.1)
          end
      end
  end
end
