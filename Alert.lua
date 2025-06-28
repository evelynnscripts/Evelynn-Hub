local TS = game:GetService("TweenService")
local LK = game:GetService("Players")
local PS = LK.LocalPlayer
local VK = PS:WaitForChild("PlayerGui")

local function SC(FN)
	local SS, RS = pcall(FN)
	if not SS then
		warn("Alert.lua Error: ", RS)
	end
	return RS
end

local QL = SC(function()
	local GU = Instance.new("ScreenGui")
	GU.Name = "gui"
	GU.ResetOnSpawn = false
	GU.IgnoreGuiInset = true
	GU.Parent = VK
	return GU
end)

local HD = SC(function()
	local FR = Instance.new("Frame")
	FR.Size = UDim2.new(0, 350, 0, 160)
	FR.Position = UDim2.new(0.5, -175, 0.5, -80)
	FR.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	FR.BorderSizePixel = 0
	FR.AnchorPoint = Vector2.new(0.5, 0.5)
	FR.BackgroundTransparency = 1
	FR.ClipsDescendants = true
	FR.Parent = QL
	return FR
end)

SC(function()
	local UC = Instance.new("UICorner")
	UC.CornerRadius = UDim.new(0, 10)
	UC.Parent = HD
end)

SC(function()
	local US = Instance.new("UIStroke")
	US.Thickness = 2
	US.Color = Color3.fromRGB(255, 0, 85)
	US.Parent = HD
end)

SC(function()
	local XL = Instance.new("TextLabel")
	XL.Size = UDim2.new(1, -20, 0, 40)
	XL.Position = UDim2.new(0, 10, 0, 10)
	XL.BackgroundTransparency = 1
	XL.Text = "Script Was Executed!"
	XL.Font = Enum.Font.GothamBold
	XL.TextSize = 24
	XL.TextColor3 = Color3.fromRGB(255, 255, 255)
	XL.TextStrokeTransparency = 0.8
	XL.TextXAlignment = Enum.TextXAlignment.Left
	XL.Parent = HD
end)

SC(function()
	local YB = Instance.new("TextLabel")
	YB.Size = UDim2.new(1, -20, 0, 60)
	YB.Position = UDim2.new(0, 10, 0, 50)
	YB.BackgroundTransparency = 1
	YB.TextWrapped = true
	YB.Text = "Evelynn Hub will load within 60 seconds due to API issues. Please wait patiently.\nIt may load faster depending on what Executor you using!"
	YB.Font = Enum.Font.Gotham
	YB.TextSize = 16
	YB.TextColor3 = Color3.fromRGB(200, 200, 200)
	YB.TextXAlignment = Enum.TextXAlignment.Left
	YB.TextYAlignment = Enum.TextYAlignment.Top
	YB.Parent = HD
end)

local MC = SC(function()
	local BT = Instance.new("TextButton")
	BT.Size = UDim2.new(0, 100, 0, 30)
	BT.Position = UDim2.new(0.5, -50, 1, -40)
	BT.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	BT.Text = "I Understand!"
	BT.Font = Enum.Font.GothamSemibold
	BT.TextSize = 14
	BT.TextColor3 = Color3.fromRGB(255, 255, 255)
	BT.AutoButtonColor = false
	BT.Parent = HD
	return BT
end)

SC(function()
	local BC = Instance.new("UICorner")
	BC.CornerRadius = UDim.new(0, 6)
	BC.Parent = MC
end)

SC(function()
	MC.MouseEnter:Connect(function()
		MC.BackgroundColor3 = Color3.fromRGB(255, 40, 40)
	end)
	MC.MouseLeave:Connect(function()
		MC.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	end)
end)

SC(function()
	TS:Create(HD, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

SC(function()
	MC.MouseButton1Click:Connect(function()
		pcall(function()
			TS:Create(HD, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundTransparency = 1
			}):Play()
			task.wait(1)
			QL:Destroy()
		end)
	end)
end)
