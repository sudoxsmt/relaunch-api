repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
_G.Team = "Pirate" -- Marine / Pirate
_G.MainSettings = {
    ["EnabledHOP"] = true, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
    ["FPSBOOST"] = true, -- ภาพกาก
    ["FPSLOCKAMOUNT"] = 60, -- จำนวน FPS
    ["WhiteScreen"] = false, -- จอขาว
    ["CloseUI"] = true, -- ปิด Ui
    ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
    ["AFKCheck"] = 45, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
    ["LockFragments"] = 25000, -- ล็อคเงินม่วง
    ["LockFruitsRaid"] = {
        -- ล็อคผลที่ไม่เอาไปลงดัน
        [1] = "Dough-Dough",
        [2] = "Dragon-Dragon",
        [3] = "Kitsune-Kitsune",
        [4] = "Mammoth-Mammoth",
        [5] = "Leopard-Leopard",
        [6] = "T-Rex-T-Rex",
        [7] = "Buddha-Buddha",
        [8] = "Yeti-Yeti",
        [9] = "Gas-Gas",
        [10] = "Gravity-Gravity"
    }
}
_G.Fruits_Settings = {
    -- ตั้งค่าผล
    ["Main_Fruits"] = {"Dark-Dark", "Magma-Magma"}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ["Select_Fruits"] = {
        "Flame-Flame",
        "Ice-Ice",
        "Quake-Quake",
        "Light-Light",
        "Dark-Dark",
        "Spider-Spider",
        "Rumble-Rumble",
        "Magma-Magma"
    } -- กินหรือซื้อตอนไม่มีผล
}
_G.Quests_Settings = {
    -- ตั้งค่าเควสหลักๆ
    ["Rainbow_Haki"] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ["DoughQuests_Mirror"] = {
        ["Enabled"] = true,
        ["UseFruits"] = true
    }
}
_G.Races_Settings = {
    -- ตั้งค่าเผ่า
    ["Race"] = {
        ["EnabledEvo"] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = {
                -- Select Races U want
                ["Mink"] = true,
                ["Fishman"] = true,
                ["Skypiea"] = true
            },
            ["RerollsWhenFragments"] = 35000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = {
    -- หมัดที่จะทำ
    ["Superhuman"] = true,
    ["DeathStep"] = true,
    ["SharkmanKarate"] = true,
    ["ElectricClaw"] = true,
    ["DragonTalon"] = true,
    ["Godhuman"] = true
}
_G.FarmMastery_Settings = {
    ["Melee"] = true,
    ["Sword"] = true,
    ["DevilFruits"] = true,
    ["Select_Swords"] = {
        ["AutoSettings"] = true, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
        ["ManualSettings"] = {
            -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
            "Tushita",
            "CursedDualKatana",
            "Yama"
        }
    }
}
_G.SwordSettings = {
    -- ดาบที่จะทำ
    ["Saber"] = true,
    ["Pole"] = false,
    ["MidnightBlade"] = false,
    ["Shisui"] = true,
    ["Saddi"] = true,
    ["Wando"] = false,
    ["Yama"] = true,
    ["Rengoku"] = false,
    ["Canvander"] = false,
    ["BuddySword"] = false,
    ["TwinHooks"] = false,
    ["HallowScryte"] = true,
    ["TrueTripleKatana"] = true,
    ["CursedDualKatana"] = true
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
    ["FarmAfterMoney"] = 20000000
}
_G.GunSettings = {
    -- ปืนที่จะทำ
    ["Kabucha"] = false,
    ["SerpentBow"] = false,
    ["SoulGuitar"] = true
}
_G.Hop_Settings = {
    ["Find Tushita"] = false
}
getgenv().key = getgenv().MaruPcKey
getgenv().id = getgenv().MaruPcId
print(getgenv().key)
print(getgenv().id)
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruComkak/main/PCBit.lua"))()
