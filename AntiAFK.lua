if getgenv().AntiAfk_Loaded then
    return
else
    getgenv().AntiAfkLoaded = true
end

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Workspace").Players:FindFirstChild(game:GetService("Players").LocalPlayer.Name)

local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), Workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), Workspace.CurrentCamera.CFrame)
end)

StarterGui:SetCore("SendNotification", { Title = "Anti AFK", Text = "Injected", Duration = 5 })

--[[for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
v:Disable()
end]]
