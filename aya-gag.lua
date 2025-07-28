repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = true,

	["Low Cpu"] = true,
	["Auto Rejoin"] = true,

	["Rejoin When Update"] = true,
	["Limit Tree"] = {
		["Limit"] = 150,
		["Destroy Untill"] = 150,

		["Safe Tree"] = {
			"Moon Blossom",
			"Fossilight",
			"Sugar Apple",
			"Burning Bud",
			"Giant Pinecone",
			"Hinomai",
			"Monoblooma",
			"Serenity"
		}
	},

	Seed = {
		Buy = {
			Mode = "Custom", -- Custom , Auto
			Custom = {
				"Carrot",
				"Bamboo",
				"Mushroom",
				"Dragon Fruit",
				"Cacao",
				"Beanstalk",
				"Grape",
				"Sugar Apple",
				"Burning Bud",
				"Orange Tulip",
				"Daffodil",
				"Mango",
				"Giant Pinecone"
			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
				"Carrot",
				"Bamboo",
				"Mushroom",
				"Cacao",
				"Dragon Fruit",
				"Beanstalk",
				"Grape",
				"Sugar Apple",
				"Burning Bud",
				"Firefly Fern",
				"Boneboo",
				"Horned Dinoshroom",
				"Stonebite",
				"Paradise Petal",
				"Orange Tulip",
				"Daffodil",
				"Mango",
				"Giant Pinecone",
				"Hinomai",
				"Zen Rocks",
				"Monoblooma",
				"Serenity",
				"Taro Flower"
			},
			Lock = {
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 50_000_000,
				Minimum_Money = 10_000_000,
				Minimum_Chi = 200
			},
			["Doing"] = {
				Minimum_Money = 500_000, -- minimum money to start play this event
				First_Upgrade_Tree = 4,
				Maximum_Chi = 100,
			}
		},
		["Traveling Shop"] = {
			"Bee Egg",
		},
		Craft = {
			"Ancient Seed Pack",
			"Anti Bee Egg",
			"Primal Egg",
		},
		Shop = {
			"Zen Egg",
			"Zen Seed Pack",
			"Koi",
			"Raiju",
		},
		Start_Do_Honey = 1_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Level Up Lollipop",
			"Medium Treat",
			"Medium Toy",
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
		},
	},

	Eggs = {
		Place = {
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
		},
		Buy = {
			"Bug Egg",
			"Night Egg",
			"Bee Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Oasis Egg",
			"Uncommon Egg",
			"Rare Egg",
			"Common Egg"
		}
	},

	Pets = {
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Ostrich"] = { 1, 70 ,1},
				["Tanchozuru"] = { 2, 70 ,2},
			},
			["Limit Upgrade"] = 2,
			["Equip When Done"] = {
				["Ostrich"] = { 1, 70 ,4}, -- 1 mean equip only 1 pet , 70 mean equip only level pet lower than 70 the one on the last mean first priority will ues first if possible 
				["Tanchozuru"] = { 2, 70 ,1},
				["Kodama"] = { 1, 70 ,2},
				["Corrupted Kodama"] = { 1, 70 ,3},
			},
		},
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
			"Dragonfly",
			"Raccoon",
			"Queen Bee",
			"Disco Bee",
			"Butterfly",
			"Mimic Octopus",
			"Fennec Fox",
			"T-Rex",
			"Spinosaurus",
			"Kitsune",
			"Corrupted Kitsune"
		},
		LockPet_Weight = 7, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			"Chicken",
			"Rooster",
			"Kiwi",
			"Blood Kiwi",
			"Dog",
			"Golden Lab",
			"Bunny",
			"Black Bunny",
			"Cat",
			"Orange Tabby",
			"Deer",
			"Spotted Deer",
			"Monkey",
			"Silver Monkey",
			"Pig",
			"Turtle",
			"Cow",
			"Polar Bear",
			"Panda",
			"Sea Otter",
			"Hedgehog",
			"Mole",
			"Frog",
			"Grey Mouse",
			"Brown Mouse",
			"Red Giant Ant",
			"Bee",
			"Honey Bee",
			"Wasp",
			"Tarantula Hawk",
			"Moth",
			"Peacock",
			"Meerkat",
			"Sand Snake",
			"Axolotl",
			"Flamingo",
			"Sea Turtle",
			"Orangutan",
			"Seal",
			"Moon Cat",
			"Hedgehog",
			"Mole",
			"Frog",
			"Echo Frog",
			"Night Owl",
			"Petal Bee",
			"Bear Bee",
			"Toucan",
			"Hyacinth Macaw",
			"Pterodactyl",
			"Triceratops",
			"Raptor",
			"Stegosaurus",
			"Ankylosaurus",
			"Pachycephalosaurus",
			"Iguanodon",
			"Parasaurolophus",
			"Caterpillar",
			"Snail",
			"Giant Ant",
			"Praying Mantis",
			"Shiba Inu",
			"Tanuki",
			"Nihonzaru",
			"Kappa",
			"Capybara",
			"Maneki-neko",
			"Football",
			"Scarlet Macaw"
		}
	},

	Webhook = {
		UrlPet = getgenv().Discord,
		UrlSeed = getgenv().Discord,
		PcName = getgenv().PCAYA,

		Noti = {
			Seeds = {
			},
			SeedPack = {
			},
			Pets = {
				"Dragonfly",
				"Raccoon",
				"Queen Bee",
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Fennec Fox",
				"T-Rex",
				"Spinosaurus",
				"Kitsune",
				"Corrupted Kitsune"
			},
			Pet_Weight_Noti = true,
		}
	},
}
License = getgenv().KeyAYA
loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()
