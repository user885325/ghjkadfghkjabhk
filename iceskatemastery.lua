local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local distanceThreshold =10

local function isPlayerCloseToOtherPlayer(player)
    local character = player.Character
    if not character then return false end
    for _, otherPlayer in pairs(Players:GetPlayers()) do
        if otherPlayer == player then continue end
        
        local otherCharacter = otherPlayer.Character
        if not otherCharacter then continue end

        local distance = (character.HumanoidRootPart.Position - otherCharacter.HumanoidRootPart.Position).Magnitude
        
        if distance <= distanceThreshold then
            return true, otherPlayer
        end
    end
    
    return false, nil
end
RunService.Heartbeat:Connect(function()
    local localPlayer = Players.LocalPlayer
    if localPlayer.Character then
        local character = localPlayer.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local iceskate = character:FindFirstChild("Iceskate")

	if iceskate then
	    local fire = iceskate.Glove:FindFirstChild("EFFECT")
            if fire then
            else
                local particleEmitter = Instance.new("ParticleEmitter")
		particleEmitter.Name = "EFFECT"
		particleEmitter.Parent = iceskate.Glove
		particleEmitter.TimeScale = 0.5
		particleEmitter.Lifetime = NumberRange.new(0.2, 0.2)
		particleEmitter.Rate = 250
		particleEmitter.Speed = NumberRange.new(0, 0)
	    end
        end

        if humanoidRootPart and humanoidRootPart:FindFirstChild("IceSkateBV") then
            local isClose, otherPlayer = isPlayerCloseToOtherPlayer(localPlayer)
            if isClose then
                game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
            end
        end
    end
end)
