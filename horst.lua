repeat task.wait() until game:IsLoaded()

getgenv().HorstConfig = {
    ["EnableLog"] = true, -- ปรับเป็น true ถ้าอยากให้มันเช็คของ BF / GAG
    ["Whitescreen"] = false,
    ["EnableAddFriends"] = true, -- แอดเพื่อนให้เอง ทุกๆ 1นาที
    ["LockFps"] = {
        ["EnableLockFps"] = true,
        ["LockFpsAmount"] = 20 
    },
    ["AutoFunctions"] = {
        ["Enable"] = true, -- ออโต้เปลี่ยนไอดี สำคัญ !!
        ["BF"] = { 
            ["MAIN"] = {
                ["Level"] = 2800,
                ["Fragments"] = 25000, -- ถ้าต่ำกว่านี้จะไม่เปลี่ยนไอดีให้ until >=
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/HorstSpaceX/last_update/refs/heads/main/on_loaded.lua"))()