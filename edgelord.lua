local slapmode = _G.slapmode 
local feaura = _G.feaura
local fakeaura = _G.fakeaura
local godmode = _G.godmode


-----------------------------
--[[
_G.slapmode = 1 -- put 1 for free, put 2 for rhythm
_G.feaura = false -- set to true to enable aura that all people see (need kinetic glove)
_G.fakeaura = false -- set to true to enable aura that only you see
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
    end
end

if feaura == true then
    checkGlove()
end

if fakeaura == true then
local function a(b)local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local c=Instance.new("ParticleEmitter")c.Texture="rbxassetid://833874434"c.Brightness=2;c.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})c.LightEmission=0.5;c.LightInfluence=1;c.Orientation=Enum.ParticleOrientation.FacingCamera;c.Size=NumberSequence.new(0.9)c.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})c.ZOffset=-1;c.Lifetime=NumberRange.new(2)c.Rate=50;c.Rotation=NumberRange.new(0)c.RotSpeed=NumberRange.new(-100,100)c.Speed=NumberRange.new(0.5)c.SpreadAngle=Vector2.new(15,15)c.EmissionDirection=Enum.NormalId.Top;c.Shape=Enum.ParticleEmitterShape.Box;c.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;c.ShapePartial=1;c.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;c.Enabled=true;local d=Instance.new("ParticleEmitter")d.Texture="rbxassetid://3876444567"d.Brightness=1;d.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,22,42)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(21,42,148)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,50,148))})d.LightEmission=0.8;d.LightInfluence=0;d.Orientation=Enum.ParticleOrientation.FacingCamera;d.Size=NumberSequence.new(1)d.Transparency=NumberSequence.new(0)d.Drag=0;d.Lifetime=NumberRange.new(0.1)d.Rate=100;d.SpreadAngle=Vector2.new(1,1)d.Speed=NumberRange.new(2)d.VelocitySpread=10;d.EmissionDirection=Enum.NormalId.Top;d.Shape=Enum.ParticleEmitterShape.Box;d.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward;d.ShapePartial=1;d.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume;d.Enabled=true;c.Parent=b;d.Parent=b;return c,d end;local e={}for f,g in ipairs({"Head","Torso","Left Arm","Right Arm","Left Leg","Right Leg"})do local b=game.Players.LocalPlayer.Character:FindFirstChild(g)if b then local h,i=a(b)table.insert(e,{aura=h,glitch=i})end end
end

wait(1)
if slapmode == 1 then
elseif slapmode == 2 then
    fireclickdetector(game.Workspace.Lobby["Rhythm"].ClickDetector)
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
        local args = {
            [1] = "dash"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("slapstick"):FireServer(unpack(args))
    elseif slapmode == 2 then
        local args = {
            [1] = "AoeExplosion",
            [2] = 42
        }
        game:GetService("ReplicatedStorage"):WaitForChild("rhythmevent"):FireServer(unpack(args))
    end
    wait(1.5)
    cooldown = false
end)

RunService.RenderStepped:Connect(function()
    if slapActive then
        slapPlayers()
    end
end)
