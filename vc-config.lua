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
	BuySeed = {
		-- กำหนด Seed ที่ต้องการซื้อจาก Seed Shop
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
		"Dinosaur Egg",
		"Primal Egg",
		"Zen Egg"
	},
	BUYEGG = {
		-- กำหนด Egg ที่ต้องการซื้อจาก Egg Shop
		"Bug Egg",
		"Night Egg",
		"Bee Egg",
		"Anti Bee Egg",
		"Paradise Egg",
		"Oasis Egg",
		"Uncommon Egg",
		"Rare Egg",
		"Common Egg"
	},
	PET_NAME = {
		-- กำหนกดชื่อ pet ที่ต้องการนำใส่ฟาร๋ม
		"Chicken",
		"Rooster",
		"Kiwi",
		"Blood Kiwi",
		"Ostrich",
		"Tanchozuru",
		"Koi"
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
		"Kappa"
	},
	BUY_GEAR = {
		-- กำหนด Item ที่ต้องการซื้อจาก Gear Shop
		"Godly Sprinkler",
		"Master Sprinkler",
		"Medium Toy",
		"Medium Treat",
		"Levelup Lollipop",
	},
	Craft_Event = {
		-- กำหนดชื่อที่ต้องการจะคราฟ และจำนวน
		{ Name = "Anti Bee Egg", Amount = 2 },
	},
	EVENTSHOP = {
		-- กำหนดชื่อ Event ที่ต้องการทำ
		-- { Name = "Zen Seed Pack", Amount = 2 },
		{ Name = "Zen Egg", Amount = 2 },
		{ Name = "Koi", Amount = 2 },
	},
	SELL_PET_MIN_COUNT = 1, -- จำนวน Pet ที่จะขายเมื่อมีมากกว่าหรือเท่ากับจำนวนนี้
	SELL_PET_KEEP_COUNT = 1, -- จำนวน Pet ที่จะเก็บไว้เมื่อขาย Pet
	SELL_PET_KEEP_WEIGHT = 8, -- จำนวน Pet ที่จะเก็บไว้เมื่อขาย Pet ตามน้ำหนัก
	
	OpenEgg = true, -- true/false เปิด Auto Open Egg
	PlaceEgg = true, -- true/false เปิด Auto Place Egg
	BuyEgg = true, -- true/false เปิด Auto Buy Egg

	MaxCropInFarm = 150,
	
	UpgradePetSlot = false, -- true/false เปิด Auto Upgrade Pet Slot
	UpgradeEggSlot = true, -- true/false เปิด Auto Upgrade Egg Slot
	UpgradePetInventory = false, -- true/false เปิด Auto Upgrade Pet Inventory

	TakeEventPlant = true, -- true/false เปิด Take Event Plant
	
	AUTOFEEDPETS = true, -- true/false เปิด Auto Feed Pet
	AutoFavEvent = true, -- true/false เปิด Auto Fav Event
	OPEN_SEEDPACK = true, -- true/false เปิด Night Seed Pack

	OpenFlowerSeedPack = 1,
	MoneyEnough = 200000, -- ต้องมีเงินมากกว่าเท่าไหร่ถึงจะซื้อ Egg and Item
	Fpsboost = true, -- true/false เปิด Fpsboost
	WEBHOOK_URL = getgenv().Discord, -- Webhook ที่จะส่งไปที่ Discord
	NOTIFY_PETWEIGHT = 7, -- น้ำหนักของ Pet
	NOTIFY_PETS = {
		"Dragonfly",
		"Raccoon",
		"Queen Bee",
		"Disco Bee",
		"Butterfly",
		"Mimic Octopus",
		"Fennec Fox",
		"T-Rex",
		"Spinosaurus",
		"Kitsune"
	},
	CollectBatch = 10, -- จำนวนการเก็บของในฟาร์มต่อครั้ง
	COLLECT_MINUTES = {
		-- กำหนดเวลาในการเก็บของในฟาร์ม ตามจำนวนเงินที่มี
		{ Money = 5000000, Minutes = 2 },
		{ Money = 0, Minutes = 0 },
	},
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a30dea03b26012f29a97cd81cda4083a.lua"))()
