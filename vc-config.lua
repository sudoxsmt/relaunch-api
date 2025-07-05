repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until game.Players
repeat
    task.wait()
until game.Players.LocalPlayer
task.wait(20) -- ระยะเวลารอ ถ้าเปิดหลายจอเเนะนำให้ตั้งเป็น 20 วิ
getgenv().Configuration = {
	SEEDS = {
		-- กำหนด Seed ที่ต้องการให้ Farm
		"Carrot",
		"Bamboo",
		"Mushroom",
		"Cacao",
		"Beanstalk",
		"Grape",
		"Sugar Apple",
		"Burning Bud",
	},
	BuySeed = {
		-- กำหนด Seed ที่ต้องการซื้อจาก Seed Shop
		"Carrot",
		"Bamboo",
		"Mushroom",
		"Cacao",
		"Beanstalk",
		"Grape",
		"Sugar Apple",
		"Burning Bud",
	},
	EGG = {
		-- กำหนด Egg ที่ต้องการให้ Farm
		"Legendary Egg",
		"Mythical Egg",
		"Bug Egg",
		"Night Egg",
		"Bee Egg",
		"Anti Bee Egg",
		"Paradise Egg",
		"Oasis Egg",
		"Rare Summer Egg",
		"Uncommon Egg",
		"Dinosaur Egg",
	},
	BUYEGG = {
		-- กำหนด Egg ที่ต้องการซื้อจาก Egg Shop
		"Bug Egg",
		"Night Egg",
		"Bee Egg",
		"Anti Bee Egg",
		"Paradise Egg",
		"Oasis Egg",
		"Rare Summer Egg",
		"Uncommon Egg",
	},
	PET_NAME = {
		-- กำหนกดชื่อ pet ที่ต้องการนำใส่ฟาร๋ม
		"Chicken",
		"Rooster",
		"Kiwi",
		"Blood Kiwi",
		"Capybara",
		"Toucan",
		"Ostrich",
	},
	PETTOUPGRADE = {
		-- กำหนดชื่อ Pet ที่ต้องการนำไปใช้ในการ Upgrade
		"Rooster",
		"Chicken",
		"Kiwi",
		"Ostrich",
		"Blood Kiwi",
	},
	SELL_PET = {
		-- กำหนดชื่อ pet ที่ต้องการขาย
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
		"Ostrich",
		"Peacock",
		"Capybara",
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
	},
	BUY_GEAR = {
		-- กำหนด Item ที่ต้องการซื้อจาก Gear Shop
		"Godly Sprinkler",
		"Master Sprinkler",
	},
	PetDino = {
		-- กำหนดชื่อ Pet ที่ต้องการใช้ในการ Evo
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
		"Ostrich",
		"Peacock",
		"Capybara",
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
	},
	Craft_Event = {
		-- กำหนดชื่อที่ต้องการจะคราฟ และจำนวน
		{ Name = "Honeysuckle", Amount = 5 },
		{ Name = "Ancient Seed Pack", Amount = 20 },
		{ Name = "Mutation Spray Amber", Amount = 5 },
	},
	EVENTSHOP = {
		-- กำหนดชื่อ Event ที่ต้องการทำ
		{ Name = "Summer Seed Pack", Amount = 2 },
		{ Name = "Crafters Seed Pack", Amount = 5 },
		{ Name = "Oasis Egg", Amount = 2 },
	},
	SELL_PET_MIN_COUNT = 1, -- จำนวน Pet ที่จะขายเมื่อมีมากกว่าหรือเท่ากับจำนวนนี้
	SELL_PET_KEEP_COUNT = 1, -- จำนวน Pet ที่จะเก็บไว้เมื่อขาย Pet
	SELL_PET_KEEP_WEIGHT = 8, -- จำนวน Pet ที่จะเก็บไว้เมื่อขาย Pet ตามน้ำหนัก
	OpenEgg = true, -- true/false เปิด Auto Open Egg
	PlaceEgg = true, -- true/false เปิด Auto Place Egg
	BuyEgg = true, -- true/false เปิด Auto Buy Egg
	UpgradePetSlot = true, -- true/false เปิด Auto Upgrade Pet Slot
	UpgradeEggSlot = true, -- true/false เปิด Auto Upgrade Egg Slot
	UpgradePetInventory = false, -- true/false เปิด Auto Upgrade Pet Inventory
	AUTOFEEDPETS = true, -- true/false เปิด Auto Feed Pet
	AutoEvent = true, -- true/false เปิด ส่ง Event
	AutoFavEvent = true, -- true/false เปิด Auto Fav Event
	OPEN_SEEDPACK = true, -- true/false เปิด Night Seed Pack
	MoneyEnough = 5000000, -- ต้องมีเงินมากกว่าเท่าไหร่ถึงจะซื้อ Egg and Item
	Fpsboost = true, -- true/false เปิด Fpsboost
	MaxCropInFarm = 250,
	OpenFlowerSeedPack = 1,
	CollectBatch = 10, -- จำนวนการเก็บของในฟาร์มต่อครั้ง
	WEBHOOK_URL = getgenv().Discord, -- Webhook ที่จะส่งไปที่ Discord
	NOTIFY_PETS = {
		"Dragonfly",
		"Raccoon",
		"Queen Bee",
		"Disco Bee",
		"Butterfly",
		"Mimic Octopus",
		"Fennec Fox",
		"T-Rex",
	},
	COLLECT_MINUTES = {
		-- กำหนดเวลาในการเก็บของในฟาร์ม ตามจำนวนเงินที่มี
		{ Money = 1000000, Minutes = 2 },
		{ Money = 0, Minutes = 0 },
	},
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a30dea03b26012f29a97cd81cda4083a.lua"))()
