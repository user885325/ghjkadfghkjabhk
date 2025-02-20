local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

local lastCFrame = nil
local lolbombUsed = false
local toolName = "L.O.L.B.O.M.B"
local connections = {}

local function isScriptRunning()
    return ReplicatedStorage:FindFirstChild("lolbombexecuted") ~= nil
end

local function isCreditShown()
    return ReplicatedStorage:FindFirstChild("creditsshown") ~= nil
end

local function sendNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration;
    })
end

if not isCreditShown() then
    local creditMarker = Instance.new("Part")
    creditMarker.Name = "creditsshown"
    creditMarker.Parent = ReplicatedStorage
    sendNotification("CREDIT", "MADE BY USER885325", 5)
end

local function hasLOLbomb()
    local backpack = player:FindFirstChild("Backpack")
    local character = player.Character

    if backpack then
        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name == toolName then
                return true
            end
        end
    end

    if character then
        local tool = character:FindFirstChildOfClass("Tool")
        if tool and tool.Name == toolName then
            return true
        end
    end

    return false
end

local function detectLOLbomb(character)
    if not hasLOLbomb() then return false end

    for _, v in pairs(character:GetChildren()) do
        if v:IsA("Highlight") and v.FillColor == Color3.fromRGB(255, 0, 0) then
            return true
        end
    end
    return false
end

local function enableScript()
    if isScriptRunning() then return end

    local marker = Instance.new("Part")
    marker.Name = "lolbombexecuted"
    marker.Parent = ReplicatedStorage

    sendNotification("LOLBOMB TP", "Enabled", 3)

    local function onCharacterAdded(character)
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local detectLoop = task.spawn(function()
            while character.Parent and isScriptRunning() do
                if detectLOLbomb(character) then
                    lastCFrame = humanoidRootPart.CFrame
                    lolbombUsed = true
                    break
                end
                task.wait(0.1)
            end
        end)

        local deathConnection = character:WaitForChild("Humanoid").Died:Connect(function()
            if lolbombUsed and lastCFrame then
                player.CharacterAdded:Wait()
                task.wait(1)

                local newCharacter = player.Character
                if newCharacter then
                    local newHumanoidRootPart = newCharacter:WaitForChild("HumanoidRootPart")

                    local teleportPart = workspace:FindFirstChild("Lobby") and workspace.Lobby:FindFirstChild("Teleport1")
                    if teleportPart then
                        firetouchinterest(newHumanoidRootPart, teleportPart, 0)
                        firetouchinterest(newHumanoidRootPart, teleportPart, 1)
                    end

                    while not hasLOLbomb() and isScriptRunning() do
                        task.wait(0.5)
                    end

                    if isScriptRunning() then
                        newHumanoidRootPart.CFrame = lastCFrame
                    end

                    lolbombUsed = false
                end
            end
        end)

        table.insert(connections, detectLoop)
        table.insert(connections, deathConnection)
    end

    local characterConnection = player.CharacterAdded:Connect(onCharacterAdded)
    table.insert(connections, characterConnection)

    if player.Character then
        onCharacterAdded(player.Character)
    end
end

local function disableScript()
    if not isScriptRunning() then return end

    local marker = ReplicatedStorage:FindFirstChild("lolbombexecuted")
    if marker then marker:Destroy() end

    sendNotification("LOLBOMB TP", "Disabled", 3)

    for _, conn in pairs(connections) do
        if typeof(conn) == "RBXScriptConnection" then
            conn:Disconnect()
        elseif typeof(conn) == "thread" then
            task.cancel(conn)
        end
    end

    connections = {}
end

if isScriptRunning() then
    disableScript()
else
    enableScript()
end
