repeat task.wait() until game:IsLoaded()

local function isAllowedPlace(placeId, allowedList)
	for _, id in ipairs(allowedList) do
		if placeId == id then
			return true
		end
	end
	return false
end

local nightId = {79546208627805 , 126509999114328}
local bfList = {2753915549, 4442272183, 7449423635}

if isAllowedPlace(game.PlaceId, nightId) then
    getgenv().HorstConfig = {
        ["EnableLog"] = true,
        ["Whitescreen"] = false,
        ["EnableAddFriends"] = true,
        ["LockFps"] = {
            ["EnableLockFps"] = true,
            ["LockFpsAmount"] = 15 
        },
        ["AutoFunctions"] = {
            ["Enable"] = true,
            ["99_Nights"] = { 
                ["Diamonds"] = {
                    ["Enable"] = true,
                    ["Amount"] = 1000, 
                },
                ["Class"] = {
                    ["Enable"] = false,
                    ["Class Name"] = "Camper",
                    ["Level"] = 1 -- ถ้าเช็คว่ามากกว่าก็เปลี่ยนให้
                }
            }
        }
    }
else
    getgenv().HorstConfig = {
        ["EnableLog"] = true, -- ปรับเป็น true ถ้าอยากให้มันเช็คของ BF / GAG
        ["Whitescreen"] = false,
        ["EnableAddFriends"] = true, -- แอดเพื่อนให้เอง ทุกๆ 1นาที
        ["LockFps"] = {
            ["EnableLockFps"] = true,
            ["LockFpsAmount"] = 15 
        },
        ["AutoFunctions"] = {
            ["Enable"] = true, -- ออโต้เปลี่ยนไอดี สำคัญ !!
            ["BF"] = { 
                ["MAIN"] = {
                    ["Level"] = 2800,
                    ["Fragments"] = 30000, -- ถ้าต่ำกว่านี้จะไม่เปลี่ยนไอดีให้ until >=
                    ["Full_Mastery_DF"] = false,
                    ["Full_Awake_DF"] = false,
                    ["Lever"] = false,
                    ["Lock_Race"] = {
                        ["Enable"] = false,
                        ["Race"] = "Cyborg", -- ["Cyborg", "Ghoul", "Mink", "Fishman", "Skypiea", "Draco"]
                        ["Ability"] = "V3",
                        ["Tier"] = 10 -- ยังไม่ให้ใช้ เอามาประดับบารมีเฉยๆ
                    }
                },
                ["GOD"] = true,
                ["GOD_CDK"] = true,
                ["GOD_SA"] = true, 
                ["GOD_MIR_VAL"] = true, 
                ["GOD_CDK_MIR_VAL"] = true
            }
        }
    }
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/HorstSpaceX/last_update/refs/heads/main/on_loaded.lua"))()