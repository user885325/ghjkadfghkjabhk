local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local MainWindow = Library:NewWindow("Auto Protect")
local Tab1 = MainWindow:NewSection("Main")

local autoEzEnabled = false
local target = ""

local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "YOU MUST EQUIP GUARDIAN ANGEL TO USE THIS SCRIPT.";
    Duration = 5;
})

local safeplace = Instance.new("Part")
safeplace.Parent = game.Workspace
safeplace.Anchored = true
safeplace.Name = "safepart"
safeplace.CFrame = CFrame.new(4814, 180, 6440)
safeplace.Size = Vector3.new(100, 2, 100)

local players = {}
for _, player in pairs(game:GetService("Players"):GetPlayers()) do
    if player.Name ~= game.Players.LocalPlayer.Name then
        table.insert(players, player.Name)
    end
end

Tab1:CreateDropdown("Select Player", players, 1, function(selectedPlayer)
    target = selectedPlayer
end)

Tab1:CreateToggle("Auto Protect", function(value)
    autoEzEnabled = value
    if autoEzEnabled then
        while autoEzEnabled do
            local player = game:GetService("Players"):FindFirstChild(target)
            if player then
                local args = {
                    [1] = player
                }
                game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
            end
            wait(0.1)
        end
    end
end)

Tab1:CreateButton("TP to safe place", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4814, 182, 6440)
end)

Tab1:CreateButton("TP to arena", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
end)
