local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local REMOTE_NAME = "EquipGun"
local TOOL_NAME = "Gun"

local equipRemote = ReplicatedStorage:FindFirstChild(REMOTE_NAME)
if not equipRemote then
	equipRemote = Instance.new("RemoteEvent")
	equipRemote.Name = REMOTE_NAME
	equipRemote.Parent = ReplicatedStorage
end

local function findOwnedGun(player)
	local backpack = player:FindFirstChildOfClass("Backpack")
	local character = player.Character

	if backpack then
		local backpackGun = backpack:FindFirstChild(TOOL_NAME)
		if backpackGun and backpackGun:IsA("Tool") then
			return backpackGun
		end
	end

	if character then
		local equippedGun = character:FindFirstChild(TOOL_NAME)
		if equippedGun and equippedGun:IsA("Tool") then
			return equippedGun
		end
	end

	return nil
end

local function equipGun(player)
	local backpack = player:FindFirstChildOfClass("Backpack")
	if not backpack then
		return
	end

	if findOwnedGun(player) then
		return
	end

	local gunTemplate = ServerStorage:FindFirstChild(TOOL_NAME)
	if not gunTemplate or not gunTemplate:IsA("Tool") then
		warn(string.format("ServerStorage.%s must be a Tool", TOOL_NAME))
		return
	end

	local gun = gunTemplate:Clone()
	gun.Parent = backpack
end

equipRemote.OnServerEvent:Connect(function(player)
	equipGun(player)
end)
