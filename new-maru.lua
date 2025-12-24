repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
_G.Team = "Pirate"
_G.OneClickSettings = {
    ["MainIsFarmLevel"] = true, 
    ["LockFruits"] = {
        "Dough-Dough",
        "Dragon-Dragon",
        "Kitsune-Kitsune",
        "Mammoth-Mammoth",
        "Leopard-Leopard",
        "T-Rex-T-Rex",
        "Buddha-Buddha",
        "Yeti-Yeti",
        "Gas-Gas",
        "Gravity-Gravity",
        "Creation-Creation",
        "Phoenix-Phoenix",
        "Spirit-Spirit",
        "Shadow-Shadow",
        "Venom-Venom",
        "Control-Control",
        "Tiger-Tiger"
    },
    ["MainFruits"] = {
        "Dark-Dark", "Magma-Magma"
    },
    ["RegularFruits"] = {
        "Flame-Flame",
        "Ice-Ice",
        "Quake-Quake",
        "Light-Light",
        "Dark-Dark",
        "Spider-Spider",
        "Rumble-Rumble",
        "Magma-Magma"
    },
    ["FragmentsCap"] = 40000,
    ["Upgrade Race"] = true,
    ["Pull Lever"] = true,
    ["Farm Shark Anchor"] = true,
    ["Cursed Dual Katana"] = true
}
getgenv().key = getgenv().MaruPcKey
getgenv().id = getgenv().MaruPcId
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruComkak/main/PCBit.lua"))()
