
getgenv().Configs = {
    TargetRace = {"Archangel"}, -- Select Target Race

    CustomCode = {"FORGWEEKEND!", "RAVEN"}, -- Add Your Custom Code (สามารถเพิ่มโค๊ดด้วยตัวเองถ้าผมอัพเดตช้า)

    -- For Our Partner Horst SpaceX Auto Change Accout
    Horst_SpaceX = {
        Enable = true, -- Will Auto Change Account When (Get Target or Out of Spins)
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/295253d7335769851039c2d2586d6938.lua"))()