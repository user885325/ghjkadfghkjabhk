local bobfarm = Instance.new("ScreenGui", game:GetService("CoreGui"))

local Frame = Instance.new("Frame")
local uidrag = Instance.new("UIDragDetector")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "CREDIT",Text = "MADE BY USER885325" ,Duration = 5})

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "NOTE",Text = "USE IN LOBBY" ,Duration = 5})


if  game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title = "NOTE",Text = "Congratulations, you already have bob! ;)" ,Duration = 5})
	fireclickdetector(game:GetService("Workspace").Lobby.bob.ClickDetector)
end

bobfarm.Name = "bobfarm"
bobfarm.Parent = game:GetService("CoreGui")
bobfarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = bobfarm
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.406521738, 0, 0.358208954, 0)
Frame.Size = UDim2.new(0, 257, 0, 227)

uidrag.Parent = Frame

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 2
title.Size = UDim2.new(0, 257, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "        BOB FARM GUI"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 29.000
title.TextXAlignment = Enum.TextXAlignment.Left

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.805447459, 0, 0, 0)
close.Size = UDim2.new(0, 50, 0, 50)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 30.000

button1.Name = "button1"
button1.Parent = Frame
button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
button1.BorderSizePixel = 2
button1.Position = UDim2.new(0.0272373538, 0, 0.24669604, 0)
button1.Size = UDim2.new(0, 243, 0, 50)
button1.Font = Enum.Font.SourceSans
button1.Text = "Instant BOB (need god hand)"
button1.TextColor3 = Color3.fromRGB(0, 0, 0)
button1.TextSize = 23.000
button1.TextWrapped = true

button2.Name = "button2"
button2.Parent = Frame
button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
button2.BorderSizePixel = 2
button2.Position = UDim2.new(0.0272373538, 0, 0.50220263, 0)
button2.Size = UDim2.new(0, 243, 0, 50)
button2.Font = Enum.Font.SourceSans
button2.Text = "Instant BOB 5% chance"
button2.TextColor3 = Color3.fromRGB(0, 0, 0)
button2.TextSize = 23.000
button2.TextWrapped = true

button3.Name = "button3"
button3.Parent = Frame
button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button3.BorderColor3 = Color3.fromRGB(0, 0, 0)
button3.BorderSizePixel = 2
button3.Position = UDim2.new(0.0272373538, 0, 0.753303945, 0)
button3.Size = UDim2.new(0, 243, 0, 50)
button3.Font = Enum.Font.SourceSans
button3.Text = "BOB FARM NORMAL: OFF"
button3.TextColor3 = Color3.fromRGB(0, 0, 0)
button3.TextSize = 23.000
button3.TextWrapped = true

local function MQAH_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
	
	script.Parent.Parent.Parent:Destroy()
		
	end)
end
coroutine.wrap(MQAH_fake_script)()

local function MJHJ_fake_script()
	local script = Instance.new('LocalScript', button1)

	script.Parent.MouseButton1Click:Connect(function()

		if not game:IsLoaded() then
			game.Loaded:Wait()
		end
		local player = game.Players.LocalPlayer
		local function PlrHasGlove(Name)
			if player and player:FindFirstChild("_unlockedGloves") then
				if player._unlockedGloves:FindFirstChild(Name) and player._unlockedGloves:FindFirstChild(Name).Value == true then
					return true
				end
			end
			return false
		end
		
		if PlrHasGlove("God's Hand") then
		else
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "ERROR",Text = "YOU DONT HAVE GOD HAND" ,Duration = 5})
			return
		end

		fireclickdetector(workspace.Lobby["God's Hand"].ClickDetector)
		task.wait(.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
		wait(1)
		game:GetService("ReplicatedStorage").TimestopJump:FireServer()
		game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
		game:GetService("ReplicatedStorage").Timestop:FireServer()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0

		task.wait(8)
		fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
		task.wait(1)
		for i = 1, 75000 do
			game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
		end
		wait(2)
		
		local ts = game:GetService("TeleportService")
		local pmo = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, pmo)

	end)
end
coroutine.wrap(MJHJ_fake_script)()


local function AJAH_fake_script()
	local script = Instance.new('LocalScript', button2)

	script.Parent.MouseButton1Click:Connect(function()

		if not game:IsLoaded() then
			game.Loaded:Wait()
		end
		local player = game.Players.LocalPlayer
		local function PlrHasGlove(Name)
			if player and player:FindFirstChild("_unlockedGloves") then
				if player._unlockedGloves:FindFirstChild(Name) and player._unlockedGloves:FindFirstChild(Name).Value == true then
					return true
				end
			end
			return false
		end

		if PlrHasGlove("Replica") then
		else
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "ERROR",Text = "YOU DONT HAVE REPLICA HAND" ,Duration = 5})
			return
		end

		fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
		task.wait(1)
		for i = 1, 75000 do
			game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
		end
		wait(2)
		
		local ts = game:GetService("TeleportService")
		local pmo = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, pmo)

	end)
end
coroutine.wrap(AJAH_fake_script)()

local function BJGH_fake_script()
	local script = Instance.new('LocalScript', button3)

	script.Parent.MouseButton1Click:Connect(function()
	    
	    local player = game.Players.LocalPlayer
		local function PlrHasGlove(Name)
			if player and player:FindFirstChild("_unlockedGloves") then
				if player._unlockedGloves:FindFirstChild(Name) and player._unlockedGloves:FindFirstChild(Name).Value == true then
					return true
				end
			end
			return false
		end
	    
	    if PlrHasGlove("Replica") then
		else
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "ERROR",Text = "YOU DONT HAVE REPLICA HAND" ,Duration = 5})
			return
		end

        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local isFarming = false
local farmingCoroutine = nil
local function toggleBobFarm()
    if not isFarming then
        isFarming = true
        button3.Text = "BOB FARM NORMAL: ON"
        farmingCoroutine = coroutine.create(function()
            if character.isInArena.Value == false then
                fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
                wait(1)
                game:GetService("ReplicatedStorage").Ghostinvisibilityactivated:FireServer()
            end
            wait(1)
            fireclickdetector(game:GetService("Workspace").Lobby.Replica.ClickDetector)
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430, -50, 1345)
            wait(0.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            wait(1)
            while isFarming and character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 do
                game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack({[1] = true}))
                wait(10)
            end
        end)
        
        coroutine.resume(farmingCoroutine)
    else
        
        local ts = game:GetService("TeleportService")
		local pmo = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, pmo)
        
    end
end

button3.MouseButton1Click:Connect(toggleBobFarm)

        
	end)
end
coroutine.wrap(BJGH_fake_script)()
