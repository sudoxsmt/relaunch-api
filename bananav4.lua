repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().ConfigV4 = {
    ["Account Up Gear"] = {
      ""
    },
    ["Account Help"] = {
      "adasiatrade",
      "DmercifulPie7",
      "tX_20231216"
    },
    ["Method Kick"] = {
        ["End Moon"] = true,
    },
    ["Auto Join"] = true,
    ["Auto Change Race"] = {
        ["Enabled"] = false,
        ["Race"] = {""} --- Human,Skypiea,Fishman,Mink
    },
    ["Webhook"] = {
        ["url"] = getgenv().DiscordBanana,
        ["Done Train"] = true,
        ["Done Trial"] = true,
    }
}
getgenv().Key = getgenv().KBanana
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/NewV4Config.lua"))()