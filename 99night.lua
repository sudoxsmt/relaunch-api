script_key= getgenv().Key99 ;
getgenv().ScriptMode = "Diamond"
-- Diamond / Class

--============== Kaitun Diamond ==============--
getgenv().Configs = {
    -- แจ้งเตือน ( Notify )
    WebhookUrl = getgenv().Discord,
    LimitDiamonds = 2000,
    WebhookOneTime = true,
    EnableLogRam = false,

    -- การฟาร์ม ( Farm )
    LimitDay = 0, 
    MaxStrongholdLevel = 5, 

    -- คลาส ( Class )
    BuyClass = {"None"},
    DoFirstTimeReroll = false,
    AutoEquipClass = "None",
    UpgradeClass = false,

    -- Misc
    UI = true,
    LowGraphics = true,
    FpsCap = 15,
}

--============== Kaitun Class ==============--
getgenv().ConfigsClass = {
    MaxLevel = 3, -- ฟาร์มถึงเวลอะไรให้หยุด 1 - 3
    TargetClass = "Pyromaniac",
    -- Cyborg, Alien, Assassin,
    -- Pyromaniac, Poison Master,
    -- Big Game Hunter

    -- InGame Settings
    TargetMob = {
        "Wolf", "Alpha Wolf", "Bear","Polar Bear",
        "Arctic Fox"
        }, -- มอนที่ต้องการกำจัด
    TweenSpeed = 300, -- ความเร็วการเคลื่อนที่
    InGameTimer = 150, -- เวลาฟาร์มในเกม
    MobDistance = 100, -- ระยะหาของ Mob ที่อยู่ใกล้กัน
    MobSeparation = 50, -- ระยะห่างระหว่าง Mob ที่อยู่ใกล้กัน

    -- Notify (แจ้งเตือน)
    LogRAM = false, -- Log Roblox Account Manager
}

--============== Google Sheet Log ==============--
getgenv().GoogleSheetLog = {
    -- Google Sheet
    Enable = false, -- เปิดใช้ฟีเจอร์
    WebAppURL = "" -- ใส่ URL ของ Google Apps Script ที่เชื่อมต่อกับ Google Sheets ของคุณ
}
--==============================================--

loadstring(game:HttpGet("https://gist.githubusercontent.com/Clehxb/a0512b13f2bcc539e037712e13572d14/raw/Night_Loader"))()