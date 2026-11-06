local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local equipRemote = ReplicatedStorage:WaitForChild("EquipGun")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GunEquipGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local panel = Instance.new("Frame")
panel.Name = "Panel"
panel.AnchorPoint = Vector2.new(0.5, 0.5)
panel.Position = UDim2.fromScale(0.5, 0.5)
panel.Size = UDim2.fromOffset(280, 150)
panel.BackgroundColor3 = Color3.fromRGB(25, 28, 34)
panel.BorderSizePixel = 0
panel.Parent = screenGui

local panelCorner = Instance.new("UICorner")
panelCorner.CornerRadius = UDim.new(0, 10)
panelCorner.Parent = panel

local title = Instance.new("TextLabel")
title.Name = "Title"
title.BackgroundTransparency = 1
title.Position = UDim2.fromOffset(20, 16)
title.Size = UDim2.new(1, -40, 0, 30)
title.Font = Enum.Font.GothamBold
title.Text = "Gun Locker"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22
title.Parent = panel

local description = Instance.new("TextLabel")
description.Name = "Description"
description.BackgroundTransparency = 1
description.Position = UDim2.fromOffset(20, 48)
description.Size = UDim2.new(1, -40, 0, 24)
description.Font = Enum.Font.Gotham
description.Text = "Add the gun to your inventory"
description.TextColor3 = Color3.fromRGB(180, 187, 199)
description.TextSize = 14
description.Parent = panel

local equipButton = Instance.new("TextButton")
equipButton.Name = "EquipButton"
equipButton.Position = UDim2.fromOffset(20, 88)
equipButton.Size = UDim2.new(1, -40, 0, 42)
equipButton.AutoButtonColor = true
equipButton.BackgroundColor3 = Color3.fromRGB(46, 132, 190)
equipButton.BorderSizePixel = 0
equipButton.Font = Enum.Font.GothamBold
equipButton.Text = "EQUIP GUN"
equipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
equipButton.TextSize = 16
equipButton.Parent = panel

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 7)
buttonCorner.Parent = equipButton

equipButton.Activated:Connect(function()
	equipButton.Active = false
	equipButton.Text = "EQUIPPED"
	equipButton.BackgroundColor3 = Color3.fromRGB(70, 145, 100)
	equipRemote:FireServer()
end)
