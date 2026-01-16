getgenv().ConfigsKaitun = {
	World3Farm = true,
	BypassTp = false,

	Race = { "Demon", "Angel", "Archangel" }, -- reroll
	Pickaxe = {
		["Magma"] = true,
		["Demonic"] = true,
		["Void"] = false,
		-- The Arcane, Prismatic is warranty auto doing
	},
	SellPickaxe = { -- sell when didnt use
		["Stone Pickaxe"] = true,
		["Bronze Pickaxe"] = true,
		["Iron Pickaxe"] = true,
		["Titanium Pickaxe"] = true,
		["Aqua Pickaxe"] = true,
	},
	End_game_craft = {
		Weapon = {

		},
		Armor = {
			["Helmet"] = {

			},
			["Chestplate"] = {
				
			},
			["Leggings"] = {
				
			}
		}
	}
}
License = getgenv().KeyAYA
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()