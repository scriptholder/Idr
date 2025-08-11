--// 🟥🖤 DEAD SCRIPT KEY SYSTEM WITH PIXEL ANIMATED BACKGROUND 🖤🟥

local player = game:GetService("Players").LocalPlayer
local guiService = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- Remove duplicates
for _, v in pairs(guiService:GetChildren()) do
    if v.Name == "KeySystem" or v.Name == "DeadSplash" then
        v:Destroy()
    end
end

-- Config
local correctKey = "Dead"
local font = Enum.Font.Arcade
local color1 = Color3.fromRGB(255, 0, 0)
local color2 = Color3.fromRGB(100, 100, 100)

-- UI Holder
local keyUI = Instance.new("ScreenGui", guiService)
keyUI.Name = "KeySystem"
keyUI.ResetOnSpawn = false
keyUI.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- Round Frame
local frame = Instance.new("Frame", keyUI)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0
frame.ClipsDescendants = true

-- Round corners
local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 12)

-- Draggable
frame.Active = true
frame.Draggable = true

-- Title
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, 0, 5)
title.BackgroundTransparency = 1
title.Text = "Key System"
title.TextColor3 = color1
title.TextSize = 22
title.Font = font

-- TextBox
local textbox = Instance.new("TextBox", frame)
textbox.Size = UDim2.new(0.9, 0, 0, 35)
textbox.Position = UDim2.new(0.05, 0, 0, 45)
textbox.PlaceholderText = "Enter key"
textbox.Text = ""
textbox.ClearTextOnFocus = true
textbox.TextSize = 20
textbox.TextColor3 = Color3.new(1, 1, 1)
textbox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
textbox.Font = font

local boxCorner = Instance.new("UICorner", textbox)
boxCorner.CornerRadius = UDim.new(0, 6)

-- Get Key Button
local getBtn = Instance.new("TextButton", frame)
getBtn.Size = UDim2.new(0.42, 0, 0, 30)
getBtn.Position = UDim2.new(0.05, 0, 0, 90)
getBtn.Text = "Get Key Link"
getBtn.Font = font
getBtn.TextSize = 16
getBtn.TextColor3 = color1
getBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
local c1 = Instance.new("UICorner", getBtn)
c1.CornerRadius = UDim.new(0, 6)

-- Run Button
local runBtn = Instance.new("TextButton", frame)
runBtn.Size = UDim2.new(0.42, 0, 0, 30)
runBtn.Position = UDim2.new(0.53, 0, 0, 90)
runBtn.Text = "Run Key"
runBtn.Font = font
runBtn.TextSize = 16
runBtn.TextColor3 = color1
runBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
local c2 = Instance.new("UICorner", runBtn)
c2.CornerRadius = UDim.new(0, 6)

-- Line
local line = Instance.new("TextLabel", frame)
line.Text = "-----------------------------"
line.Size = UDim2.new(1, 0, 0, 20)
line.Position = UDim2.new(0, 0, 0, 130)
line.Font = font
line.TextSize = 14
line.TextColor3 = Color3.new(1, 1, 1)
line.BackgroundTransparency = 1

-- Discord link
local discord = Instance.new("TextLabel", frame)
discord.Text = "discord.gg/example"
discord.Size = UDim2.new(1, 0, 0, 20)
discord.Position = UDim2.new(0, 0, 0, 150)
discord.Font = font
discord.TextSize = 14
discord.TextColor3 = Color3.new(1, 1, 1)
discord.BackgroundTransparency = 1

-- Invalid key warning
local warnText = Instance.new("TextLabel", frame)
warnText.Text = ""
warnText.Size = UDim2.new(1, 0, 0, 20)
warnText.Position = UDim2.new(0, 0, 1, -25)
warnText.Font = font
warnText.TextSize = 14
warnText.TextColor3 = Color3.fromRGB(255, 50, 50)
warnText.BackgroundTransparency = 1

-- Close button
local close = Instance.new("TextButton", frame)
close.Text = "X"
close.Size = UDim2.new(0, 25, 0, 25)
close.Position = UDim2.new(1, -30, 0, 5)
close.Font = font
close.TextSize = 16
close.TextColor3 = Color3.new(1, 1, 1)
close.BackgroundColor3 = color1
local corner = Instance.new("UICorner", close)
corner.CornerRadius = UDim.new(0, 5)

close.MouseButton1Click:Connect(function()
	keyUI:Destroy()
end)

getBtn.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/example")
end)

runBtn.MouseButton1Click:Connect(function()
	if textbox.Text == correctKey then
		keyUI:Destroy()

		-- ANIMATED INTRO UI
		local intro = Instance.new("ScreenGui", guiService)
		intro.Name = "DeadSplash"
		intro.ResetOnSpawn = false

		local pixelContainer = Instance.new("Frame", intro)
		pixelContainer.Size = UDim2.new(1, 0, 1, 0)
		pixelContainer.BackgroundTransparency = 1
		pixelContainer.ClipsDescendants = true

		-- PIXEL FILL ANIMATION
		local gridSize = 20
		for y = 0, math.ceil(pixelContainer.AbsoluteSize.Y / gridSize) do
			for x = 0, math.ceil(pixelContainer.AbsoluteSize.X / gridSize) do
				local pixel = Instance.new("Frame", pixelContainer)
				pixel.Size = UDim2.new(0, gridSize, 0, gridSize)
				pixel.Position = UDim2.new(0, x * gridSize, 0, y * gridSize)
				pixel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				pixel.BackgroundTransparency = 1
				task.delay((x + y) * 0.015, function()
					TweenService:Create(pixel, TweenInfo.new(0.2), {
						BackgroundTransparency = 0
					}):Play()
				end)
			end
		end

		local title = Instance.new("TextLabel", intro)
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.Position = UDim2.new(0.5, 0, 0.45, 0)
		title.Size = UDim2.new(0, 500, 0, 50)
		title.BackgroundTransparency = 1
		title.Font = font
		title.TextSize = 50
		title.Text = ""
		title.TextColor3 = color1

		local sub = Instance.new("TextLabel", intro)
		sub.AnchorPoint = Vector2.new(0.5, 0.5)
		sub.Position = UDim2.new(0.5, 0, 0.55, 0)
		sub.Size = UDim2.new(0, 300, 0, 30)
		sub.BackgroundTransparency = 1
		sub.Font = font
		sub.TextSize = 24
		sub.Text = ""
		sub.TextColor3 = color2

		local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

		-- LETTER BY LETTER EFFECT
		for i = 1, #("Dead Script") do
			title.Text = string.sub("Dead Script", 1, i)
			task.wait(0.05)
		end

		for i = 1, #gameName do
			sub.Text = string.sub(gameName, 1, i)
			task.wait(0.03)
		end

		-- HOLD THEN FADE OUT PIXEL STYLE
		task.wait(2.5)
		for _, v in pairs(pixelContainer:GetChildren()) do
			if v:IsA("Frame") then
				task.delay(math.random() * 0.8, function()
					TweenService:Create(v, TweenInfo.new(0.5), {
						BackgroundTransparency = 1
					}):Play()
				end)
			end
		end

		TweenService:Create(title, TweenInfo.new(1), {TextTransparency = 1}):Play()
		TweenService:Create(sub, TweenInfo.new(1), {TextTransparency = 1}):Play()
		task.wait(2)
		intro:Destroy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptholder/Blah/refs/heads/main/Hub.lua"))()

	else
		warnText.Text = "Invalid key!"
		task.delay(2, function()
			if warnText then warnText.Text = "" end
		end)
	end
end)
