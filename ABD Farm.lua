wait(7)

if game.PlaceId == 2686500207 then
print("Starting")
    local humrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    while wait(0.15) do
        for i,v in pairs(game.Workspace.ItFolder:GetChildren()) do
            if v:IsA "Tool" and v.Name == "Banknote" then
                v.Handle.Anchored = false
                wait(0.02)
                humrp.CFrame = v.Handle.CFrame
            end
        end
        for i,v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v:IsA'Tool' and v.Name =='Banknote' then
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(v)
                game:GetService("Players").LocalPlayer.Character.Banknote:Activate()
            end
        end
        if not game.Workspace.ItFolder:FindFirstChild("Banknote") then
            game:GetService("TeleportService"):Teleport(4543641582)
        end
    end
end