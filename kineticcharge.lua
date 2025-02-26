local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local TeleportService = game:GetService("TeleportService")
local Workspace = game:GetService("Workspace")

local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.BorderSizePixel = 0
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0.3, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Kinetic Charger"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold

local ToggleButton = Instance.new("TextButton", Frame)
ToggleButton.Size = UDim2.new(0.8, 0, 0.4, 0)
ToggleButton.Position = UDim2.new(0.1, 0, 0.5, 0)
ToggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Text = "Charge"
ToggleButton.TextScaled = true
ToggleButton.Font = Enum.Font.GothamBold

local ButtonCorner = Instance.new("UICorner", ToggleButton)
ButtonCorner.CornerRadius = UDim.new(0, 10)

local function sendNotification(message)
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = "Credits",
        Text = message,
        Duration = 5
    })
end

sendNotification("Script made by user885325")

ToggleButton.MouseButton1Click:Connect(function()
	local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(99999, 99999, 99999)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

local function charge()
    local camera = game:GetService("Workspace").CurrentCamera
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local selfKnockback = replicatedStorage:WaitForChild("SelfKnockback")
    local cameraLookVector = camera.CFrame.LookVector
    local knockBackDirection = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit
    knockBackDirection = knockBackDirection + (Vector3.new(0, 1, 0) * 0.5)

    selfKnockback:FireServer({
        ["Force"] = 1,
        ["Direction"] = knockBackDirection
    })
end

local sigma = 150

while sigma <= 150 and sigma >= 0 do
    wait()
    sigma -= 1
    charge()
end

wait(0.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  lastpos
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

end)
