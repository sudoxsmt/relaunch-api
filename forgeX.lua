getgenv().Configuration = { 
     Enabled = true,
     Pickaxe = {
        ['Arcane Pickaxe'] = true, -- // ห้ามปิดบังคับต้องมี
        ['Demonic Pickaxe'] = true, -- // เปิด / ปิด ได้ไม่บังคับ 
        ['Magma Pickaxe'] = true, -- // เปิด / ปิด ได้ไม่บังคับ
     },
     Weapon = {
        ['Eye Tachi'] = true, -- // ห้ามปิดบังคับต้องมี
     },
     Armor = {
        ['Lightite Knight Chestplate'] = false,
        ['Lightite Knight Leggings'] = false,
        ['Lightite Knight Helmet'] = false,
     },
     Performance = {
        ['FPS Lock'] = {
            ['Enabled'] = true,
            ['FPS'] = 15,
        },
     },
     Races = {
        ['Auto Roll'] = false,
        ['Races'] = {
            'Angel',
            'Demon',
        },
     },
     Codes = {
        'PEAK!',
        'SORRYFORSHUTDOWN',
        '300K!',
        '400K!',
        '100KLIKES',
        '200K!',
     },
     Misc = {
        ['Tween Speed'] = 50,
     },
};
_G.Authorize = getgenv().keyX
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0fbaa2aa75e1ef5d4da3dd2e849494c8.lua")){'Exclusive'}