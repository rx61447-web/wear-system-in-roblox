local clickDetector = script.Parent:FindFirstChild("ClickDetector")

-- 換上衣和褲子的 asset ID
local shirtTemplateId = "rbxassetid://123456789"  -- 上衣 ID
local pantsTemplateId = "rbxassetid://987654321"  -- 褲子 ID

clickDetector.MouseClick:Connect(function(player)
    local character = player.Character or player.CharacterAdded:Wait()

    -- 處理上衣穿上
    local shirt = character:FindFirstChildOfClass("Shirt")
    if not shirt then
        shirt = Instance.new("Shirt")
        shirt.Name = "Shirt"
        shirt.Parent = character
    end
    shirt.ShirtTemplate = shirtTemplateId

    -- 處理褲子穿上
    local pants = character:FindFirstChildOfClass("Pants")
    if not pants then
        pants = Instance.new("Pants")
        pants.Name = "Pants"
        pants.Parent = character
    end
    pants.PantsTemplate = pantsTemplateId
end)
