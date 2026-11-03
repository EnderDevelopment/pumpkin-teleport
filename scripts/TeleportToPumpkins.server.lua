-- TeleportToPumpkins.server.lua

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local function teleportToPumpkins(player)
    local pumpkins = Workspace:WaitForChild("EventPumpkins"):GetChildren()
    
    for _, pumpkin in ipairs(pumpkins) do
        player.Character:MoveTo(pumpkin.Position)
        wait(2) -- Delay between teleports
    end
end

local function onButtonClicked(player)
    teleportToPumpkins(player)
end

local function createGui(player)
    local playerGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    playerGui.Name = "TeleportGui"
    
    local button = Instance.new("TextButton", playerGui)
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = "Teleport to Pumpkins"
    button.MouseButton1Click:Connect(function() onButtonClicked(player) end)
end

Players.PlayerAdded:Connect(createGui)

-- Clean up GUI when player leaves
Players.PlayerRemoving:Connect(function(player)
    local playerGui = player:FindFirstChild("PlayerGui"):FindFirstChild("TeleportGui")
    if playerGui then
        playerGui:Destroy()
    end
end)
