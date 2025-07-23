local TweenService = game:GetService("TweenService")
local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui["Name"] = "StatusUI"
Gui["IgnoreGuiInset"] = true
Gui["ResetOnSpawn"] = false

-- Main Container
local Frame = Instance.new("Frame", Gui)
Frame["Size"] = UDim2.new(0, 480, 0, 240)
Frame["Position"] = UDim2.new(0.5, -240, 0.5, -120)
Frame["BackgroundColor3"] = Color3.fromRGB(15, 15, 20)
Frame["BorderSizePixel"] = 0
Frame["Active"] = true
Frame["Draggable"] = true
Frame["ZIndex"] = 10
Instance.new("UICorner", Frame)["CornerRadius"] = UDim.new(0, 12)

-- Animated Border
local Stroke = Instance.new("UIStroke", Frame)
Stroke["Color"] = Color3.fromRGB(0, 255, 255)
Stroke["Thickness"] = 1.5
Stroke["Transparency"] = 0.2
Stroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

task.spawn(function()
	while Frame and Frame["Parent"] do
		TweenService:Create(Stroke, TweenInfo.new(1, Enum.EasingStyle.Sine), {Transparency = 0.05}):Play()
		task.wait(1)
		TweenService:Create(Stroke, TweenInfo.new(1, Enum.EasingStyle.Sine), {Transparency = 0.2}):Play()
		task.wait(1)
	end
end)

-- Inner Panel
local Inner = Instance.new("Frame", Frame)
Inner["Size"] = UDim2.new(1, -20, 1, -20)
Inner["Position"] = UDim2.new(0, 10, 0, 10)
Inner["BackgroundColor3"] = Color3.fromRGB(5, 5, 10)
Inner["BorderSizePixel"] = 0
Inner["ZIndex"] = 11
Instance.new("UICorner", Inner)["CornerRadius"] = UDim.new(0, 10)

local Gradient = Instance.new("UIGradient", Inner)
Gradient["Color"] = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
}
Gradient["Rotation"] = 45

-- Close Button (top right)
local Close = Instance.new("TextButton", Inner)
Close["Size"] = UDim2.new(0, 40, 0, 40)
Close["Position"] = UDim2.new(1, -45, 0, 5)
Close["Text"] = "✖"
Close["Font"] = Enum.Font.GothamBold
Close["TextScaled"] = true
Close["TextColor3"] = Color3.fromRGB(255, 75, 75)
Close["BackgroundTransparency"] = 1
Close["ZIndex"] = 15
Close.MouseButton1Click:Connect(function() Frame:Destroy() end)

-- Title Typing Text
local Title = Instance.new("TextLabel", Inner)
Title["Size"] = UDim2.new(1, -60, 0, 35)
Title["Position"] = UDim2.new(0, 15, 0, 5)
Title["BackgroundTransparency"] = 1
Title["Font"] = Enum.Font.GothamBold
Title["TextSize"] = 22
Title["TextColor3"] = Color3.fromRGB(0, 255, 255)
Title["TextXAlignment"] = Enum.TextXAlignment.Left
Title["ZIndex"] = 12

local fullTitle = "⚠️ Script Status: Offline"
task.spawn(function()
	for i = 1, #fullTitle do
		Title["Text"] = fullTitle:sub(1, i)
		task.wait(0.03)
	end
end)

-- Info Content
local Info = Instance.new("TextLabel", Inner)
Info["Size"] = UDim2.new(1, -30, 0, 100)
Info["Position"] = UDim2.new(0, 15, 0, 45)
Info["BackgroundTransparency"] = 1
Info["Font"] = Enum.Font.Gotham
Info["TextSize"] = 16
Info["TextWrapped"] = true
Info["TextYAlignment"] = Enum.TextYAlignment.Top
Info["TextXAlignment"] = Enum.TextXAlignment.Left
Info["TextColor3"] = Color3.fromRGB(120, 255, 255)
Info["ZIndex"] = 11
Info["Text"] = [[
Info   : Script was rejected to load
Reason : API Error 503 (Service Unavailable)
Why?   : Script is updating

Working Script : Project Autoshoot
Key System     : ✅
Location       : Discord Link Below
]]

local Copy = Instance.new("TextButton", Inner)
Copy["Size"] = UDim2.new(0, 220, 0, 36)
Copy["Position"] = UDim2.new(0.5, -110, 1, -46)
Copy["Text"] = "Copy Discord Link"
Copy["Font"] = Enum.Font.GothamBold
Copy["TextSize"] = 18
Copy["TextColor3"] = Color3.fromRGB(255, 255, 255)
Copy["BackgroundColor3"] = Color3.fromRGB(25, 25, 40)
Copy["ZIndex"] = 12
Instance.new("UICorner", Copy)["CornerRadius"] = UDim.new(0, 8)

Copy.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/w7D4W4j27j")
		Copy["Text"] = "✅ Copied!"
		TweenService:Create(Copy, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 70, 35)}):Play()
		task.wait(2)
		Copy["Text"] = "Copy Discord Link"
		TweenService:Create(Copy, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25, 25, 40)}):Play()
	end
end)
