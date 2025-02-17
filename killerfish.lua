local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "YOU MUST HAVE GLOVE FISH TO USE THIS SCRIPT";
    Duration = 5;
})

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool = character:FindFirstChild("fish") or player.Backpack:FindFirstChild("fish")

local fish = game.Workspace.Lobby.fish
local fishStand = game.Workspace.Lobby.GloveStands.fish
local leaderstats = player:FindFirstChild("leaderstats")
local gloveStat = leaderstats and leaderstats:FindFirstChild("Glove")

character.HumanoidRootPart.CFrame = workspace.Lobby.GloveStands.fish.CFrame

spawn(function()
    while fish:FindFirstChild("Texture") do
        fish.Texture:Destroy()
        fish.Color = Color3.fromRGB(124, 124, 124)
        fish.Material = Enum.Material.DiamondPlate
        fishStand.GloveDesc.DescOutline.DescFrame:FindFirstChild("Name").Text = "killerfish"
        wait(0.05)
    end
end)

spawn(function()
    while true do
        if gloveStat and (gloveStat.Value == "fish" or gloveStat.Value == "Killerfish") then
            gloveStat.Value = "killerfish"
        end
        wait(0.05)
    end
end)

if tool and tool:FindFirstChild("Glove") then
    spawn(function()
        while tool.Glove:FindFirstChild("Texture") do
            tool.Glove.Texture:Destroy()
            wait(0.05)
        end

        tool.Glove.Color = Color3.fromRGB(124, 124, 124)
        tool.Glove.Material = Enum.Material.DiamondPlate
        tool.Name = "killerfish"
    end)
end

spawn(function()
    while true do
        local killerfish = character:FindFirstChild("killerfish")
        if killerfish then
            killerfish.ToolTip = "actually the killer fish from san diego"
            killerfish.Glove.Color = Color3.fromRGB(95, 95, 95)
        end
        wait(0.05)
    end
end)

local userInputService = game:GetService("UserInputService")
local canUseAbility = true

spawn(function()
    while true do
        local character = player.Character or player.CharacterAdded:Wait()
        local tool = character:FindFirstChild("fish") or player.Backpack:FindFirstChild("fish")
        if tool and tool.Name == "fish" then
            tool.Name = "killerfish"
            tool.ToolTip = "actually the killer fish from san diego"
            tool.Glove.Color = Color3.fromRGB(95, 95, 95)
        end
        wait(0.1)
    end
end)

local function playSound()
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://8317474498"
        sound.Volume = 1
        sound.PlaybackSpeed = 1
        sound.Parent = rootPart
        sound:Play()

        game:GetService("Debris"):AddItem(sound, sound.TimeLength + 1)
    end
end

local function killerfish()
    local camera = game.Workspace.CurrentCamera
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local selfKnockback = replicatedStorage:FindFirstChild("SelfKnockback")
    if not selfKnockback then return end

    local cameraLookVector = camera.CFrame.LookVector
    local knockBackDirection = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit
    knockBackDirection = knockBackDirection + Vector3.new(0, 1, 0) * 0.5

    selfKnockback:FireServer({
        ["Force"] = 75,
        ["Direction"] = knockBackDirection
    })

    playSound()
end

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    local character = player.Character
    local leaderstats = player:FindFirstChild("leaderstats")
    local gloveStat = leaderstats and leaderstats:FindFirstChild("Glove")

    if character and character:FindFirstChild("isInArena") and character.isInArena.Value then
        if gloveStat and (gloveStat.Value == "fish" or gloveStat.Value == "killerfish") then
            if input.KeyCode == Enum.KeyCode.E and canUseAbility and character:FindFirstChild("killerfish") then
                canUseAbility = false
                killerfish()
                wait(0.5)
                canUseAbility = true
            end
        end
    end
end)

local coreGui = game:GetService("CoreGui")
local screenGui = Instance.new("ScreenGui", coreGui)
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0.9, 0, 0.5, 0)
button.Text = "E"
button.Visible = false
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 24
button.BorderSizePixel = 2

spawn(function()
    while true do
        local tool = player.Character and player.Character:FindFirstChild("killerfish")
        button.Visible = tool ~= nil
        wait(0.1)
    end
end)

button.MouseButton1Click:Connect(function()
    if canUseAbility and player.Character and player.Character:FindFirstChild("killerfish") then
        canUseAbility = false
        killerfish()
        wait(0.5)
        canUseAbility = true
    end
end)
