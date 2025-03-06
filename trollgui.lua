-- Gui to Lua
-- Version: 3.2

-- Instances:

local trollgui = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local trollselect = Instance.new("TextButton")
local ANNOY = Instance.new("TextButton")
local LAG = Instance.new("TextButton")
local piano = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local trollfaces = Instance.new("Frame")
local trollface1 = Instance.new("ImageButton")
local trollface2 = Instance.new("ImageButton")
local trollface3 = Instance.new("ImageButton")
local trollface4 = Instance.new("ImageButton")
local trollface5 = Instance.new("ImageButton")
local trollface6 = Instance.new("ImageButton")
local trollface7 = Instance.new("ImageButton")
local trollface8 = Instance.new("ImageButton")
local trollface9 = Instance.new("ImageButton")
local title_2 = Instance.new("TextLabel")
local close_2 = Instance.new("TextButton")
local DESTROYServer = Instance.new("TextButton")
local drag = Instance.new("UIDragDetector")

--Properties:

trollgui.Name = "trollgui"
trollgui.Parent = game:GetService("CoreGui")
trollgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = trollgui
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainframe.BorderSizePixel = 2
mainframe.Position = UDim2.new(0.747826099, 0, 0.279850751, 0)
mainframe.Size = UDim2.new(0, 303, 0, 441)
drag.Parent = mainframe

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 2
title.Position = UDim2.new(-2.01436166e-07, 0, 0, 0)
title.Size = UDim2.new(0, 303, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "   SLAP BATTLES TROLL GUI"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 26.000
title.TextXAlignment = Enum.TextXAlignment.Left

close.Name = "close"
close.Parent = mainframe
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.831683397, 0, 0, 0)
close.Size = UDim2.new(0, 50, 0, 50)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 30.000

trollselect.Name = "trollselect"
trollselect.Parent = mainframe
trollselect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollselect.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollselect.BorderSizePixel = 2
trollselect.Position = UDim2.new(0.0462046191, 0, 0.14737305, 0)
trollselect.Size = UDim2.new(0, 275, 0, 55)
trollselect.Font = Enum.Font.SourceSans
trollselect.Text = "CHANGE TROLLFACE"
trollselect.TextColor3 = Color3.fromRGB(0, 0, 0)
trollselect.TextSize = 30.000

ANNOY.Name = "ANNOY"
ANNOY.Parent = mainframe
ANNOY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ANNOY.BorderColor3 = Color3.fromRGB(0, 0, 0)
ANNOY.BorderSizePixel = 2
ANNOY.Position = UDim2.new(0.0429042913, 0, 0.292440206, 0)
ANNOY.Size = UDim2.new(0, 275, 0, 55)
ANNOY.Font = Enum.Font.SourceSans
ANNOY.Text = "ANNOY SOUND: OFF"
ANNOY.TextColor3 = Color3.fromRGB(0, 0, 0)
ANNOY.TextSize = 35.000

LAG.Name = "LAG"
LAG.Parent = mainframe
LAG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LAG.BorderColor3 = Color3.fromRGB(0, 0, 0)
LAG.BorderSizePixel = 2
LAG.Position = UDim2.new(0.0459999628, 0, 0.582070291, 0)
LAG.Size = UDim2.new(0, 275, 0, 55)
LAG.Font = Enum.Font.SourceSans
LAG.Text = "LAG SERVER: OFF"
LAG.TextColor3 = Color3.fromRGB(0, 0, 0)
LAG.TextSize = 40.000

piano.Name = "piano"
piano.Parent = mainframe
piano.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
piano.BorderColor3 = Color3.fromRGB(0, 0, 0)
piano.BorderSizePixel = 2
piano.Position = UDim2.new(0.0459999628, 0, 0.437070251, 0)
piano.Size = UDim2.new(0, 275, 0, 55)
piano.Font = Enum.Font.SourceSans
piano.Text = "SPAWN PIANO"
piano.TextColor3 = Color3.fromRGB(0, 0, 0)
piano.TextSize = 40.000

credits.Name = "credits"
credits.Parent = mainframe
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0, 0, 0.906780064, 0)
credits.Size = UDim2.new(0, 302, 0, 41)
credits.Font = Enum.Font.SourceSans
credits.Text = "MADE BY USER885325"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextSize = 25.000

trollfaces.Name = "trollfaces"
trollfaces.Parent = mainframe
trollfaces.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollfaces.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollfaces.BorderSizePixel = 2
trollfaces.Position = UDim2.new(-1.20792079, 0, 0.141242936, 0)
trollfaces.Size = UDim2.new(0, 303, 0, 304)
trollfaces.Visible = false

trollface1.Name = "trollface1"
trollface1.Parent = trollfaces
trollface1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface1.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface1.BorderSizePixel = 2
trollface1.Size = UDim2.new(0, 100, 0, 100)
trollface1.Image = "rbxassetid://6579035058"

trollface2.Name = "trollface2"
trollface2.Parent = trollfaces
trollface2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface2.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface2.BorderSizePixel = 2
trollface2.Position = UDim2.new(0.335526377, 0, 0, 0)
trollface2.Size = UDim2.new(0, 100, 0, 99)
trollface2.Image = "rbxassetid://13353454021"

trollface3.Name = "trollface3"
trollface3.Parent = trollfaces
trollface3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface3.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface3.BorderSizePixel = 2
trollface3.Position = UDim2.new(0.664408565, 0, -5.2602667e-05, 0)
trollface3.Size = UDim2.new(0, 100, 0, 99)
trollface3.Image = "rbxassetid://9099996382"

trollface4.Name = "trollface4"
trollface4.Parent = trollfaces
trollface4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface4.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface4.BorderSizePixel = 2
trollface4.Position = UDim2.new(0, 0, 0.328868479, 0)
trollface4.Size = UDim2.new(0, 100, 0, 100)
trollface4.Image = "rbxassetid://10100419654"

trollface5.Name = "trollface5"
trollface5.Parent = trollfaces
trollface5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface5.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface5.BorderSizePixel = 2
trollface5.Position = UDim2.new(0.333333343, 0, 0.328842163, 0)
trollface5.Size = UDim2.new(0, 100, 0, 100)
trollface5.Image = "rbxassetid://13439680172"

trollface6.Name = "trollface6"
trollface6.Parent = trollfaces
trollface6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface6.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface6.BorderSizePixel = 2
trollface6.Position = UDim2.new(0.669966996, 0, 0.328815848, 0)
trollface6.Size = UDim2.new(0, 100, 0, 100)
trollface6.Image = "rbxassetid://10577249401"

trollface7.Name = "trollface7"
trollface7.Parent = trollfaces
trollface7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface7.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface7.BorderSizePixel = 2
trollface7.Position = UDim2.new(0.00330033014, 0, 0.670894802, 0)
trollface7.Size = UDim2.new(0, 100, 0, 100)
trollface7.Image = "rbxassetid://8377898779"

trollface8.Name = "trollface8"
trollface8.Parent = trollfaces
trollface8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface8.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface8.BorderSizePixel = 2
trollface8.Position = UDim2.new(0.339933991, 0, 0.670894802, 0)
trollface8.Size = UDim2.new(0, 100, 0, 100)
trollface8.Image = "rbxassetid://13438926861"

trollface9.Name = "trollface9"
trollface9.Parent = trollfaces
trollface9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trollface9.BorderColor3 = Color3.fromRGB(0, 0, 0)
trollface9.BorderSizePixel = 2
trollface9.Position = UDim2.new(0.669966996, 0, 0.670894802, 0)
trollface9.Size = UDim2.new(0, 100, 0, 100)
trollface9.Image = "rbxassetid://8855392706"

title_2.Name = "title"
title_2.Parent = trollfaces
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
title_2.BorderSizePixel = 2
title_2.Position = UDim2.new(0, 0, -0.167763159, 0)
title_2.Size = UDim2.new(0, 301, 0, 50)
title_2.Font = Enum.Font.SourceSans
title_2.Text = "  SELECT YOUR FACE"
title_2.TextColor3 = Color3.fromRGB(0, 0, 0)
title_2.TextSize = 35.000
title_2.TextWrapped = true
title_2.TextXAlignment = Enum.TextXAlignment.Left

close_2.Name = "close"
close_2.Parent = trollfaces
close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_2.BorderSizePixel = 0
close_2.Position = UDim2.new(0.82838285, 0, -0.167763159, 0)
close_2.Size = UDim2.new(0, 50, 0, 50)
close_2.Font = Enum.Font.SourceSans
close_2.Text = "X"
close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
close_2.TextSize = 30.000

DESTROYServer.Name = "DESTROYServer"
DESTROYServer.Parent = mainframe
DESTROYServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DESTROYServer.BorderColor3 = Color3.fromRGB(0, 0, 0)
DESTROYServer.BorderSizePixel = 2
DESTROYServer.Position = UDim2.new(0.0459999628, 0, 0.727070272, 0)
DESTROYServer.Size = UDim2.new(0, 275, 0, 55)
DESTROYServer.Font = Enum.Font.SourceSans
DESTROYServer.Text = "DESTROY SERVER"
DESTROYServer.TextColor3 = Color3.fromRGB(0, 0, 0)
DESTROYServer.TextSize = 40.000

-- Scripts:

local function KCEYWA_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(KCEYWA_fake_script)()
local function CDUI_fake_script() -- trollselect.LocalScript 
	local script = Instance.new('LocalScript', trollselect)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.trollfaces.Visible=true
	end)
end
coroutine.wrap(CDUI_fake_script)()
local function NOSTPAP_fake_script() -- ANNOY.LocalScript 
	local script = Instance.new('LocalScript', ANNOY)

	local annoysound = false
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "ANNOY SOUND: OFF" then
			annoysound = true
			script.Parent.Text = "ANNOY SOUND: ON"
			while annoysound == true do wait()
				game:GetService("ReplicatedStorage"):WaitForChild("ErrorDeath"):FireServer()
			end
		else
			annoysound = false
			script.Parent.Text = "ANNOY SOUND: OFF"
		end
	end)
end
coroutine.wrap(NOSTPAP_fake_script)()
local function URAVQHG_fake_script() -- LAG.LocalScript 
	local script = Instance.new('LocalScript', LAG)

	local annoysound = false
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "LAG SERVER: OFF" then
			annoysound = true
			script.Parent.Text = "LAG SERVER: ON"
			while annoysound == true do wait()
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
				game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
                game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
			end
		else
			annoysound = false
			script.Parent.Text = "LAG SERVER: OFF"
		end
	end)
end
coroutine.wrap(URAVQHG_fake_script)()
local function JYZWBL_fake_script() -- piano.LocalScript 
	local script = Instance.new('LocalScript', piano)

	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("ReplicatedStorage").Piano:FireServer()
	end)
end
coroutine.wrap(JYZWBL_fake_script)()
local function ZIKKN_fake_script() -- trollface1.LocalScript 
	local script = Instance.new('LocalScript', trollface1)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(ZIKKN_fake_script)()
local function VUNTMO_fake_script() -- trollface2.LocalScript 
	local script = Instance.new('LocalScript', trollface2)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(VUNTMO_fake_script)()
local function FZXFS_fake_script() -- trollface3.LocalScript 
	local script = Instance.new('LocalScript', trollface3)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(FZXFS_fake_script)()
local function RAFEXZ_fake_script() -- trollface4.LocalScript 
	local script = Instance.new('LocalScript', trollface4)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(RAFEXZ_fake_script)()
local function MMKEMUR_fake_script() -- trollface5.LocalScript 
	local script = Instance.new('LocalScript', trollface5)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(MMKEMUR_fake_script)()
local function HXJCAB_fake_script() -- trollface6.LocalScript 
	local script = Instance.new('LocalScript', trollface6)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(HXJCAB_fake_script)()
local function RESC_fake_script() -- trollface7.LocalScript 
	local script = Instance.new('LocalScript', trollface7)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(RESC_fake_script)()
local function SJEG_fake_script() -- trollface8.LocalScript 
	local script = Instance.new('LocalScript', trollface8)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(SJEG_fake_script)()
local function FPFZG_fake_script() -- trollface9.LocalScript 
	local script = Instance.new('LocalScript', trollface9)

	script.Parent.MouseButton1Click:Connect(function()
		local player = game:GetService("Players").LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local faceId = script.Parent.Image
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local slapstick = replicatedStorage:WaitForChild("slapstick")
	
		while true do
			local head = character:FindFirstChild("Head")
			if head then
				local face = head:FindFirstChildOfClass("Decal")
				if face and face.Texture == faceId then
					print("stop loop; got same face")
					break
				end
			end
			slapstick:FireServer("addarm")
			task.wait(0.1)
		end
	
	end)
end
coroutine.wrap(FPFZG_fake_script)()
local function HKJNHU_fake_script() -- close_2.LocalScript 
	local script = Instance.new('LocalScript', close_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(HKJNHU_fake_script)()
local function RZGDK_fake_script() -- DESTROYServer.LocalScript 
	local script = Instance.new('LocalScript', DESTROYServer)

	script.Parent.MouseButton1Click:Connect(function()
		local StarterGui = game:GetService("StarterGui")
		StarterGui:SetCore("SendNotification", {
			Title = "DESTROY SERVER";
			Text = "ALL PEOPLE KILLED; NOBODY WILL RESPAWN ANYMORE :)";
			Duration = 5;
		})
		local players = game:GetService("Players")
		local localPlayer = players.LocalPlayer
		for _, v in pairs(players:GetPlayers()) do
			if v ~= localPlayer then
				local args = {
					[1] = "throw",
					[2] = {
						["victim"] = v,
						["cf"] = CFrame.new(math.huge, math.huge, math.huge)
					}
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("rob_r"):FireServer(unpack(args))
			end
		end
	end)
end
coroutine.wrap(RZGDK_fake_script)()
