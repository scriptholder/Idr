loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptholder/Idr/refs/heads/main/Loader.lua"))()
local script_version = {
    -- version
    version = "1.8",
    alpha = true,
    -- event 
    Night = false,
    Bee = false,
}
if script_version.alpha == true then
    script_version.alpha = "Alpha version"
else 
    script_version.alpha = "Release version"
end
print("MADE BY DEAD\nScript Version " .. script_version.version .. " - " .. script_version.alpha)
local vful = script_version.version .." - ".. script_version.alpha
getgenv().vers = vful




repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui") 

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InsertService = game:GetService("InsertService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local runService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Leaderstats = LocalPlayer.leaderstats
local Backpack = LocalPlayer.Backpack
local PlayerGui = LocalPlayer.PlayerGui

local ShecklesCount = Leaderstats.Sheckles
local GameInfo = MarketplaceService:GetProductInfo(game.PlaceId)

local GameEvents = ReplicatedStorage.GameEvents
local Farms = workspace.Farm

local buySeed = ReplicatedStorage.GameEvents.BuySeedStock
local buyGear = ReplicatedStorage.GameEvents.BuyGearStock
local Plant = ReplicatedStorage.GameEvents.Plant_RE
local BuyPet = ReplicatedStorage.GameEvents.BuyPetEgg
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local scrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.ScrollingFrame
local feedsc = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ActivePetService")
local cs = game:GetService("CollectionService")
local cam = workspace.CurrentCamera
local starterGui = game:GetService("StarterGui")

-- event local

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = character:WaitForChild("HumanoidRootPart")
end)

local Fluent = loadstring(Game:HttpGet("https://raw.githubusercontent.com/scriptholder/Idr/refs/heads/main/alpha.lua"))()
Button_Icon = "rbxassetid://97949487588216"
local Window = Fluent:loadstring(game:HttpGet("https://raw.githubusercontent.com/WassimALG23/Noshi/refs/heads/main/Loader"))()
local script_version = {
    -- version
    version = "1.8",
    alpha = true,
    -- event 
    Night = false,
    Bee = false,
}
if script_version.alpha == true then
    script_version.alpha = "Alpha version"
else 
    script_version.alpha = "Release version"
end
print("MADE BY DEAD\nScript Version " .. script_version.version .. " - " .. script_version.alpha)
local vful = script_version.version .." - ".. script_version.alpha
getgenv().vers = vful




repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui") 

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local InsertService = game:GetService("InsertService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local runService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Leaderstats = LocalPlayer.leaderstats
local Backpack = LocalPlayer.Backpack
local PlayerGui = LocalPlayer.PlayerGui

local ShecklesCount = Leaderstats.Sheckles
local GameInfo = MarketplaceService:GetProductInfo(game.PlaceId)

local GameEvents = ReplicatedStorage.GameEvents
local Farms = workspace.Farm

local buySeed = ReplicatedStorage.GameEvents.BuySeedStock
local buyGear = ReplicatedStorage.GameEvents.BuyGearStock
local Plant = ReplicatedStorage.GameEvents.Plant_RE
local BuyPet = ReplicatedStorage.GameEvents.BuyPetEgg
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local scrollingFrame = game:GetService("Players").LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.ScrollingFrame
local feedsc = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ActivePetService")
local cs = game:GetService("CollectionService")
local cam = workspace.CurrentCamera
local starterGui = game:GetService("StarterGui")

-- event local

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = character:WaitForChild("HumanoidRootPart")
end)

local Fluent = loadstring(Game:HttpGet("https://raw.githubusercontent.com/WassimALG23/Noshi/refs/heads/main/alpha.lua"))()
Button_Icon = "rbxassetid://97949487588216"
local Window = Fluent:CreateWindow({
CreateWindow({
    Title = "Grow a Garden |",
    SubTitle = "Made by Dead | Version: ".. vful,
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = "Dark",
    Center = true,
    IsDraggable = true,
    Keybind = Enum.KeyCode.LeftControl
})

-- Local Tabs --


local info = Window:AddTab({
    Title = "info",
    Icon = "bookmark"
})

local main = Window:AddTab({
    Title = "main",
    Icon = "text"	
	})
local shop = Window:AddTab({
    Title = "shop",
    Icon = "shopping-cart"
})

local plant = Window:AddTab({
    Title = "plant",
    Icon = "leaf"
})


local pet = Window:AddTab({
        Title = "pet",
        Icon = "bone"
    })

local event = Window:AddTab({
    Title = "Events",
    Icon = "calendar"
})

local playertab = Window:AddTab({
        Title = "Player",
        Icon = "user"
    })

local vuln = Window:AddTab({
        Title = "misc",
        Icon = "list"
    })


local config = Window:AddTab({
    Title = "config",
    Icon = "settings"
})


local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("GrowAGarden")
InterfaceManager:BuildInterfaceSection(config)

-- Local Variáveis --

local petNames = {
    "Bear Bee", "Bee", "Black Bunny", "Blood Hedgehog", "Blood Kiwi", "Blood Owl",
    "Brown Mouse", "Bunny", "Butterfly", "Capybara", "Cat", "Caterpillar", "Chicken",
    "Chicken Zombie", "Cooked Owl", "Cow", "Crab", "Deer", "Disco Bee", "Dog", "Doge",
    "Dragonfly", "Echo Frog", "Firefly", "Flamingo", "Frog", "Giant Ant", "Golden Bee",
    "Golden Lab", "Grey Mouse", "Hedgehog", "Honey Bee", "Kiwi", "Mimic Octopus",
    "Mole", "Monkey", "Moon Cat", "Moth", "Night Owl", "Orange Tabby", "Orangutan",
    "Ostrich", "Owl", "Pack Bee", "Panda", "Peacock", "Petal Bee", "Pig", "Polar Bear",
    "Praying Mantis", "Queen Bee", "Raccoon", "Red Dragon", "Red Fox",
    "Red Giant Ant", "Rooster", "Scarlet Macaw", "Sea Otter", "Sea Turtle", "Seagull",
    "Seal", "Silver Monkey", "Snail", "Spotted Deer", "Squirrel", "Starfish",
    "Tarantula Hawk", "Toucan", "Turtle", "Wasp"
}
--[[ old
local byallseed = {"Carrot", "Strawberry", "Blueberry", "Orange Tulip", "Tomato", "Corn", "Daffodil", "Watermelon", "Pumpkin", "Apple", "Bamboo", "Coconut", "Cactus", "Dragon Fruit", "Mango", "Grape", "Mushroom", "Pepper", "Cacao", "Beanstalk", "Ember Lily", "Sugar Apple"}
]]

local byallseed = {
    "Carrot", "Strawberry", "Blueberry", "Tomato", "Cauliflower", "Watermelon", "Green Apple",
    "Avocado", "Banana", "Pineapple", "Kiwi", "Bell Pepper", "Prickly Pear", "Loquat",
    "Feijoa", "Sugar Apple"
}

local bygear = {"Watering Can", "Trowel", "Recall Wrench", "Basic Sprinkler", "Advanced Sprinkler", "Godly Sprinkler", "Lightning Rod", "Tanning Mirror", "Master Sprinkler", "Cleaning Spray", "Favorite Tool", "Harvest Tool", "Friendship Pot"}


local bsa = false
local bsg = false
local bsp = false 

local selectedSeeds = {}
local selectedGears = {}
local buypets = {1, 2, 3}

local step = 0.001
local x = Vector3.new(34.14344024658203, 0.13552513718605042, -112.62083435058594)
local y = Vector3.new(31.82763671875, 0.13552513718605042, -112.6816635131836)

local Pos = hrp.Position
local pos = tostring(Pos)

local walkSpeed = humanoid.WalkSpeed

local PetsId = {}

-- Local functions --

local function byallseedfc()
    for i = 1, 25 do
        for _, seed in ipairs(selectedSeeds) do
            buySeed:FireServer(seed)
            task.wait()
        end
    end
end
local function byallgearfc()
    for i = 1, 25 do
        for _, gear in ipairs(selectedGears) do
            buyGear:FireServer(gear)
            task.wait()
        end
    end
end

function buypetegg()
    local eggIDs = {1, 2, 3}
    for _, id in ipairs(eggIDs) do
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyPetEgg"):FireServer(id)
        task.wait()
    end
end

local function svp()
    Pos = hrp.Position
    pos = tostring(Pos)
end

local function tpt(v3)
    if typeof(v3) == "Vector3" then
        hrp.CFrame = CFrame.new(v3)
    elseif typeof(v3) == "string" then
        local x, y, z = string.match(v3, "Vector3%s*%(([^,]+),%s*([^,]+),%s*([^)]+)%)")
        if x and y and z then
            hrp.CFrame = CFrame.new(tonumber(x), tonumber(y), tonumber(z))
        end
    end
end

local function sf()
    ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"):FireServer()
end

local function sm()
    ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("NightQuestRemoteEvent"):FireServer("SubmitAllPlants")
end

local function blah()
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Item"):FireServer()
end

local function bbf()
    svp()
    hrp.CFrame = CFrame.new(86.57965850830078, 2.999999761581421, 0.4267919063568115)
    task.wait(0.25)
    blah()
    task.wait(0.2)
    tpt(Pos)
end

local function sellpet()
game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer()
end



local function feedpet(Value)
    autoFeed = Value
    if Value then
        spawn(function()
            while autoFeed do
                if pfeed then
                    feedsc:FireServer("Feed", pfeed)
                    print("pet:", pfeed)
                else
                    print("no pets are selected")
                end
                wait(0.3)
            end
        end)
    end
end

local function tsf()
    svp()
    hrp.CFrame = CFrame.new(86.57965850830078, 2.999999761581421, 0.4267919063568115)
    task.wait(0.25)
    sf()
    task.wait(0.2)
    tpt(Pos)
end

local function tsm()
    svp()
    hrp.CFrame = CFrame.new(-101.0422592163086, 4.400012493133545, -10.985257148742676)
    task.wait(0.25)
    sm()
    task.wait(0.2)
    tpt(Pos)
end



		














local section = shop:AddSection("Seeds")

shop:AddToggle("", {
    Title = "Buy seeds",
    Description = "Buy seed",
    Default = false,
    Callback = function(Value)
        bsa = Value
    end
})

local dropdownSeed = shop:AddDropdown("DropdownSeed", {
    Title = "select the seeds u want to buy\n",
    Description = "select seeds\n",
    Values = byallseed,
    Multi = true,
    Default = {},
})

dropdownSeed:OnChanged(function(Value)
    selectedSeeds = {}
    for v, state in pairs(Value) do
        if state then
            table.insert(selectedSeeds, v)
        end
    end
end)

local section = shop:AddSection("Gears")

shop:AddToggle("", {
    Title = "Buy gear",
    Description = "Buy shop gear",
    Default = false,
    Callback = function(Value)
        bsg = Value
    end
})

local dropdownGear = shop:AddDropdown("DropdownGear", {
    Title = "Select gear to buy\n",
    Description = "select gear to buy",
    Values = bygear,
    Multi = true,
    Default = {},
})

dropdownGear:OnChanged(function(Value)
    selectedGears = {}
    for v, state in pairs(Value) do
        if state then
            table.insert(selectedGears, v)
        end
    end
end)

local section = shop:AddSection("Pets buy")

shop:AddButton({
        Title = "buy all eggs",
        Description = "buy all shop eggs",
        Callback = function()
            buypetegg()
        end
    })

shop:AddToggle("", {
        Title = "buy all eggs",
        Description = "auto se explica",
        Default = false,
        Callback = function(value)
         bsp = value
        end
    })

-- 

plant:AddButton({
    Title = "Set Plant position",
    Description = "Click to set both X and Y to current position",
    Callback = function()
        local currentPos = hrp.Position
        local fixedY = 0.13552513718605042

        x = Vector3.new(currentPos.X, fixedY, currentPos.Z)
        y = Vector3.new(currentPos.X, fixedY, currentPos.Z)

        print("Start (X) and End (Y) positions set to:", x)
    end
})

local Slider = plant:AddInput("StepInput", {
    Title = "Step Between Seeds",
    Description = "Enter the distance between the seeds (e.g., 0.005)",
    Placeholder = "1",
    Default = "0.001",
    Numeric = true,
    Callback = function(input)
        local num = tonumber(input)
        if num then
            step = num
            print("Step set to:", step)
        else
            warn("Invalid number entered for step.")
        end
    end
})

plant:AddButton({
    Title = "click to plant",
    Description = "have the seed in your hand",
    Callback = function()
        local player = game.Players.LocalPlayer
        local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
        if not tool then return end

        local baseName = tool.Name:match("^(.-)%s+[Ss]eed") or tool.Name
        baseName = baseName:gsub("%s+$", "")

        local direction = (y - x).Unit
        local distance = (y - x).Magnitude
        for i = 0, distance, step do
            local pos = x + direction * i
            Plant:FireServer(pos, baseName)
            task.wait()
        end
    end
})
--
local sellsection = main:AddSection("auto sell")
main:AddButton({
    Title = "Sell all",
    Description = "sell all fruits in ur inventory",
    Callback = function()
        tsf()       
    end
})
main:AddButton({
    Title = "sell in hand",
    Description= "sells the fruit ur holding",
    Callback = function()
bbf()
end
})

local sellpets = main:AddSection("auto sell pets")







sellpets:AddButton({
    Title = "Sell Pet",
    Description = "Sells the pet you're holding",
    Callback = function()
        sellpet()
    end
})



	
--

-- WalkSpeed Input
playertab:AddInput("WalkSpeedInput", {
    Title = "WalkSpeed",
    Description = "Enter your desired walk speed",
    Placeholder = "Example: 100",
    Default = "20",
    Numeric = true,
    Callback = function(input)
        local value = tonumber(input)
        if value and game.Players.LocalPlayer.Character then
            local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = value
                print("✔️ WalkSpeed set to:", value)
            end
        else
            warn("❌ Please enter a valid number")
        end
    end
})

-- Infinite Jump Toggle
playertab:AddToggle("InfiniteJumpToggle", {
    Title = "Infinite Jump",
    Description = "Allows you to jump infinitely",
    Default = false,
    Callback = function(state)
        getgenv().InfiniteJumpEnabled = state
        local Player = game:GetService("Players").LocalPlayer
        local UIS = game:GetService("UserInputService")

        if not getgenv().InfiniteJumpConnection then
            getgenv().InfiniteJumpConnection = UIS.JumpRequest:Connect(function()
                if getgenv().InfiniteJumpEnabled and Player.Character and Player.Character:FindFirstChild("Humanoid") then
                    Player.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                end
            end)
        end
    end
})

-- No Clip Toggle
playertab:AddToggle("NoClipToggle", {
    Title = "No Clip",
    Description = "Walk through walls",
    Default = false,
    Callback = function(state)
        getgenv().NoClipEnabled = state
        local RunService = game:GetService("RunService")
        local Player = game:GetService("Players").LocalPlayer

        if not getgenv().NoClipConnection then
            getgenv().NoClipConnection = RunService.Stepped:Connect(function()
                if getgenv().NoClipEnabled and Player.Character and Player.Character:FindFirstChild("Humanoid") then
                    for _, v in pairs(Player.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide == true then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        end
    end
})

-- Optional: Reset logic when character respawns
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(1)
    if getgenv().InfiniteJumpEnabled then
        -- No need to reconnect, it auto-stays
    end
    if getgenv().NoClipEnabled then
        -- Will continue automatically
    end
end)

--

function prefsh()
    PetsId = {}
    for _, child in ipairs(scrollingFrame:GetChildren()) do
        if child.Name ~= "PetTemplate" and child:FindFirstChild("PetStats") then
            table.insert(PetsId, child.Name)
        end
    end
    print("Updated pets:")
    for _, id in ipairs(PetsId) do
        print(id)
    end
    return PetsId
end

local pDropdown = pet:AddDropdown("Dropdown", {
    Title = "choose the pet to auto feed\n",
    Description = "auto feed pets\n",
    Values = {},
    Multi = false,
    Default = nil,
})

local function updatePetDropdown()
    local pets = prefsh()
    pDropdown:SetValues(pets)
    if #pets > 0 then
        pDropdown:SetValue(pets[1])
    end
end

pet:AddButton({
    Title = "update pets",
    Description = "update pets",
    Callback = function()
        updatePetDropdown()
    end
})

local pfeed

pDropdown:OnChanged(function(Value)
    pfeed = Value
    print("select pet:", pfeed)
end)

updatePetDropdown()


local autoFeed = false

pet:AddToggle("AutoFeedToggle", {
    Title = "auto feed\n",
    Description = "feeds the pet with the fruit in ur hand",
    Default = false,
    Callback = function(Value)
        autoFeed = Value
        if Value then
            spawn(function()
                while autoFeed do
                    if pfeed then
                        feedsc:FireServer("Feed", pfeed)
                        print("pet:", pfeed)
                    else
                        print("no pets are selected")
                    end
                    wait(0.3) 
                end
            end)
        end
    end
})

pet:AddButton({
    Title = "feed selected pet",
    Description = "takes the food in ur hand",
    Callback = function()
        if pfeed then
            feedsc:FireServer("Feed", pfeed)
            print("pet:", pfeed)
        else
            print("select a pet first")
        end
    end
})
------------------

local eggEspEnabled = false
local autoHatchEnabled = false
local labelCache = {}
local trackedEggs = {}
local hatchedEggs = {}
local connections = {}

local petSection = pet:AddSection("Egg ESP & Auto Hatch")


-- Safely get upvalues and hook function
local fnHatch = nil
local petList = {}
local eggList = {}

pcall(function()
	local conn = getconnections(rs.GameEvents.PetEggService.OnClientEvent)[1]
	if conn and typeof(conn.Function) == "function" then
		fnHatch = getupvalue(getupvalue(conn.Function, 1), 2)
		eggList = getupvalue(fnHatch, 1)
		petList = getupvalue(fnHatch, 2)
	end
end)

local function findEggById(uuid)
	for _, egg in pairs(eggList) do
		if egg:GetAttribute("OBJECT_UUID") == uuid then
			return egg
		end
	end
end

local function notify(title, text)
	pcall(function()
		starterGui:SetCore("SendNotification", {
			Title = title,
			Text = text,
			Duration = 5
		})
	end)
end

local function refreshLabel(uuid, pet)
	local model = findEggById(uuid)
	if model and labelCache[uuid] then
		local eggType = model:GetAttribute("EggName")
		labelCache[uuid].Text = `{eggType} | {pet}`
	end

	if autoHatchEnabled and model and not hatchedEggs[uuid] then
		hatchedEggs[uuid] = true
		task.spawn(function()
			rs.GameEvents.PetEggService:FireServer("HatchPet", model)
			notify("Auto Hatch", `🥚 Hatched: {pet}`)
		end)
	end
end

local function updateLabels()
	for uuid, model in pairs(trackedEggs) do
		local lbl = labelCache[uuid]
		if not model or not model:IsDescendantOf(workspace) then
			if lbl then lbl.Visible = false end
			trackedEggs[uuid] = nil
			continue
		end

		if lbl and eggEspEnabled then
			local pos, visible = cam:WorldToViewportPoint(model:GetPivot().Position)
			lbl.Position = Vector2.new(pos.X, pos.Y)
			lbl.Visible = visible
		elseif lbl then
			lbl.Visible = false
		end

		-- Auto hatch if ESP is off
		local pet = petList[uuid]
		if autoHatchEnabled and pet and not hatchedEggs[uuid] then
			hatchedEggs[uuid] = true
			task.spawn(function()
				rs.GameEvents.PetEggService:FireServer("HatchPet", model)
				notify("Auto Hatch", `🥚 Hatched: {pet}`)
			end)
		end
	end
end

local function createLabel(model)
	if model:GetAttribute("OWNER") ~= lp.Name then return end
	local uuid = model:GetAttribute("OBJECT_UUID")
	if not uuid then return end

	if not trackedEggs[uuid] then
		trackedEggs[uuid] = model
	end

	if eggEspEnabled and not labelCache[uuid] then
		local eggType = model:GetAttribute("EggName")
		local pet = petList[uuid]

		local txt = Drawing.new("Text")
		txt.Text = `{eggType} | {pet or "not ready yet"}`
		txt.Size = 18
		txt.Color = Color3.new(1, 1, 1)
		txt.Outline = true
		txt.OutlineColor = Color3.new(0, 0, 0)
		txt.Center = true
		txt.Visible = false

		labelCache[uuid] = txt
	end
end

local function removeLabel(model)
	local uuid = model:GetAttribute("OBJECT_UUID")
	if uuid then
		if labelCache[uuid] then
			labelCache[uuid]:Remove()
			labelCache[uuid] = nil
		end
		trackedEggs[uuid] = nil
	end
end

-- ✅ Safe hook
pcall(function()
	local conn = getconnections(rs.GameEvents.EggReadyToHatch_RE.OnClientEvent)[1]
	if conn and typeof(conn.Function) == "function" then
		local original = conn.Function
		hookfunction(original, newcclosure(function(uuid, pet)
			refreshLabel(uuid, pet)
			return original(uuid, pet)
		end))
	end
end)

-- ✅ ESP Toggle
petSection:AddToggle("eggEspToggle", {
	Title = "Egg ESP",
	Default = false,
	Callback = function(state)
		eggEspEnabled = state

		if not state then
			for _, lbl in pairs(labelCache) do if lbl.Remove then lbl:Remove() end end
			labelCache = {}
		else
			for _, inst in cs:GetTagged("PetEggServer") do
				task.spawn(createLabel, inst)
			end
		end
	end
})

-- ✅ Auto Hatch Toggle
petSection:AddToggle("autoHatchToggle", {
	Title = "Auto Hatch Eggs",
	Default = false,
	Callback = function(state)
		autoHatchEnabled = state

		if state then
			for _, inst in cs:GetTagged("PetEggServer") do
				task.spawn(createLabel, inst)
			end
		end
	end
})

-- ⏳ Always track new eggs
table.insert(connections, cs:GetInstanceAddedSignal("PetEggServer"):Connect(createLabel))
table.insert(connections, cs:GetInstanceRemovedSignal("PetEggServer"):Connect(removeLabel))
table.insert(connections, runService.PreRender:Connect(updateLabels))

--


        













--

local uisection = vuln:AddSection("all ui")


uisection:AddButton({
    Title = "Cosmetic Shop UI",
    Description = "opens cosmetics ui",
    Callback = function()
        local ui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("CosmeticShop_UI")
        if ui then
            ui.Enabled = not ui.Enabled
            print("Cosmetic Shop UI:", ui.Enabled and "Ativada" or "Desativada")
        end
    end
})


uisection:AddButton({
    Title = "Gear Shop UI",
    Description = "opens gear shop ui",
    Callback = function()
        local ui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Gear_Shop")
        if ui then
            ui.Enabled = not ui.Enabled
            print("Gear Shop UI:", ui.Enabled and "Ativada" or "Desativada")
        end
    end
})


uisection:AddButton({
    Title = "Seed Shop UI",
    Description = "opens seed shop ui",
    Callback = function()
        local ui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Seed_Shop")
        if ui then
            ui.Enabled = not ui.Enabled
            print("Seed Shop UI:", ui.Enabled and "Ativada" or "Desativada")
        end
    end
})

uisection:AddButton({
    Title = "Daily quest UI",
    Description = "opens daily quest ui",
    Callback = function()
        local ui = game:GetService("Players").LocalPlayer.PlayerGui.DailyQuests_UI
        if ui then
            ui.Enabled = not ui.Enabled
            print("Daily Quest UI:", ui.Enabled and "Ativada" or "Desativada")
        end
    end
})
local extrasection = vuln:AddSection("server version")

local versgame = (game:GetService("Players").LocalPlayer.PlayerGui.Version_UI.Version.Text):gsub("^v", "")

function svvererr(v)
    local newv = tonumber(v)
    local numvers = tonumber(versgame)
    if numvers and newv and numvers > newv then
        Fluent:Notify({
            Title = "wrong server version",
            Content = "current server version: " .. versgame,
            SubContent = "version needed: " .. newv .. " or less!",
            Duration = 5
        })
    end
end

	vuln:AddParagraph({
        Title = "server version: ", Content = versgame
    })

        

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    local VirtualUser = game:GetService("VirtualUser")
    VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)
