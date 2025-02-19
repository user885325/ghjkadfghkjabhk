local StarterGui = game:GetService("StarterGui")
local ChatService = game:GetService("Chat")

StarterGui:SetCore("SendNotification", {
    Title = "CREDIT";
    Text = "MADE BY USER885325";
    Duration = 5;
})

workspace.Lobby.GloveStands.MR.GloveDesc.DescOutline.DescFrame.ImageLabel.Image = "rbxassetid://83862755778814"
workspace.Lobby.GloveStands.MR.GloveDesc.DescOutline.DescFrame.Ability.Text = "Ability: Szemtelen Manó"
workspace.Lobby.GloveStands.MR.GloveDesc.DescOutline.DescFrame:FindFirstChild("Name").Text = "Cheeky"
workspace.Lobby.MR.Transparency = 0
workspace.Lobby.MR["Meshes/smile (2)"]:Destroy()
local decal = Instance.new("Decal")
decal.Texture = "rbxassetid://8681671634"
decal.Parent = workspace.Lobby.MR

local player = game.Players.LocalPlayer
local jokes = {
    "Yo mama's so stupid, she took a ruler to bed to see how long she slept.",
    "Yo mama's so stupid, when they said Order in the court, she asked for fries and a shake.",
    "Yo mama's so fat, when she fell I didn't laugh, but the sidewalk cracked up.",
    "Yo mama's so fat, her car has stretch marks.",
    "Yo mama's so fat, that when she went to space, there was no space.",
    "Yo mama's so fat, when she skips a meal, the stock market drops.",
    "Yo mama's so fat, she stepped on a scale and it said: To be continued",
    "Yo mama's so fat, she doesn't need internet, SHE'S ALREADY WORLDWIDE!",
    "Yo mama's so fat, if she buys a fur coat, a whole species will be extinct.",
    "Yo mama's so fat, when she goes camping, the bears hide their food.",
    "Yo mama's so fat, when she sits around the house, she SITS AROUND the house.",
    "Yo mama's so stupid, she puts lipstick on her forehead to make up her mind.",
    "Yo mama's so stupid, she was overthrown by a small militia, and now she's known as the Republic of Yo mama.",
    "Yo mama's so stupid, she stared at a cup of orange juice for 12 hours because it said concentrate.",
    "Yo mama's almost fat as xXMurderousSn0wXx's mama."
}

local function handleSphere(sphere)
    if sphere then
        sphere.Transparency = 0
        local meshPart = sphere:FindFirstChildOfClass("MeshPart")
        if meshPart then
            meshPart:Destroy()
        end
        for _, obj in pairs(sphere:GetChildren()) do
            if obj:IsA("Sound") and obj.Name == "Sound" then
                obj:Destroy()
            end
        end
        local existingCheekysound = sphere:FindFirstChild("cheekysound")
        if not existingCheekysound then
            local decal = Instance.new("Decal")
            decal.Texture = "rbxassetid://10331863468"
            decal.Parent = sphere
            local cheekysound = Instance.new("Sound")
            cheekysound.Name = "cheekysound"
            cheekysound.SoundId = "rbxassetid://9133795425"
            cheekysound.Parent = sphere
            cheekysound.Volume = 1.5
            cheekysound.Playing = true
            cheekysound.Looped = true
        end
    end
end

local function updateTool()
    local tool = player.Backpack:FindFirstChild("MR") or player.Character:FindFirstChild("MR")
    if tool then
        tool.Name = "Cheeky"
        tool.ToolTip = "he is ball"
        tool.Glove.Transparency = 0
        tool.Glove["Meshes/smile (2)"]:Destroy()
        tool.Handle.Transparency = 0
        local decal = Instance.new("Decal")
        decal.Texture = "rbxassetid://8681671634"
        decal.Parent = tool.Glove
    end
end

local function updateLeaderboard()
    local leaderstats = player:FindFirstChild("leaderstats")
    local gloveStat = leaderstats and leaderstats:FindFirstChild("Glove")
    if gloveStat and gloveStat.Value == "MR" then
        gloveStat.Value = "Cheeky"
    end
end

local jokeLoopRunning = false

local function jokeLoop()
    if jokeLoopRunning then return end
    jokeLoopRunning = true

    while jokeLoopRunning and player.Character do
        local sphere = player.Character:FindFirstChild("Sphere")

        if sphere then
            local jokeIndex = math.random(#jokes)
            ChatService:Chat(sphere, jokes[jokeIndex], 0)
            wait(3)

            while jokeLoopRunning and player.Character and player.Character:FindFirstChild("Sphere") do
                local newJokeIndex
                repeat
                    newJokeIndex = math.random(#jokes)
                until newJokeIndex ~= jokeIndex
                
                jokeIndex = newJokeIndex
                ChatService:Chat(sphere, jokes[jokeIndex], 0)
                wait(3)
            end
        end
        
        if not player.Character or not player.Character:FindFirstChild("Sphere") then
            jokeLoopRunning = false
            return
        end
    end
end

local function continuousUpdate()
    while true do
        updateLeaderboard()
        updateTool()
        local sphere = player.Character and player.Character:FindFirstChild("Sphere")
        if sphere then
            handleSphere(sphere)
            if not jokeLoopRunning then
                spawn(jokeLoop)
            end
        else
            jokeLoopRunning = false
        end
        wait(0.1)
    end
end

player.CharacterAdded:Connect(function()
    spawn(continuousUpdate)
end)

if player.Character then
    spawn(continuousUpdate)
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby.GloveStands.MR.CFrame
