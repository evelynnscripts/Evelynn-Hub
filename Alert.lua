local TweenService = game:GetService("TweenService")
local lkfjd = game:GetService("Players")
local psodj = lkfjd.LocalPlayer
local vkzue = psodj:WaitForChild("PlayerGui")

local function safeCreate(func)
	local success, result = pcall(func)
	if not success then
		warn("Alert.lua Error: ", result)
	end
	return result
end

local qlwei = safeCreate(function()
	local gui = Instance.new("ScreenGui")
	gui.Name = "EvelynnHubOfficialAlert"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.Parent = vkzue
	return gui
end)

local hdyue = safeCreate(function()
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(0, 350, 0, 160)
	frame.Position = UDim2.new(0.5, -175, 0.5, -80)
	frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	frame.BorderSizePixel = 0
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundTransparency = 1
	frame.ClipsDescendants = true
	frame.Parent = qlwei
	return frame
end)

safeCreate(function()
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 10)
	corner.Parent = hdyue
end)

safeCreate(function()
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 2
	stroke.Color = Color3.fromRGB(255, 0, 85)
	stroke.Parent = hdyue
end)

safeCreate(function()
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, -20, 0, 40)
	label.Position = UDim2.new(0, 10, 0, 10)
	label.BackgroundTransparency = 1
	label.Text = "Script Was Executed!"
	label.Font = Enum.Font.GothamBold
	label.TextSize = 24
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextStrokeTransparency = 0.8
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Parent = hdyue
end)

safeCreate(function()
	local desc = Instance.new("TextLabel")
	desc.Size = UDim2.new(1, -20, 0, 60)
	desc.Position = UDim2.new(0, 10, 0, 50)
	desc.BackgroundTransparency = 1
	desc.TextWrapped = true
	desc.Text = "Evelynn Hub will load within 45 seconds due to API issues. Please wait patiently.\nIt may load faster depending on what executor you using!"
	desc.Font = Enum.Font.Gotham
	desc.TextSize = 16
	desc.TextColor3 = Color3.fromRGB(200, 200, 200)
	desc.TextXAlignment = Enum.TextXAlignment.Left
	desc.TextYAlignment = Enum.TextYAlignment.Top
	desc.Parent = hdyue
end)

local mcvne = safeCreate(function()
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0, 100, 0, 30)
	btn.Position = UDim2.new(0.5, -50, 1, -40)
	btn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	btn.Text = "Noted and Close"
	btn.Font = Enum.Font.GothamSemibold
	btn.TextSize = 14
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.AutoButtonColor = false
	btn.Parent = hdyue
	return btn
end)

safeCreate(function()
	local btnCorner = Instance.new("UICorner")
	btnCorner.CornerRadius = UDim.new(0, 6)
	btnCorner.Parent = mcvne
end)

safeCreate(function()
	mcvne.MouseEnter:Connect(function()
		mcvne.BackgroundColor3 = Color3.fromRGB(255, 40, 40)
	end)
	mcvne.MouseLeave:Connect(function()
		mcvne.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
	end)
end)

safeCreate(function()
	TweenService:Create(hdyue, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

safeCreate(function()
	mcvne.MouseButton1Click:Connect(function()
		pcall(function()
			TweenService:Create(hdyue, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundTransparency = 1
			}):Play()
			task.wait(2)
			qlwei:Destroy()
		end)
	end)
end)
