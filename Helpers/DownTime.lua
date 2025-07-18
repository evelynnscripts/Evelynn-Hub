local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "coool"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local F = Instance.new("Frame", gui)
F.Size = UDim2.new(0, 460, 0, 200)
F.Position = UDim2.new(0.5, -230, 0.5, -100)
F.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
F.BorderSizePixel = 0
F.Active = true
F.Draggable = true
F.ZIndex = 10
Instance.new("UICorner", F).CornerRadius = UDim.new(0, 12)

local S = Instance.new("UIStroke", F)
S.Color = Color3.fromRGB(0, 255, 255)
S.Thickness = 1.5
S.Transparency = 0.2
S.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

task.spawn(function()
	while F and F.Parent do
		TweenService:Create(S, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.05}):Play()
		task.wait(1)
		TweenService:Create(S, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.2}):Play()
		task.wait(1)
	end
end)

local I = Instance.new("Frame", F)
I.Size = UDim2.new(1, -20, 1, -20)
I.Position = UDim2.new(0, 10, 0, 10)
I.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
I.BorderSizePixel = 0
I.ZIndex = 11
Instance.new("UICorner", I).CornerRadius = UDim.new(0, 10)

local G = Instance.new("UIGradient", I)
G.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
}
G.Rotation = 45

local C = Instance.new("TextButton", I)
C.Size = UDim2.new(0, 40, 0, 40)
C.Position = UDim2.new(1, -45, 0, 5)
C.Text = "✖"
C.Font = Enum.Font.GothamBold
C.TextScaled = true
C.TextColor3 = Color3.fromRGB(255, 75, 75)
C.BackgroundTransparency = 1
C.ZIndex = 15
C.MouseButton1Click:Connect(function()
	F:Destroy()
end)

local T = Instance.new("TextLabel", I)
T.Size = UDim2.new(1, -60, 0, 35)
T.Position = UDim2.new(0, 15, 0, 5)
T.BackgroundTransparency = 1
T.Font = Enum.Font.GothamBold
T.TextSize = 22
T.TextColor3 = Color3.fromRGB(0, 255, 255)
T.TextXAlignment = Enum.TextXAlignment.Left
T.ZIndex = 12

local fullTitle = "Outdated..."
task.spawn(function()
	for i = 1, #fullTitle do
		T.Text = fullTitle:sub(1, i)
		task.wait(0.03)
	end
end)

local Info = Instance.new("TextLabel", I)
Info.Size = UDim2.new(1, -30, 0, 70)
Info.Position = UDim2.new(0, 15, 0, 45)
Info.BackgroundTransparency = 1
Info.Font = Enum.Font.Gotham
Info.TextSize = 16
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top
Info.TextColor3 = Color3.fromRGB(100, 255, 255)
Info.TextXAlignment = Enum.TextXAlignment.Left
Info.ZIndex = 11
Info.Text = "You are executing an outdated script\nJoin our discord for updated and latest scripts."

local D = Instance.new("TextButton", I)
D.Size = UDim2.new(0, 200, 0, 36)
D.Position = UDim2.new(0.5, -100, 1, -46)
D.Text = "Copy Discord Link"
D.Font = Enum.Font.GothamBold
D.TextSize = 18
D.TextColor3 = Color3.fromRGB(255, 255, 255)
D.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
D.ZIndex = 12
Instance.new("UICorner", D).CornerRadius = UDim.new(0, 8)

D.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/w7D4W4j27j")
		D.Text = "Link Copied"
		TweenService:Create(D, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 70, 35)}):Play()
		task.wait(2)
		D.Text = "Copy Discord Link"
		TweenService:Create(D, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25, 25, 40)}):Play()
	end
end)

local O = Instance.new("ImageLabel", gui)
O.AnchorPoint = Vector2.new(0.5, 0.5)
O.Position = F.Position
O.Size = UDim2.new(0, 500, 0, 500)
O.BackgroundTransparency = 1
O.Image = "rbxassetid://6980520010"
O.ImageColor3 = Color3.fromRGB(0, 255, 255)
O.ImageTransparency = 0.85
O.ZIndex = 1

TweenService:Create(O, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	ImageTransparency = 0.6
}):Play()
