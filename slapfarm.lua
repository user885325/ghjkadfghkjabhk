local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua"))()
local Window = OrionLib:MakeWindow({IntroText = "Slap Battles 👏",Name = "Slap Battles Slap Farm GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionConfig"})

local Tab = Window:MakeTab({
    Name = "Info",
    Icon = "rbxassetid://7733964719",
    PremiumOnly = false
})

Tab:AddLabel("Script made by user885325")
Tab:AddLabel("I'm not responsible for any bans/slap resets!!! ")

local Tab2 = Window:MakeTab({
    Name = "Safe",
    Icon = "rbxassetid://7734059180",
    PremiumOnly = false
})

Tab2:AddToggle({
	Name = "Slapple AutoFarm",
	Default = false,
	Callback = function(Value)
	    SlappleFarm = Value
while SlappleFarm do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
       end
task.wait()
end
	end    
})

Tab2:AddToggle({
    Name = "Baller Slap Farm (use ability yourself)",
    Default = false,
    Callback = function(Value)
        BallerSlap = Value
        while BallerSlap do
            if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
                local playername = game.Players.LocalPlayer.Name

                local args = {
                    [1] = workspace:WaitForChild("\195\133Baller" .. playername):WaitForChild("Head")
                }

                game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(unpack(args))
                task.wait(0.1)  -- Use task.wait() instead of wait()
            end
            task.wait(0.1)  -- Add a small delay to prevent infinite busy looping
        end
    end
})


local ToggleEnabled = false
local Tab3 = Window:MakeTab({
    Name = "Risky",
    Icon = "rbxassetid://7734058599",
    PremiumOnly = false
})

Tab3:AddToggle({
    Name = "Slow Slap Farm (boxer glove needed) [✅ STABLE]",
    Default = false,
    Callback = function(Value)
        BoxerFarmEnabled = Value
        if BoxerFarmEnabled then
            -- Check if the player has the Boxer glove
            local function PlrHasGlove(Name)
                local LocalPlayer = game.Players.LocalPlayer
                if LocalPlayer and LocalPlayer:FindFirstChild("_unlockedGloves") then
                    if LocalPlayer._unlockedGloves:FindFirstChild(Name) and LocalPlayer._unlockedGloves:FindFirstChild(Name).Value == true then
                        return true
                    end
                end
                return false
            end

            local function sendNotification(message)
                local StarterGui = game:GetService("StarterGui")
                StarterGui:SetCore("SendNotification", {
                    Title = "Note",
                    Text = message,
                    Duration = 5
                })
            end

            local isEnabled = false
            local Lobby = workspace.Lobby

            -- Core logic for the Boxer Slap Farm
            local function toggleScript()
                isEnabled = not isEnabled
                if isEnabled then
                    -- Check if the player has the Boxer glove
                    if not PlrHasGlove("Boxer") then
                        sendNotification("You must have the Boxer glove first.")
                        isEnabled = false
                        return
                    else
                        sendNotification("Boxer glove exists, starting slap farm...")
                    end

                    -- Start the loop when enabled
                    while isEnabled do
                        -- Check if the player is in the arena
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("isInArena") and game.Players.LocalPlayer.Character.isInArena.Value == true then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                                game.Players.LocalPlayer.Character.Humanoid.Health = 0 -- Kill the player
                            end

                            -- Wait for the player to respawn
                            repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
                            wait(1) -- Additional wait to ensure stability after respawn
                        end

                        -- Equip the Boxer glove after respawning or if not in the arena
                        if game.Players.LocalPlayer.leaderstats and game.Players.LocalPlayer.leaderstats:FindFirstChild("Glove") and game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Boxer" then
                            fireclickdetector(Lobby.Boxer.ClickDetector)
                        end

                        for i = 1, 30 do
                            for _, p in pairs(game.Players:GetPlayers()) do
                                if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                                    isEnabled = false -- Exit if the player dies
                                    return
                                end

                                local args = {
                                    [1] = p,
                                    [2] = false
                                }
                                game:GetService("ReplicatedStorage").Events.Boxing:FireServer(unpack(args))

                                local args = {
                                    [1] = p,
                                    [2] = true
                                }
                                game:GetService("ReplicatedStorage").Events.Boxing:FireServer(unpack(args))

                                wait(0.1)
                            end
                        end
                        wait(0.1)
                    end
                else
                    -- Kill the player when disabled
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    end
                end
            end

            -- Call the toggle function to start the process
            toggleScript()
        else
            -- If the toggle is turned off, stop the script
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
        end
    end
})



Tab3:AddToggle({
    Name = "Fast Slap Farm (el gato + replica) [⚠️ UNSTABLE]",
    Default = false,
    Callback = function(Value)
        ToggleEnabled = Value
        if ToggleEnabled then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua"))()

if workspace:FindFirstChild("Safespot") == nil then
local Safespot = Instance.new("Part",workspace)
Safespot.Name = "Safespot"
Safespot.Position = Vector3.new(10000,-50,10000)
Safespot.Size = Vector3.new(500,100,500)
Safespot.Anchored = true
Safespot.CanCollide = true
Safespot.Transparency = .5
end

fireclickdetector(workspace.Lobby["el gato"].ClickDetector)
wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Cat"):FireServer()
wait(0.3)
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport2.CFrame
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Safespot.CFrame + Vector3.new(0, 25, 0)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Duplicate"):FireServer()
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
local playername = game.Players.LocalPlayer.Name

local args = {
    [1] = workspace:WaitForChild("\195\133" .. playername):WaitForChild("Torso")
}

for i = 1, 20000 do 
    game:GetService("ReplicatedStorage"):WaitForChild("ReplicaHit"):FireServer(unpack(args))
    wait(0.001)
	if i == 20000 then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end
end
        end
    end
})

local Tab4 = Window:MakeTab({
    Name = "Other",
    Icon = "rbxassetid://7733993147",
    PremiumOnly = false
})

Tab4:AddButton({
	Name = "Serverhop",
	Callback = function()
      		Time = 1 -- seconds
repeat wait() until game:IsLoaded()
wait(Time)
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
   local Site;
   if foundAnything == "" then
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
   else
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
   end
   local ID = ""
   if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
       foundAnything = Site.nextPageCursor
   end
   local num = 0;
   for i,v in pairs(Site.data) do
       local Possible = true
       ID = tostring(v.id)
       if tonumber(v.maxPlayers) > tonumber(v.playing) then
           for _,Existing in pairs(AllIDs) do
               if num ~= 0 then
                   if ID == tostring(Existing) then
                       Possible = false
                   end
               else
                   if tonumber(actualHour) ~= tonumber(Existing) then
                       local delFile = pcall(function()
                           delfile("NotSameServers.json")
                           AllIDs = {}
                           table.insert(AllIDs, actualHour)
                       end)
                   end
               end
               num = num + 1
           end
           if Possible == true then
               table.insert(AllIDs, ID)
               wait()
               pcall(function()
                   writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                   wait()
                   game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
               end)
               wait(4)
           end
       end
   end
end

function Teleport()
   while wait() do
       pcall(function()
           TPReturner()
           if foundAnything ~= "" then
               TPReturner()
           end
       end)
   end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
  	end    
})
OrionLib:Init()
