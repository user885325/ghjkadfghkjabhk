local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local MainWindow = Library:NewWindow("Auto Angler")
local Tab1 = MainWindow:NewSection("Main")

local autoEzEnabled = false

local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "YOU MUST EQUIP ANGLER TO USE THIS SCRIPT.";
    Duration = 5;
})

local safeplace = Instance.new("Part")
safeplace.Parent = game.Workspace
safeplace.Anchored = true
safeplace.Name = "anglersafepart"
safeplace.CFrame = CFrame.new(4814, 180, 6440)

Tab1:CreateToggle("Auto Angler Fish", function(value)
    autoEzEnabled = value
    if autoEzEnabled then
        while autoEzEnabled do
            local args1 = {
                [1] = "set_tool",
                [2] = {
                    [1] = "rod"
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Fisherman"):FireServer(unpack(args1))
            game.Players.LocalPlayer.Character.Torso.Anchored = true --anti slap
            local args2 = {
                [1] = "cast"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Fisherman"):FireServer(unpack(args2))
            wait(0.1)
        end
    else
        game.Players.LocalPlayer.Character.Torso.Anchored = false
        local args = {
                [1] = "retract"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Fisherman"):FireServer(unpack(args))
    end
end)

Tab1:CreateButton("TP to safe place", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4814, 182, 6440)
end)

Tab1:CreateButton("TP to arena", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
end)
