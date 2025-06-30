--[[

Made by Evelynn Scripts
All rights reserved.

Disclaimer:
This script is intended for educational and personal use only.
Please do not use it to violate any game's terms of service or harm other players.
Respect developers and communities to avoid penalties.
Thank you for using Evelynn Scripts responsibly!

]]
local ALERT_v97 = game:GetService("TweenService")
local ALERT_v42 = game:GetService("Players")
local ALERT_v18 = ALERT_v42.LocalPlayer
local ALERT_v61 = ALERT_v18:WaitForChild("PlayerGui")

local function ALERT_v5(callback)
	local ALERT_v33, ALERT_v7 = pcall(callback)
	if not ALERT_v33 then
		warn("v317 Error! Please report this message if you are seeing it!")
	end
	return ALERT_v7
end

local ALERT_v24 = ALERT_v5(function()
	local ALERT_v35 = Instance.new("ScreenGui")
	ALERT_v35.Name = "ALERET"
	ALERT_v35.ResetOnSpawn = false
	ALERT_v35.IgnoreGuiInset = true
	ALERT_v35.Parent = ALERT_v61
	return ALERT_v35
end)

local ALERT_v80 = ALERT_v5(function()
	local ALERT_v50 = Instance.new("Frame")
	ALERT_v50.Size = UDim2.new(0, 350, 0, 160)
	ALERT_v50.Position = UDim2.new(0.5, -175, 0.5, -80)
	ALERT_v50.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ALERT_v50.BorderSizePixel = 0
	ALERT_v50.AnchorPoint = Vector2.new(0.5, 0.5)
	ALERT_v50.BackgroundTransparency = 1
	ALERT_v50.ClipsDescendants = true
	ALERT_v50.Parent = ALERT_v24
	return ALERT_v50
end)

ALERT_v5(function()
	local ALERT_v96 = Instance.new("UICorner")
	ALERT_v96.CornerRadius = UDim.new(0, 10)
	ALERT_v96.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v14 = Instance.new("UIStroke")
	ALERT_v14.Thickness = 2
	ALERT_v14.Color = Color3.fromRGB(76, 0, 255)
	ALERT_v14.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v12 = Instance.new("TextLabel")
	ALERT_v12.Size = UDim2.new(1, -20, 0, 40)
	ALERT_v12.Position = UDim2.new(0, 10, 0, 10)
	ALERT_v12.BackgroundTransparency = 1
	ALERT_v12.Text = "Loading Evelynn Hub..."
	ALERT_v12.Font = Enum.Font.GothamBold
	ALERT_v12.TextSize = 24
	ALERT_v12.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v12.TextStrokeTransparency = 0.8
	ALERT_v12.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v12.Parent = ALERT_v80
end)

ALERT_v5(function()
	local ALERT_v39 = Instance.new("TextLabel")
	ALERT_v39.Size = UDim2.new(1, -20, 0, 60)
	ALERT_v39.Position = UDim2.new(0, 10, 0, 50)
	ALERT_v39.BackgroundTransparency = 1
	ALERT_v39.TextWrapped = true
	ALERT_v39.Text = "Script will load within 30 Seconds!\nIf Script doesnt work please use Krnl Executor!"
	ALERT_v39.Font = Enum.Font.Gotham
	ALERT_v39.TextSize = 16
	ALERT_v39.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v39.TextXAlignment = Enum.TextXAlignment.Left
	ALERT_v39.TextYAlignment = Enum.TextYAlignment.Top
	ALERT_v39.Parent = ALERT_v80
end)

local ALERT_v88 = ALERT_v5(function()
	local ALERT_v20 = Instance.new("TextButton")
	ALERT_v20.Size = UDim2.new(0, 100, 0, 30)
	ALERT_v20.Position = UDim2.new(0.5, -50, 1, -40)
	ALERT_v20.BackgroundColor3 = Color3.fromRGB(89, 0, 255)
	ALERT_v20.Text = "Noted!"
	ALERT_v20.Font = Enum.Font.GothamSemibold
	ALERT_v20.TextSize = 14
	ALERT_v20.TextColor3 = Color3.fromRGB(255, 255, 255)
	ALERT_v20.AutoButtonColor = false
	ALERT_v20.Parent = ALERT_v80
	return ALERT_v20
end)

ALERT_v5(function()
	local ALERT_v69 = Instance.new("UICorner")
	ALERT_v69.CornerRadius = UDim.new(0, 6)
	ALERT_v69.Parent = ALERT_v88
end)

ALERT_v5(function()
	ALERT_v88.MouseEnter:Connect(function()
		ALERT_v88.BackgroundColor3 = Color3.fromRGB(76, 0, 255)
	end)
	ALERT_v88.MouseLeave:Connect(function()
		ALERT_v88.BackgroundColor3 = Color3.fromRGB(195, 169, 254)
	end)
end)

ALERT_v5(function()
	ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		BackgroundTransparency = 0.1
	}):Play()
end)

ALERT_v5(function()
	ALERT_v88.MouseButton1Click:Connect(function()
		pcall(function()
			ALERT_v97:Create(ALERT_v80, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundTransparency = 1
			}):Play()
			task.wait(1)
			ALERT_v24:Destroy()
		end)
	end)
end)
print("v317 loaded without any errors")
