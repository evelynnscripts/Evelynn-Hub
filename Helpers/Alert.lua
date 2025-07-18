loadstring(game:HttpGet("https://raw.githubusercontent.com/evelynnscripts/Evelynn-Hub-V9/refs/heads/main/Helpers/global-updates.lua",true))()

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "EvelynnFuturisticUI"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 460, 0, 200)
frame.Position = UDim2.new(0.5, -230, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.ZIndex = 10
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

local glow = Instance.new("UIStroke", frame)
glow.Color = Color3.fromRGB(0, 255, 255)
glow.Thickness = 1.5
glow.Transparency = 0.2
glow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

task.spawn(function()
	while frame and frame.Parent do
		TweenService:Create(glow, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.05}):Play()
		task.wait(1)
		TweenService:Create(glow, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.2}):Play()
		task.wait(1)
	end
end)

local inner = Instance.new("Frame", frame)
inner.Size = UDim2.new(1, -20, 1, -20)
inner.Position = UDim2.new(0, 10, 0, 10)
inner.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
inner.BorderSizePixel = 0
inner.ZIndex = 11
Instance.new("UICorner", inner).CornerRadius = UDim.new(0, 10)

local gradient = Instance.new("UIGradient", inner)
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
}
gradient.Rotation = 45

local closeBtn = Instance.new("TextButton", inner)
closeBtn.Size = UDim2.new(0, 40, 0, 40)
closeBtn.Position = UDim2.new(1, -45, 0, 5)
closeBtn.Text = "✖"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextScaled = true
closeBtn.TextColor3 = Color3.fromRGB(255, 75, 75)
closeBtn.BackgroundTransparency = 1
closeBtn.ZIndex = 15
closeBtn.MouseButton1Click:Connect(function()
	frame:Destroy()
end)

local title = Instance.new("TextLabel", inner)
title.Size = UDim2.new(1, -60, 0, 35)
title.Position = UDim2.new(0, 15, 0, 5)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.TextXAlignment = Enum.TextXAlignment.Left
title.ZIndex = 12

local fullTitle = "Evelynn Hub Loading..."
task.spawn(function()
	for i = 1, #fullTitle do
		title.Text = fullTitle:sub(1, i)
		task.wait(0.03)
	end
end)

local info = Instance.new("TextLabel", inner)
info.Size = UDim2.new(1, -30, 0, 70)
info.Position = UDim2.new(0, 15, 0, 45)
info.BackgroundTransparency = 1
info.Font = Enum.Font.Gotham
info.TextSize = 16
info.TextWrapped = true
info.TextYAlignment = Enum.TextYAlignment.Top
info.TextColor3 = Color3.fromRGB(100, 255, 255)
info.TextXAlignment = Enum.TextXAlignment.Left
info.ZIndex = 11
info.Text = "✅ Logging Removed\n🔐 Join Discord for bypass\n🛠️ DM if script gets patched!"

local discordBtn = Instance.new("TextButton", inner)
discordBtn.Size = UDim2.new(0, 200, 0, 36)
discordBtn.Position = UDim2.new(0.5, -100, 1, -46)
discordBtn.Text = "Copy Discord Link"
discordBtn.Font = Enum.Font.GothamBold
discordBtn.TextSize = 18
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
discordBtn.ZIndex = 12
Instance.new("UICorner", discordBtn).CornerRadius = UDim.new(0, 8)

discordBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/w7D4W4j27j")
		discordBtn.Text = "Link Copied"
		TweenService:Create(discordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 70, 35)}):Play()
		task.wait(2)
		discordBtn.Text = "Copy Discord Link"
		TweenService:Create(discordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25, 25, 40)}):Play()
	end
end)

local orb = Instance.new("ImageLabel", gui)
orb.AnchorPoint = Vector2.new(0.5, 0.5)
orb.Position = frame.Position
orb.Size = UDim2.new(0, 500, 0, 500)
orb.BackgroundTransparency = 1
orb.Image = "rbxassetid://6980520010"
orb.ImageColor3 = Color3.fromRGB(0, 255, 255)
orb.ImageTransparency = 0.85
orb.ZIndex = 1

TweenService:Create(orb, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	ImageTransparency = 0.6
}):Play()
