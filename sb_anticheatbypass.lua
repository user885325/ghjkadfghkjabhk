if identifyexecutor() and identifyexecutor() == "RobloxStudio.exe" then
    while true do
    game:Shutdown()
    end
end

local Players = game:GetService("Players")
local StarterPlayer = game:GetService("StarterPlayer")

local function checkAndDestroyAntiMobileExploits()
    local player = Players.LocalPlayer
    local antiMobileExploits = StarterPlayer.StarterPlayerScripts:FindFirstChild("ClientAnticheat")

    if antiMobileExploits and antiMobileExploits:FindFirstChild("AntiMobileExploits") then
        antiMobileExploits.AntiMobileExploits:Destroy()
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Success",Text = "Anti-cheat bypassed!" ,Duration = 3, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Anti-cheat not found or already bypassed." ,Duration = 3, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
    end
end
if game.PlaceId == 9431156611 then
    
if hookmetamethod and getnamecallmethod then
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WS2" then
       return
   end
   return Namecall(self, ...)
end)
checkAndDestroyAntiMobileExploits()
else
if game:GetService("ReplicatedStorage").Events:FindFirstChild("Ban") then
game:GetService("ReplicatedStorage").Events.Ban:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("WS") then
game:GetService("ReplicatedStorage").Events.WS:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("AdminGUI") then
game:GetService("ReplicatedStorage").Events.AdminGUI:Destroy()
end
if game:GetService("ReplicatedStorage").Events:FindFirstChild("WS2") then
game:GetService("ReplicatedStorage").Events["WS2"]:Destroy()
end
checkAndDestroyAntiMobileExploits()
end
    
else
    
if hookmetamethod and getnamecallmethod then
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "GRAB" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "SpecialGloveAccess" then
       return
   end
   return Namecall(self, ...)
end)
checkAndDestroyAntiMobileExploits()
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Ban") then
game:GetService("ReplicatedStorage").Ban:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("WalkSpeedChanged") then
game:GetService("ReplicatedStorage").WalkSpeedChanged:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("AdminGUI") then
game:GetService("ReplicatedStorage").AdminGUI:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("GRAB") then
game:GetService("ReplicatedStorage").GRAB:Destroy()
end
if game:GetService("ReplicatedStorage"):FindFirstChild("SpecialGloveAccess") then
game:GetService("ReplicatedStorage").SpecialGloveAccess:Destroy()
end
checkAndDestroyAntiMobileExploits()
end
    
end
