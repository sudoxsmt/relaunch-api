repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players and game.Players.LocalPlayer
local player = game.Players.LocalPlayer
repeat task.wait() until player.Character and player.Character:FindFirstChild("Humanoid")
local playerGui = player:WaitForChild("PlayerGui")

-- Common intro/lobby keywords
local KEYWORDS = {
	"press", "click", "tap", "any key", "start", "play",
	"skip", "loaded", "fully loaded", "continue"
}

-- Detects if a ScreenGui looks like an intro screen
local function isIntroScreen(gui)
	if gui:IsA("ScreenGui") and gui.Enabled then
		for _, desc in ipairs(gui:GetDescendants()) do
			if (desc:IsA("TextLabel") or desc:IsA("TextButton")) and desc.Text then
				local text = desc.Text:lower()
				for _, keyword in ipairs(KEYWORDS) do
					if text:find(keyword) then
						return true
					end
				end
			end
		end
	end
	return false
end

-- Checks if a GUI is still visibly showing anything meaningful
local function isGuiEffectivelyVisible(gui)
	for _, obj in ipairs(gui:GetDescendants()) do
		if obj:IsA("GuiObject") and obj.Visible and obj.AbsoluteSize.Magnitude > 0 then
			-- Frame-like (backgrounds)
			if obj:IsA("Frame") or obj:IsA("ScrollingFrame") or obj:IsA("TextBox") then
				if (obj.BackgroundTransparency or 0) < 1 then
					return true
				end
			end

			-- Text-based
			if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
				if (obj.TextTransparency or 1) < 1 then
					return true
				end
			end

			-- Image-based
			if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
				if (obj.ImageTransparency or 1) < 1 then
					return true
				end
			end
		end
	end
	return false
end

-- Main function to wait for intro/lobby screen to finish
local function waitForIntroToFinish()
	local introGui = nil

	-- Step 1: Wait until any matching intro GUI is found
	repeat
		for _, gui in ipairs(playerGui:GetChildren()) do
			if isIntroScreen(gui) then
				introGui = gui
				break
			end
		end
		task.wait()
	until introGui

	print("Intro screen found:", introGui.Name)

	-- Step 2: Wait until it's no longer visible
	repeat
		task.wait()
	until not isGuiEffectivelyVisible(introGui) or not introGui:IsDescendantOf(playerGui)

	print("Intro screen passed — script can proceed.")
end

local targetPlaceId = 126884695634066

if game.PlaceId == targetPlaceId then
    -- Call the function before your main logic
    waitForIntroToFinish()

    -- Continue your main script logic below here
    print("Game is ready. Starting script...")
end
if not game:IsLoaded() then
    task.delay(60, function()
        if NoShutdown then return end
        if not game:IsLoaded() then
            return game:Shutdown()
        end
        local Code = game:GetService'GuiService':GetErrorCode().Value
        if Code >= Enum.ConnectionError.DisconnectErrors.Value then
            return game:Shutdown()
        end
    end)
    game.Loaded:Wait()
end

local Request = (syn and syn.request) or request or (http and http.request) or http_request
local username = game.Players.LocalPlayer.Name
local TeleportService = game:GetService'TeleportService'
local InputService = game:GetService'UserInputService'
local HttpService = game:GetService'HttpService'
local RunService = game:GetService'RunService'
local GuiService = game:GetService'GuiService'
local Players = game:GetService'Players'
local IsGetKick = false
local Port = 9600
local FailCount = 0
local MaxFails = 5
local LocalPlayer = Players.LocalPlayer if not LocalPlayer then repeat LocalPlayer = Players.LocalPlayer task.wait() until LocalPlayer end task.wait(0.5)
LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started and Nexus.IsConnected then
        IsGetKick = true
    end
end)

local function checkForError()
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            if game:GetService("GuiService"):GetErrorCode().Value then
                IsGetKick = true
            end
        end
    end)
    return IsGetKick
end

local function sendHeartbeat()
    local url = "http://127.0.0.1:" .. Port .. "/online"
    local data = HttpService:JSONEncode({username = username})
    local requestData = {
        Url = url,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = data
    }

    local success, response = pcall(function()
        return Request(requestData)
    end)

    if success and response and response.StatusCode == 200 then
        print("✅ Online heartbeat sent for", username)
        FailCount = 0
    else
        FailCount = FailCount + 1
        print("❌ Heartbeat failed, count:", FailCount)
    end

end

local function setOffline()
    local url = "http://127.0.0.1:" .. Port .. "/offline"
    local data = HttpService:JSONEncode({username = username})
    local requestData = {
        Url = url,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = data
    }

    local success, response = pcall(function()
        return Request(requestData)
    end)

    if success then
        print("🔴 Marked offline:", username)
    else
        warn("❌ Offline update failed")
    end
end

-- spawn the heartbeat loop
task.spawn(function()
    while true do
        IsGetKick = checkForError()
        if not IsGetKick then
            sendHeartbeat()
        else
            task.wait(10)
            setOffline()
        end
        task.wait(60)
    end
end)
