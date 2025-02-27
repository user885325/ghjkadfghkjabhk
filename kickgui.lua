local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

StarterGui:SetCore("SendNotification", {
    Title = "NOTE";
    Text = "YOU MUST EQUIP GRAB GLOVE TO USE THIS SCRIPT.";
    Duration = 5;
})


local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local MainWindow = Library:NewWindow("KICK GUI")
local Tab1 = MainWindow:NewSection("Main")

local TargetName = ""

Tab1:CreateTextbox("Enter Target Name", function(text)
    TargetName = text:lower()
end)

Tab1:CreateButton("Execute", function()
    local localPlayer = game.Players.LocalPlayer
    local targetPlayer = nil

    for _, player in pairs(game.Players:GetChildren()) do
        if player.Name:lower():sub(1, #TargetName) == TargetName then
            targetPlayer = player
            break
        end
    end

    if not targetPlayer or targetPlayer == localPlayer then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "ERROR";
            Text = "INVALID TARGET OR YOU CANNOT TARGET YOURSELF";
            Duration = 5;
        })
        return
    end

    if targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetChar = targetPlayer.Character
        local behindOffset = -targetChar.HumanoidRootPart.CFrame.LookVector * 3
        local localChar = localPlayer.Character

        if localChar and localChar:FindFirstChild("HumanoidRootPart") and localChar.isInArena.Value == true and 
           localPlayer.leaderstats.Glove.Value == "Grab" and localChar:FindFirstChild("Grab") and targetPlayer.Character.isInArena.Value == true then
            local oldpos = localChar.HumanoidRootPart.CFrame
            local args = { [1] = "grow" }
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
            wait(0.5)
            game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
            localChar.HumanoidRootPart.CFrame = targetChar.HumanoidRootPart.CFrame + behindOffset
            for _, v in pairs(workspace.Lobby.brazil:GetChildren()) do
                v.CanTouch = false
            end
            wait(0.5)
            localChar.HumanoidRootPart.CFrame = workspace.Lobby.brazil.portal.CFrame + Vector3.new(0, 5, 0)
            wait(1)
            localChar.HumanoidRootPart.CFrame = workspace.Lobby.brazil.portal.CFrame + Vector3.new(0, 5, 0)
            localChar.HumanoidRootPart.Anchored = true
            wait(5)
            localChar.HumanoidRootPart.Anchored = false
            localChar.HumanoidRootPart.CFrame = oldpos
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "ERROR";
                Text = "YOU ARE NOT IN ARENA OR YOU DONT HAVE GLOVE GRAB EQUIPPED OR TARGET IS NOT IN ARENA";
                Duration = 5;
            })
        end
    end
end)
