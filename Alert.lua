local lkfjd = game:GetService("Players")
local psodj = lkfjd.LocalPlayer
local vkzue = psodj:WaitForChild("PlayerGui")

local qlwei = Instance.new("ScreenGui")
qlwei.Name = "EvelynnHubOfficialAlert"
qlwei.ResetOnSpawn = false
qlwei.Parent = vkzue

local hdyue = Instance.new("Frame")
hdyue.Size = UDim2.new(0, 350, 0, 160)
hdyue.Position = UDim2.new(0.5, -175, 0.5, -80)
hdyue.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
hdyue.BorderSizePixel = 0
hdyue.AnchorPoint = Vector2.new(0.5, 0.5)
hdyue.Parent = qlwei
hdyue.BackgroundTransparency = 0.1

local xnvow = Instance.new("TextLabel")
xnvow.Size = UDim2.new(1, -20, 0, 40)
xnvow.Position = UDim2.new(0, 10, 0, 10)
xnvow.BackgroundTransparency = 1
xnvow.Text = "Notice"
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
ybwqe.Text = "Rayfield GUI will load within 30 seconds due to API issues. Please wait patiently."
ybwqe.Font = Enum.Font.Gotham
ybwqe.TextSize = 16
ybwqe.TextColor3 = Color3.fromRGB(200, 200, 200)
ybwqe.TextXAlignment = Enum.TextXAlignment.Left
ybwqe.TextYAlignment = Enum.TextYAlignment.Top
ybwqe.Parent = hdyue

local mcvne = Instance.new("TextButton")
mcvne.Size = UDim2.new(0, 100, 0, 30)
mcvne.Position = UDim2.new(0.5, -50, 1, -40)
mcvne.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
mcvne.Text = "Noted and Close"
mcvne.Font = Enum.Font.GothamSemibold
mcvne.TextSize = 14
mcvne.TextColor3 = Color3.fromRGB(255, 255, 255)
mcvne.Parent = hdyue

mcvne.MouseButton1Click:Connect(function()
    qlwei:Destroy()
end)
