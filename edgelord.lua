local slapmode = _G.slapmode
local feaura = _G.feaura
local fakeaura = _G.fakeaura
local music = _G.music
local godmode = _G.godmode


-----------------------------
--[[
--NOTE: SLAP MODE 1 DOESNT WORK WITH GOD MODE!!!
_G.slapmode = 1 -- put 1 for free, put 2 for free v2, put 3 for rhythm
_G.feaura = false -- set to true to enable aura that all people see (need kinetic glove)
_G.fakeaura = false -- set to true to enable aura that only you see
_G.music = false -- set to true to enable sound (only you hear)
_G.godmode = false -- set to true to get god mode
]]
-----------------------------

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

local player = game.Players.LocalPlayer
local function PlrHasGlove(Name)
    if player and player:FindFirstChild("_unlockedGloves") then
        if player._unlockedGloves:FindFirstChild(Name) and player._unlockedGloves:FindFirstChild(Name).Value == true then
            return true
        end
    end
    return false
end

local function checkGlove()
    if PlrHasGlove("Kinetic") then
        local oldglovee = player.leaderstats.Glove.Value
        fireclickdetector(game.Workspace.Lobby.Kinetic.ClickDetector)
        wait(1)
        local lastpos = player.Character.HumanoidRootPart.CFrame

        player.Character.HumanoidRootPart.CFrame = CFrame.new(99999, 99999, 99999)
        wait(0.5)
        player.Character.HumanoidRootPart.Anchored = true

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
        player.Character.HumanoidRootPart.CFrame = lastpos
        player.Character.HumanoidRootPart.Anchored = false
        fireclickdetector(game.Workspace.Lobby[oldglovee].ClickDetector)
    else
        local StarterGui = game:GetService("StarterGui")
        StarterGui:SetCore("SendNotification", {
            Title = "ERROR";
            Text = "YOU NEED GLOVE KINETIC FOR THIS!!!";
            Duration = 5;
        })
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end

if feaura == true then
    checkGlove()
end

if fakeaura == true then
--Converted to LUA using ModelToLua v2.1
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local limbs = { "Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "HumanoidRootPart" }

local ModelEffect = game:GetObjects("rbxassetid://14949130713")[1]
local particleEmitters = {}

local highlight = Instance.new("Highlight")
highlight.FillColor = Color3.fromRGB(0, 0, 0)
highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
highlight.Enabled = true
highlight.Parent = character

if ModelEffect then
    for _, limbName in ipairs(limbs) do
        local limb = character:FindFirstChild(limbName)
        if limb then
            for _, part in ipairs(ModelEffect.HumanoidRootPart:GetChildren()) do
                if part:IsA("ParticleEmitter") then
                    local clonedEmitter = part:Clone()
                    clonedEmitter.Parent = limb
                    clonedEmitter:Emit(100)
                    table.insert(particleEmitters, clonedEmitter)
                end
            end
        end
    end
end

end

if music == true then
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://9133844756"
Sound.Looped = true
Sound.Parent = game.Players.LocalPlayer.Character
Sound:Play()
end

wait(1)
if slapmode == 1 then
fireclickdetector(game.Workspace.Lobby["Default"].ClickDetector)
elseif slapmode == 2 then
elseif slapmode == 3 then
if PlrHasGlove("Rhythm") then
    fireclickdetector(game.Workspace.Lobby["Rhythm"].ClickDetector)
else
game.Players.LocalPlayer.Character.Humanoid.Health = 0
local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
    Title = "ERROR";
    Text = "YOU NEED GLOVE RHYTHM FOR THIS!!!";
    Duration = 5;
})
end
else
return
end

wait(1)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

humanoid.WalkSpeed = 30

local moveAnimation = Instance.new("Animation")
moveAnimation.AnimationId = "rbxassetid://16163350920"
local idleAnimation = Instance.new("Animation")
idleAnimation.AnimationId = "rbxassetid://16163355836"

local moveAnimTrack = humanoid:LoadAnimation(moveAnimation)
local idleAnimTrack = humanoid:LoadAnimation(idleAnimation)

idleAnimTrack.Looped = true
moveAnimTrack.Looped = true
idleAnimTrack:Play()

local function updateAnimation()
    if humanoid.MoveDirection.Magnitude > 0 then
        if not moveAnimTrack.IsPlaying then
            idleAnimTrack:Stop()
            moveAnimTrack:Play()
        end
    else
        if not idleAnimTrack.IsPlaying then
            moveAnimTrack:Stop()
            idleAnimTrack:Play()
        end
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(updateAnimation)

if character then
    if godmode == true then
        character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-6, 4, 1))
    else
        player.Character.HumanoidRootPart.CFrame = workspace.Lobby.Teleport1.CFrame
    end
end

local function playSlapAnimation()
    local slapAnimation = Instance.new("Animation")
    slapAnimation.AnimationId = "rbxassetid://16102717448"

    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character:FindFirstChild("Humanoid")
        humanoid.WalkSpeed = 30
        local animTrack = humanoid:LoadAnimation(slapAnimation)
        animTrack:Play()
        animTrack.Looped = false
    end
end

local tool = Instance.new("Tool")
tool.Name = "edgelord"
tool.RequiresHandle = false
tool.Parent = player.Backpack

bin=Instance.new("HopperBin",game:service'Players'.LocalPlayer.Backpack)bin.Name="Teleport"function teleportPlayer(a)local b=game:service'Players'.LocalPlayer;if b==nil or b.Character==nil then return end;local c=b.Character;c:MoveTo(a)end;enabled=true;function onButton1Down(d)if not enabled then return end;local b=game:service'Players'.LocalPlayer;if b==nil then return end;local e=d.Hit;teleportPlayer(e.p)end;function onSelected(d)d.Button1Down:connect(function()onButton1Down(d)end)end;bin.Selected:connect(onSelected)

local cooldown = false

tool.Activated:Connect(function()
    if cooldown then return end
    cooldown = true
    playSlapAnimation()
    if slapmode == 1 then
    function isSpawned(player)
   if workspace:FindFirstChild(player.Name) and player.Character:FindFirstChild("HumanoidRootPart") then
       return true
   else
       return false
   end
end

for i, v in pairs(game.Players:GetPlayers()) do
       if isSpawned(v) and v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("UnoReverseCard") then
           if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
               game:GetService("ReplicatedStorage").b:FireServer(v.Character["Right Arm"])
               wait(0.1)
           end
       end
   end
    elseif slapmode == 2 then
        local args = {
            [1] = "dash"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("slapstick"):FireServer(unpack(args))
    elseif slapmode == 3 then
        local args = {
            [1] = "AoeExplosion",
            [2] = 42
        }
        game:GetService("ReplicatedStorage"):WaitForChild("rhythmevent"):FireServer(unpack(args))
    end
    wait(1)
    cooldown = false
end)

RunService.RenderStepped:Connect(function()
    if slapActive then
        slapPlayers()
    end
end)
