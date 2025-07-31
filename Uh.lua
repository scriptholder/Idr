
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "FarmUI"
ScreenGui.ResetOnSpawn = false

-- 🌑 Dark background frame
local Frame = Instance.new("Frame", ScreenGui)
Frame.Position = UDim2.new(0, 20, 0.5, -100)
Frame.Size = UDim2.new(0, 180, 0, 250)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.1

local UIListLayout = Instance.new("UIListLayout", Frame)
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local function createButton(text, callback)
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 160, 0, 30)
button.Text = text
button.Font = Enum.Font.Gotham
button.TextSize = 14
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
button.BorderSizePixel = 0
button.AutoButtonColor = true
button.Parent = Frame
button.MouseButton1Click:Connect(callback)
return button
end

-- 🍎 Auto Submit Fruits
local submitting = false
createButton("Auto Submit", function()
submitting = not submitting
end)

-- 🥬 Auto Collect Fruits
local collecting = false
createButton("Auto Collect", function()
collecting = not collecting
-- Teleport to auto-collect zone
if collecting then
local tp = workspace.Farm:GetChildren()[4].Important.Plants_Physical:GetChildren()[156]:GetChildren()[10]
if tp then
player.Character.HumanoidRootPart.CFrame = tp.CFrame + Vector3.new(0, 3, 0)
end
end
end)

-- 💰 Sell All Inventory
createButton("Sell All", function()
local sellPos = workspace.Tutorial_Points.Tutorial_Point_2
if sellPos then
player.Character.HumanoidRootPart.CFrame = sellPos.CFrame + Vector3.new(0, 4, 0)
task.wait(1)
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"):FireServer()
end
end)

-- 🧘 Give All Tranquil
createButton("Give All Tranquil", function()
local args = { "SubmitAllPlants" }
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ZenQuestRemoteEvent"):FireServer(unpack(args))
end)

-- 🌱 Find Player's Farm
local username = player.Name
local function findMyFarm()
for _, farm in ipairs(workspace:WaitForChild("Farm"):GetChildren()) do
local data = farm:FindFirstChild("Important") and farm.Important:FindFirstChild("Data")
if data and data:FindFirstChild("Owner") and data.Owner.Value == username then
return farm
end
end
end

-- 📦 Auto Collect Fruits

task.spawn(function()
local teleported = false
while true do
if collecting then
if not teleported then
teleported = true
player.Character.HumanoidRootPart.CFrame = CFrame.new(60.815765380859375, 0.13552704453468323, -97.75607299804688)
task.wait(1)
end

local farm = findMyFarm()  
		if farm then  
			local plantFolder = farm.Important:FindFirstChild("Plants_Physical")  
			if plantFolder then  
				for _, plant in ipairs(plantFolder:GetChildren()) do  
					local name = plant.Name:lower()  
					if name:find("zenflare") or name:find("serenity") or name:find("lucky bamboo") then  
						local fruits = plant:FindFirstChild("Fruits")  
						if fruits then  
							for _, child in ipairs(fruits:GetChildren()) do  
								local part  
								if name:find("zenflare") then  
									part = child:FindFirstChild("2")  
								elseif name:find("serenity") then  
									part = child:FindFirstChild("PrimaryPart") or child:FindFirstChild("PRIMARYPART")  
								end  
								local prompt = part and part:FindFirstChildWhichIsA("ProximityPrompt", true)  
								if prompt then  
									fireproximityprompt(prompt)  
									task.wait(0.05)  
								end  
							end  
						end  
					end  
				end  
			end  
		end  
	else  
		teleported = false -- reset flag when collecting is off  
	end  
	task.wait(0.2)  
end

end)

-- 🔁 Alternating Submit Logic
local mutationOrder = {"corrupt", "tranquil"}
local nextMutation = 1
local excludedPets = {
["T-Rex"] = true,
["Corrupt Staff"] = true,
["Corrupted Kitsune"] = true,
["Corrupted Zen Crate"] = true
}

local function getSubmitPosition()
local node = workspace.Interaction.UpdateItems["Corrupted Zen"].MiddleTree.Platform:GetChildren()[30]
if node then
return node.Position
end
end

-- 🌪 Full Auto Cycle
-- 🔄 Full Automation Cycle
local cycling = false
createButton("Full Cycle", function()
cycling = not cycling
end)

task.spawn(function()
while true do
if cycling then
-- Step 1: Submit All Tranquil
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ZenQuestRemoteEvent"):FireServer("SubmitAllPlants")
task.wait(2)

-- Step 2: Sell All  
		local sellPos = workspace.Tutorial_Points.Tutorial_Point_2  
		if sellPos then  
			player.Character.HumanoidRootPart.CFrame = sellPos.CFrame + Vector3.new(0, 4, 0)  
			task.wait(1)  
			ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"):FireServer()  
			task.wait(2)  
		end  

		-- Step 3: Sprinklers  
		player.Character.HumanoidRootPart.CFrame = CFrame.new(69.429, 0.221, -102.907)  
		local backpack = player:FindFirstChild("Backpack")  
		if backpack then  
			local function equipSprinkler(name)  
				for _, item in ipairs(backpack:GetChildren()) do  
					if item:IsA("Tool") and item.Name:match("^" .. name) then  
						for _, tool in ipairs(player.Character:GetChildren()) do  
							if tool:IsA("Tool") then  
								tool.Parent = backpack  
								task.wait(0.2)  
							end  
						end  
						item.Parent = player.Character  
						task.wait(0.3)  
						ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SprinklerService"):FireServer(  
							"Create",  
							CFrame.new(69.429, 0.221, -102.907,  
								0.464984, 0.619790, -0.632179,  
								-1.49e-08, 0.714069, 0.700075,  
								0.885319, -0.325524, 0.332031)  
						)  
						task.wait(0.5)  
					end  
				end  
			end  

			equipSprinkler("Basic Sprinkler")  
			equipSprinkler("Advanced Sprinkler")  
			task.wait(2)  
		end  

		-- Step 4: Watering Can (15s)  
		for _, tool in ipairs(player.Character:GetChildren()) do  
			if tool:IsA("Tool") then  
				tool.Parent = backpack  
				task.wait(0.1)  
			end  
		end  
		for _, item in ipairs(backpack:GetChildren()) do  
			if item:IsA("Tool") and item.Name:match("^Watering Can") then  
				item.Parent = player.Character  
				task.wait(0.3)  
				break  
			end  
		end  

		local waterPos = Vector3.new(74.483, 0.136, -103.564)  
		local waterRE = ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Water_RE")  
		for _ = 1, 50 do  
			waterRE:FireServer(waterPos)  
			task.wait(0.05)  
		end  

		task.wait(2)  

		-- Step 5: Auto Collect (20s)  
		collecting = true  
		task.wait(30)  
		collecting = false  

		task.wait(3)  

		-- Step 6: Auto Submit (for 10s)  
		submitting = true  
		while submitting do  
			local char = player.Character  
			local target = getSubmitPosition()  
			if char and char:FindFirstChild("HumanoidRootPart") and target then  
				local pos = char.HumanoidRootPart.Position  
				if (pos - target).Magnitude > 10 then  
					char.HumanoidRootPart.CFrame = CFrame.new(target + Vector3.new(0, 3, 0))  
				end  
			end  

			local found = nil  
			local backpack = player:FindFirstChild("Backpack")  
			if backpack then  
				for _, item in ipairs(backpack:GetChildren()) do  
					if item:IsA("Tool") and not excludedPets[item.Name] then  
						local lname = item.Name:lower()  
						if (lname:find("zenflare") or lname:find("serenity")) or lname:find("Lucky Bamboo") and lname:find(mutationOrder[nextMutation]) then  
							found = item  
							break  
						end  
					end  
				end  

				if found then  
					for _, tool in ipairs(player.Character:GetChildren()) do  
						if tool:IsA("Tool") then  
							tool.Parent = backpack  
							task.wait(1)  
						end  
					end  

					
	found.Parent = player.Character  
task.wait(0.3)
ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ZenQuestRemoteEvent"):FireServer("SubmitToFox")
nextMutation = (nextMutation % #mutationOrder) + 1
task.wait(1.5)
else
print("⚠️ No more matching plant (corrupt)")
submitting = false
end
else
print("❌ Backpack not found")
submitting = false
end

task.wait(0.5)  
		end  
	end  
	task.wait(0.5)  
end

end)

