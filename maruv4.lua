_G.Settings_V4 = {
    ["LockTiers"] = 11, -- เตะตอนเทียร์เท่านั้นหรือมากกว่า ( ออโต้ปิด ระบบรีจอยในสคริปต์ ) ถ้าอยากปิด หรือตัวช่วย T10 ปรับเป็น11 / Kick when tier more than your settings ( If u not want to kick just set to 11 )
    ["Lever"] = true, -- ออโต้ดึงคันโยก / Auto Pull Lever
    ["InVIPServ"] = true, -- รีเซิฟให้ฟูลมูนรี / Crash when full moon end
    ["HelperNameList"] = { -- ตัวช่วยได้ 2 ตัว / Put the helper account name
        "adasiatrade",
        "DmercifulPie7",
        "tX_20231216",
        "Pansyildzm99491",
        "Marislsyck01475",
        "Leighdavph11730",
    },
    ['RaceSettings'] = { -- รีเผ่า ต้องมีเงินม่วงพร้อมรีเท่านั้น
        ["Enabled"] = true, -- เปิด/ปิด
        ["RaceTarget"] = {"Mink","Fishman","Human"} -- เผ่าที่อยากให้รีได้
    },
    ["V4FarmList"] = { -- ตัวฟาร์มใส่ได้ 10 ตัวเผ่าไม่ซ้ำตัวช่วยพอ / Put account name u want to farm v4
"AdamsRebekah7752",
"AlonsoCharles61491",
"AniyahKeara85212",
"AveryNancy78389",
"ChrisBarrera59650",
"DavisAvianna98137",
"ElliotGracelyn78058",
"ElsaKeira8140",
"EmilioJon73235",
"HudsonAdilene33089",
"IdrisJadon13541",
"JaysonEliana47550",
"KaelaEstefany92997",
"LarsonTrevor98198",
"LindseyMichael26656",
"MadalynnPierce92697",
"ReannaBurke87129",
"RogersKeanu738",
"StefanieMercy24623",
"YazmineChad13361",
    },
    ["AutoFindFarmList"] = false -- ปรับเป็น true จะหาตัวฟาร์มเองโดยที่ไม่จำเป็นต้องเติมชื่อตัวฟาร์มลงใน V4FarmList แต่อาจจะฟาร์มช้าลงเพราะสุ่มตำแหน่งฟาร์ม
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/refs/heads/main/Loader.lua"))()