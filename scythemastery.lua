local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "THIS SCRIPT IS UNSTABLE ON MOBILE!";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "YOU MUST EQUIP SCYTHE TO USE THIS SCRIPT.";
    Duration = 5;
})

local toolName = "Scythe" -- stupid scythe tool
local animationId = "rbxassetid://16102426718" -- slap
local rAnimationId = "rbxassetid://15437009238" -- ability
local player = game:GetService("Players").LocalPlayer
local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

local cooldownGui = Instance.new("ScreenGui")
cooldownGui.Parent = game:GetService("CoreGui")

local cooldownFrame = Instance.new("Frame")
cooldownFrame.Size = UDim2.new(0, 200, 0, 30)
cooldownFrame.Position = UDim2.new(1, -220, 0.5, -15)
cooldownFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
cooldownFrame.Visible = false
cooldownFrame.Parent = cooldownGui

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(1, 0, 1, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressBar.Parent = cooldownFrame

local rButton = Instance.new("TextButton")
rButton.Size = UDim2.new(0, 40, 0, 40)
rButton.Position = UDim2.new(1, -120, 0.5, -75)
rButton.Text = "R"
rButton.TextColor3 = Color3.fromRGB(255, 255, 255)
rButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rButton.Visible = false
rButton.Parent = cooldownGui

local animation = Instance.new("Animation")
animation.AnimationId = animationId
local track

local rAnimation = Instance.new("Animation")
rAnimation.AnimationId = rAnimationId
local rTrack

local canPlay = true
local canRPlay = true
local cooldownTime = 5
local currentCooldown = 0
local scytheEquipped = false
local fakeScythe
local isAlive = true

local function initializeFakeScythe()
    wait(1)
    local args = { [1] = "ScytheWeapon" }
    game.ReplicatedStorage:WaitForChild("Scythe"):FireServer(unpack(args))
    wait(0.3)
    local init = game.Players.LocalPlayer.Character["Right Arm"].scythemodel:Clone()
    init.Parent = game.Lighting
    init.Name = "fakescythe"
    fakeScythe = init
end

local function updateCooldown()
    while currentCooldown > 0 do
        wait(0.1)
        currentCooldown = currentCooldown - 0.1
        progressBar.Size = UDim2.new(currentCooldown / cooldownTime, 0, 1, 0)
    end
    cooldownFrame.Visible = false
    rButton.Visible = false
end

local function playLeftClickAnimation()
    if canPlay and character:FindFirstChild(toolName) then
        if humanoid then
            if not track then
                track = humanoid:LoadAnimation(animation)
            end
            track:Play()
            canPlay = false
            task.wait(0.5)
            canPlay = true
        end
    end
end

local function performRAbility()
    if canRPlay and character:FindFirstChild(toolName) then
        if humanoid then
            canRPlay = false
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                if not rTrack then
                    rTrack = humanoid:LoadAnimation(rAnimation)
                end
                rTrack:Play()

                local power = 175
                local direction = root.CFrame.LookVector
                root.Velocity = direction * power + Vector3.new(0, 100, 0)

                wait(1)
                character.HumanoidRootPart.Anchored = true
                rTrack:Stop()

                local args = {
                    [1] = "Bomb"
                }
                replicatedStorage:WaitForChild("RetroAbility"):FireServer(unpack(args))
                wait(1)
                character.HumanoidRootPart.Anchored = false
            end
            currentCooldown = cooldownTime
            cooldownFrame.Visible = true
            rButton.Visible = true
            updateCooldown()
            canRPlay = true
        end
    end
end

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.R then
        performRAbility()
    end
end)

rButton.MouseButton1Click:Connect(performRAbility)

game:GetService("RunService").Heartbeat:Connect(function()
    if character:FindFirstChild(toolName) then
        if not scytheEquipped then
            scytheEquipped = true
        end
        rButton.Visible = true
        cooldownFrame.Visible = cooldownFrame.Visible

        character:FindFirstChild(toolName).Glove.Size = Vector3.new(15, 15, 15)
        local args = { [1] = "ScytheWeapon" }
        replicatedStorage:WaitForChild("Scythe"):FireServer(unpack(args))

        if fakeScythe and fakeScythe.Parent == game.Lighting and isAlive then
            fakeScythe.Parent = character:FindFirstChild("Right Arm")
        end
    else
        if scytheEquipped then
            scytheEquipped = false
        end
        rButton.Visible = false

        if fakeScythe then
            fakeScythe.Parent = game.Lighting
        end
    end
end)

humanoid.Died:Connect(function()
    isAlive = false
    if fakeScythe then
        fakeScythe.Parent = game.Lighting
    end
end)

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoid = newCharacter:WaitForChild("Humanoid")
    track = nil
    rTrack = nil
    scytheEquipped = false

    isAlive = true

    if mouse then
        mouse.Button1Down:Connect(playLeftClickAnimation)
    end

    initializeFakeScythe()
end)

mouse.Button1Down:Connect(playLeftClickAnimation)

initializeFakeScythe()
