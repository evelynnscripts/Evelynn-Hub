local TweenService = game:GetService("TweenService")
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "UpdatesLog"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true

local container = Instance.new("Frame", gui)
container.Size = UDim2.new(0, 300, 0, 180)
container.Position = UDim2.new(0, 10, 1, -190)
container.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
container.BorderSizePixel = 0
container.ClipsDescendants = true
container.ZIndex = 10
container.Active = true
container.Draggable = true
Instance.new("UICorner", container).CornerRadius = UDim.new(0, 10)

local stroke = Instance.new("UIStroke", container)
stroke.Color = Color3.fromRGB(0, 255, 255)
stroke.Thickness = 1.5
stroke.Transparency = 0.15

local title = Instance.new("TextLabel", container)
title.Size = UDim2.new(1, -40, 0, 30)
title.Position = UDim2.new(0, 10, 0, 5)
title.Text = "Evelynn Hub - Global Updates"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.TextSize = 16
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.ZIndex = 11

local closeBtn = Instance.new("TextButton", container)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "✖"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextColor3 = Color3.fromRGB(255, 75, 75)
closeBtn.TextSize = 20
closeBtn.BackgroundTransparency = 1
closeBtn.ZIndex = 11
closeBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

local scroll = Instance.new("ScrollingFrame", container)
scroll.Size = UDim2.new(1, -20, 1, -50)
scroll.Position = UDim2.new(0, 10, 0, 40)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ScrollBarThickness = 4
scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 255)
scroll.ZIndex = 10

local layout = Instance.new("UIListLayout", scroll)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 6)

local updates = {
  "GLOBAL | Updated Github for all scripts",
  "MVSD   | Huge update, update too big to upload here",
  "Join discord for update log"
}

for _, text in ipairs(updates) do
	local label = Instance.new("TextLabel", scroll)
	label.Size = UDim2.new(1, 0, 0, 20)
	label.Text = text
	label.Font = Enum.Font.Gotham
	label.TextColor3 = Color3.fromRGB(100, 255, 255)
	label.TextSize = 14
	label.BackgroundTransparency = 1
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.ZIndex = 10
end

scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
end)
