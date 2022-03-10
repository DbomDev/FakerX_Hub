if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Prison Life", "Sentinel")
 
    local themes = {
        SchemeColor = Color3.fromRGB(74, 99, 135),
        Background = Color3.fromRGB(36, 37, 43),
        Header = Color3.fromRGB(28, 29, 34),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(32, 32, 38)
    }

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
 
    MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
 
    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    
    -- Settings
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")

    for theme, color in pairs(themes) do
        SettingsSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end
elseif game.PlaceId == 3956818381 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ninja Legends", "Sentinel")
 
    local themes = {
        SchemeColor = Color3.fromRGB(74, 99, 135),
        Background = Color3.fromRGB(36, 37, 43),
        Header = Color3.fromRGB(28, 29, 34),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(32, 32, 38)
    }

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)
 
    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)
 
    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
 
    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    -- Settings
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")

    for theme, color in pairs(themes) do
        SettingsSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end
elseif game.PlaceId == 8015253630 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("💂[V1.5] Hampshire British Academy", "Sentinel")

    local themes = {
        SchemeColor = Color3.fromRGB(74, 99, 135),
        Background = Color3.fromRGB(36, 37, 43),
        Header = Color3.fromRGB(28, 29, 34),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(32, 32, 38)
    }
    
    local currentWalkSpeed = 16;

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"Golden Glock", "P90"}, function(v)
        local A_1 = game:GetService("Teams")["Headquarters"][v]
        local cl1 = A_1:Clone()
        cl1.Parent = game.Players.LocalPlayer.Backpack
    end)


    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        currentWalkSpeed = v
    end)

    -- // Infinity Jump //
    PlayerSection:NewButton("Inf Jump","Get everyhwere you want", function()
        game:GetService("UserInputService").s:Connect(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end)
    end)

    -- // No Clip //
    PlayerSection:NewButton("No Clip","Go trough walls", function()
        game:GetService('RunService').Stepped:Connect(function()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end)
    end)
        
    -- Settings
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")

    for theme, color in pairs(themes) do
        SettingsSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end
elseif game.PlaceId == 3101667897 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Legends Of Speed ⚡", "Sentinel")

    local themes = {
        SchemeColor = Color3.fromRGB(74, 99, 135),
        Background = Color3.fromRGB(36, 37, 43),
        Header = Color3.fromRGB(28, 29, 34),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(32, 32, 38)
    }

    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    getgenv().AutoOrbsEn = true
    getgenv().AutoGemsEn = true


    local BigItemList = {
        eventTypes = {
            "collectOrb",
            "openCrystal",
            "rebirthRequest"
        },
        items = {
            "Blue Orb",
            "Red Orb", 
            "Orange Orb",
            "Yellow Orb",
            "Gem",
            "Lightning Crystal",
            "Inferno Crystal"
        },
        maps = {
            "City",
            "Snow City"
        }
    }

    local LegendsOfSpeed = {
        AutoOrbsCollect = spawn(function()
            while getgenv().AutoOrbsEn == true do
                local args = {
                    [1] = "collectOrb",
                    [2] = "Red Orb",
                    [3] = "City",
                }
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                wait()
            end
        end),
        AutoGemsCollect = spawn(function()
            while getgenv().AutoGemsEn == true do
                local args = {
                    [1] = "collectOrb",
                    [2] = "Gem",
                    [3] = "City",
                }
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                wait()
            end    
        end),
        OneRebirth = spawn(function()
            local args = {
                [1] = "rebirthRequest",
            }
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
        end)
    }

    MainSection:NewToggle("Auto Orbs", "Collect automaticly free Orb and with that Speed.", function(state)
        getgenv().AutoOrbsEn = state
        if state then
            LegendsOfSpeed.AutoOrbsCollect()
        end
        
    end)

    MainSection:NewToggle("Auto Gems", "Collect automaticly free Gems.", function(state)
        getgenv().AutoGemsEn = state
        if state then
            LegendsOfSpeed.AutoGemsCollect()
        end
        
    end)

    MainSection:NewButton("One Rebirth", "Rebirths your account once if you are able to.", function()
        LegendsOfSpeed.OneRebirth()
    end)
    

    -- Settings
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")

    for theme, color in pairs(themes) do
        SettingsSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
            Library:ChangeColor(theme, color3)
        end)
    end  
end
