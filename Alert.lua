local TweenService = game:GetService("TweenService")
local lkfjd = game:GetService("Players")
local psodj = lkfjd.LocalPlayer
local vkzue = psodj:WaitForChild("PlayerGui")

local qlwei = Instance.new("ScreenGui")
qlwei.Name = "EvelynnHubOfficialAlert"
qlwei.ResetOnSpawn = false
qlwei.IgnoreGuiInset = true
qlwei.Parent = vkzue

local hdyue = Instance.new("Frame")
hdyue.Size = UDim2.new(0, 350, 0, 160)
hdyue.Position = UDim2.new(0.5, -175, 0.5, -80)
hdyue.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
hdyue.BorderSizePixel = 0
hdyue.AnchorPoint = Vector2.new(0.5, 0.5)
hdyue.Parent = qlwei
hdyue.BackgroundTransparency = 1
hdyue.ClipsDescendants = true

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 10)
uicorner.Parent = hdyue

local uistroke = Instance.new("UIStroke")
uistroke.Thickness = 2
uistroke.Color = Color3.fromRGB(255, 0, 85)
uistroke.Parent = hdyue

local xnvow = Instance.new("TextLabel")
xnvow.Size = UDim2.new(1, -20, 0, 40)
xnvow.Position = UDim2.new(0, 10, 0, 10)
xnvow.BackgroundTransparency = 1
xnvow.Text = "Script Was Executed!"
xnvow.Font = Enum.Font.GothamBold
xnvow.TextSize = 24
xnvow.TextColor3 = Color3.fromRGB(255, 255, 255)
xnvow.TextStrokeTransparency = 0.8
xnvow.TextXAlignment = Enum.TextXAlignment.Left
xnvow.Parent = hdyue

local ybwqe = Instance.new("TextLabel")
ybwqe.Size = UDim2.new(1, -20, 0, 60)
ybwqe.Position = UDim2.new(0, 10, 0, 50)
ybwqe.BackgroundTransparency = 1
ybwqe.TextWrapped = true
ybwqe.Text = "Evelynn Hub will load within 45 seconds due to API issues. Please wait patiently.\nIt may load faster depending on what executor you using!"
ybwqe.Font = Enum.Font.Gotham
ybwqe.TextSize = 16
ybwqe.TextColor3 = Color3.fromRGB(200, 200, 200)
ybwqe.TextXAlignment = Enum.TextXAlignment.Left
ybwqe.TextYAlignment = Enum.TextYAlignment.Top
ybwqe.Parent = hdyue

local mcvne = Instance.new("TextButton")
mcvne.Size = UDim2.new(0, 100, 0, 30)
mcvne.Position = UDim2.new(0.5, -50, 1, -40)
mcvne.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
mcvne.Text = "Noted and Close"
mcvne.Font = Enum.Font.GothamSemibold
mcvne.TextSize = 14
mcvne.TextColor3 = Color3.fromRGB(255, 255, 255)
mcvne.AutoButtonColor = false
mcvne.Parent = hdyue

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = mcvne

mcvne.MouseEnter:Connect(function()
	mcvne.BackgroundColor3 = Color3.fromRGB(255, 40, 40)
end)
mcvne.MouseLeave:Connect(function()
	mcvne.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
end)

TweenService:Create(hdyue, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
	BackgroundTransparency = 0.1
}):Play()

mcvne.MouseButton1Click:Connect(function()
	TweenService:Create(hdyue, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	task.wait(2)
	qlwei:Destroy()
end)
