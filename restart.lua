local v1 = game:GetService("TweenService")
local v2 = game:GetService("Players")
local v3 = v2.LocalPlayer
local v4 = v3:WaitForChild("PlayerGui")

local function v5(v6)
	local v7, v8 = pcall(v6)
	if not v7 then
		warn("Error")
	end
	return v8
end

local v9 = v5(function()
	local v1 = Instance.new("ScreenGui")
	v1.Name = "gui"
	v1.ResetOnSpawn = false
	v1.IgnoreGuiInset = true
	v1.Parent = v4
	return v1
end)

local v2 = v5(function()
	local v3 = Instance.new("Frame")
	v3.Size = UDim2.new(0, 350, 0, 160)
	v3.Position = UDim2.new(0.5, -175, 0.5, -80)
	v3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	v3.BorderSizePixel = 0
	v3.AnchorPoint = Vector2.new(0.5, 0.5)
	v3.BackgroundTransparency = 1
	v3.ClipsDescendants = true
	v3.Parent = v9
	return v3
end)

v5(function()
	local v4 = Instance.new("UICorner")
	v4.CornerRadius = UDim.new(0, 10)
	v4.Parent = v2
end)

v5(function()
	local v5 = Instance.new("UIStroke")
	v5.Thickness = 2
	v5.Color = Color3.fromRGB(255, 0, 85)
	v5.Parent = v2
end)

v5(function()
	local v6 = Instance.new("TextLabel")
	v6.Size = UDim2.new(1, -20, 0, 40)
	v6.Position = UDim2.new(0, 10, 0, 10)
	v6.BackgroundTransparency = 1
	v6.Text = "Script was Restarted!"
	v6.Font = Enum.Font.GothamBold
	v6.TextSize = 24
	v6.TextColor3 = Color3.fromRGB(255, 255, 255)
	v6.TextStrokeTransparency = 0.8
	v6.TextXAlignment = Enum.TextXAlignment.Left
	v6.Parent = v2
end)

v5(function()
	local v7 = Instance.new("TextLabel")
	v7.Size = UDim2.new(1, -20, 0, 60)
	v7.Position = UDim2.new(0, 10, 0, 50)
	v7.BackgroundTransparency = 1
	v7.TextWrapped = true
	v7.Text = "Evelynn Hub Is Loading...\nPlease wait patiently!\nMay load faster depending on what Executor you are Using!"
	v7.Font = Enum.Font.Gotham
	v7.TextSize = 16
	v7.TextColor3 = Color3.fromRGB(200, 200, 200)
	v7.TextXAlignment = Enum.TextXAlignment.Left
	v7.TextYAlignment = Enum.TextYAlignment.Top
	v7.Parent = v2
end)

local v8 = v5(function()
	local v9 = Instance.new("TextButton")
	v9.Size = UDim2.new(0, 100, 0, 30)
	v9.Position = UDim2.new(0.5, -50, 1, -40)
	v9.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	v9.Text = "I Understand!"
	v9.Font = Enum.Font.GothamSemibold
	v9.TextSize = 14
	v9.TextColor3 = Color3.fromRGB(255, 255, 255)
	v9.AutoButtonColor = false
	v9.Parent = v2
	return v9
end)

v5(function()
	local v1 = Instance.new("UICorner")
	v1.CornerRadius = UDim.new(0, 6)
	v1.Parent = v8
end)

v5(function()
	v8.MouseEnter:Connect(function()
		v8.BackgroundColor3 = Color3.fromRGB(255, 40, 40)
	end)
	v8.MouseLeave:Connect(function()
		v8.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	end)
end)

v5(function()
	v1:Create(v2, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

v5(function()
	v8.MouseButton1Click:Connect(function()
		pcall(function()
			v1:Create(v2, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundTransparency = 1
			}):Play()
			task.wait(1)
			v9:Destroy()
		end)
	end)
end)
