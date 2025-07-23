local tween = game:GetService("TweenService")
local screen = Instance.new("ScreenGui", game.CoreGui)
screen["Name"] = "StatusUI"
screen["IgnoreGuiInset"] = true
screen["ResetOnSpawn"] = false

local box = Instance.new("Frame", screen)
box["Size"] = UDim2.new(0, 480, 0, 300)
box["Position"] = UDim2.new(0.5, -240, 0.5, -150)
box["BackgroundColor3"] = Color3.fromRGB(15, 15, 20)
box["BorderSizePixel"] = 0
box["Active"] = true
box["Draggable"] = true
box["ZIndex"] = 10
Instance.new("UICorner", box)["CornerRadius"] = UDim.new(0, 12)

local rainbow = Instance.new("UIStroke", box)
rainbow["Color"] = Color3.fromRGB(0, 255, 255)
rainbow["Thickness"] = 1.5
rainbow["Transparency"] = 0.2
rainbow["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

task.spawn(function()
	while box and box["Parent"] do
		tween:Create(rainbow, TweenInfo.new(1, Enum.EasingStyle.Sine), {Transparency = 0.05}):Play()
		task.wait(1)
		tween:Create(rainbow, TweenInfo.new(1, Enum.EasingStyle.Sine), {Transparency = 0.2}):Play()
		task.wait(1)
	end
end)

local inside = Instance.new("Frame", box)
inside["Size"] = UDim2.new(1, -20, 1, -20)
inside["Position"] = UDim2.new(0, 10, 0, 10)
inside["BackgroundColor3"] = Color3.fromRGB(5, 5, 10)
inside["BorderSizePixel"] = 0
inside["ZIndex"] = 11
Instance.new("UICorner", inside)["CornerRadius"] = UDim.new(0, 10)

local shiny = Instance.new("UIGradient", inside)
shiny["Color"] = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
}
shiny["Rotation"] = 45

local xbtn = Instance.new("TextButton", inside)
xbtn["Size"] = UDim2.new(0, 40, 0, 40)
xbtn["Position"] = UDim2.new(1, -45, 0, 5)
xbtn["Text"] = "✖"
xbtn["Font"] = Enum.Font.GothamBold
xbtn["TextScaled"] = true
xbtn["TextColor3"] = Color3.fromRGB(255, 75, 75)
xbtn["BackgroundTransparency"] = 1
xbtn["ZIndex"] = 15
xbtn.MouseButton1Click:Connect(function() box:Destroy() end)

local title = Instance.new("TextLabel", inside)
title["Size"] = UDim2.new(1, -60, 0, 35)
title["Position"] = UDim2.new(0, 15, 0, 5)
title["BackgroundTransparency"] = 1
title["Font"] = Enum.Font.GothamBold
title["TextSize"] = 22
title["TextColor3"] = Color3.fromRGB(0, 255, 255)
title["TextXAlignment"] = Enum.TextXAlignment.Left
title["ZIndex"] = 12

local slowwords = "⚠️ Script Status: Offline"
task.spawn(function()
	for i = 1, #slowwords do
		title["Text"] = slowwords:sub(1, i)
		task.wait(0.03)
	end
end)

local word = Instance.new("TextLabel", inside)
word["Size"] = UDim2.new(1, -30, 0, 140)
word["Position"] = UDim2.new(0, 15, 0, 45)
word["BackgroundTransparency"] = 1
word["Font"] = Enum.Font.Gotham
word["TextSize"] = 16
word["TextWrapped"] = true
word["TextYAlignment"] = Enum.TextYAlignment.Top
word["TextXAlignment"] = Enum.TextXAlignment.Left
word["TextColor3"] = Color3.fromRGB(120, 255, 255)
word["ZIndex"] = 11
word["Text"] = [[
Info   : Script was rejected to load
Reason : API Error 503 (Service Unavailable)
Why?   : Script is updating and not ready

Working Script : Project Autoshoot
Key System     : ✅ Enabled
Version        : Evelynn Hub v10
Location       : Discord Link Below ↓
]]

local clicky = Instance.new("TextButton", inside)
clicky["Size"] = UDim2.new(0, 220, 0, 36)
clicky["Position"] = UDim2.new(0.5, -110, 1, -46)
clicky["Text"] = "Copy Discord Link"
clicky["Font"] = Enum.Font.GothamBold
clicky["TextSize"] = 18
clicky["TextColor3"] = Color3.fromRGB(255, 255, 255)
clicky["BackgroundColor3"] = Color3.fromRGB(25, 25, 40)
clicky["ZIndex"] = 12
Instance.new("UICorner", clicky)["CornerRadius"] = UDim.new(0, 8)

clicky.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/w7D4W4j27j")
		clicky["Text"] = "✅ Copied!"
		tween:Create(clicky, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 70, 35)}):Play()
		task.wait(2)
		clicky["Text"] = "Copy Discord Link"
		tween:Create(clicky, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25, 25, 40)}):Play()
	end
end)
