--discord.gg/DpB6srtvSy | Minify By AVN Src | File Name : BloxFruit.lua

_G.Color = Color3.fromRGB(0, 255, 255)
_G.Logo = 13377314456
if not game:IsLoaded() then
    repeat
        game.Loaded:Wait()
    until game:IsLoaded()
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat
        wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for a, a in pairs(
                    getconnections(
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                    )
                ) do
                    a.Function()
                end
            elseif _G.Team == "Marine" then
                for a, a in pairs(
                    getconnections(
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated
                    )
                ) do
                    a.Function()
                end
            else
                for a, a in pairs(
                    getconnections(
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                    )
                ) do
                    a.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
_G.Settings = {
    AutoFarm = false,
    AutoFarmBoss = false,
    AutoPrince = false,
    AutoPrinceV2 = false,
    AutoFarmBone = false,
    AutoBuySurprise = false,
    AutoElite = false,
    AutoYama = false,
    TrialGhoul = false,
    TrialHuman = false,
    TPMystic = false,
    TPGear = false,
    AutoChestFag = false,
    AutoDarkDanger = false,
    AutoSoulReaper = false,
    AutoBuddySword = false,
    AutoBuddySwordHop = false,
    AutoFarmEctoplasm = false,
    Select_Weapon = "Melee",
    SelectMelee = "Electro",
    SelectAbilities = "Geppo",
    SelectSword = "Cutlass",
    SelectGun = "Slingshot",
    Clickttack = false,
    FastAttackPC = false,
    AutoAwakeningRace = true,
    AutoSpawnKatakuri = true,
    StartBring = true,
    Auto_Melee = false,
    Auto_Defense = false,
    Auto_DevilFruit = false,
    Auto_Gun = false,
    Auto_Sword = false
}
local a = "MeMayBeo Config"
local b = "BloxFruit " .. game.Players.LocalPlayer.Name .. " Config.json"
function saveSettings()
    local c = game:GetService("HttpService")
    local c = c:JSONEncode(_G.Settings)
    if (writefile) then
        if isfolder(a) then
            if isfile(a .. "\\" .. b) then
                writefile(a .. "\\" .. b, c)
            else
                writefile(a .. "\\" .. b, c)
            end
        else
            makefolder(a)
            writefile(a .. "\\" .. b, c)
        end
    end
end
function loadSettings()
    local c = game:GetService("HttpService")
    if isfile(a .. "\\" .. b) then
        _G.Settings = c:JSONDecode(readfile(a .. "\\" .. b))
    end
end
loadSettings()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Game Script Not Support")
end
function EquipWeapon(a)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(a) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(a)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end
function Click()
    game:GetService "VirtualUser":CaptureController()
    game:GetService "VirtualUser":Button1Down(Vector2.new(9999, 999))
end
function Hop()
    local a = game.PlaceId
    local b = {}
    local c = ""
    local d = os.date("!*t").hour
    local e = false
    function TPReturner()
        local e
        if c == "" then
            e =
                game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. a .. "/servers/Public?sortOrder=Asc&limit=100")
            )
        else
            e =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. a .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. c
                )
            )
        end
        local f = ""
        if e.nextPageCursor and e.nextPageCursor ~= "null" and e.nextPageCursor ~= nil then
            c = e.nextPageCursor
        end
        local c = 0
        for e, e in pairs(e.data) do
            local g = true
            f = tostring(e.id)
            if tonumber(e.maxPlayers) > tonumber(e.playing) then
                for a, a in pairs(b) do
                    if c ~= 0 then
                        if f == tostring(a) then
                            g = false
                        end
                    else
                        if tonumber(d) ~= tonumber(a) then
                            local a =
                                pcall(
                                function()
                                    b = {}
                                    table.insert(b, d)
                                end
                            )
                        end
                    end
                    c = c + 1
                end
                if g == true then
                    table.insert(b, f)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(a, f, game.Players.LocalPlayer)
                        end
                    )
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(
                function()
                    TPReturner()
                    if c ~= "" then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end
TweenMisc = function(a)
    task.spawn(
        function()
            pcall(
                function()
                    if game:GetService("Players").LocalPlayer:DistanceFromCharacter(a.Position) <= 390 then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = a
                    elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                        local a = Instance.new("Part", game.Players.LocalPlayer.Character)
                        a.Size = Vector3.new(1, 0.5, 1)
                        a.Name = "Root"
                        a.Anchored = true
                        a.Transparency = 1
                        a.CanCollide = false
                        a.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0)
                    end
                    local b = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Position).Magnitude
                    local b =
                        TweenInfo.new(
                        (a.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,
                        Enum.EasingStyle.Linear
                    )
                    local b, c =
                        pcall(
                        function()
                            local a =
                                game:service("TweenService"):Create(
                                game.Players.LocalPlayer.Character.Root,
                                b,
                                {CFrame = a}
                            )
                            a:Play()
                        end
                    )
                    if not b then
                        return c
                    end
                    game.Players.LocalPlayer.Character.Root.CFrame =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    if b and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                        pcall(
                            function()
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Position).Magnitude >=
                                        150
                                 then
                                    spawn(
                                        function()
                                            pcall(
                                                function()
                                                    if
                                                        (game.Players.LocalPlayer.Character.Root.Position -
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                                                            250
                                                     then
                                                        game.Players.LocalPlayer.Character.Root.CFrame =
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    else
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                            game.Players.LocalPlayer.Character.Root.CFrame
                                                    end
                                                end
                                            )
                                        end
                                    )
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Position).Magnitude >=
                                        100 and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Position).Magnitude <
                                            20
                                 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - a.Position).Magnitude <
                                        100
                                 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
                                end
                            end
                        )
                    end
                end
            )
        end
    )
end
function BypassTP(a)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
    until (a.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end
_G.ColorESP = Color3.new(0, 255, 255)
function isnil(a)
    return (a == nil)
end
local function a(a)
    return math.floor(tonumber(a) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
    for b, b in pairs(game:GetService "Players":GetChildren()) do
        pcall(
            function()
                if not isnil(b.Character) then
                    if ESPPlayer then
                        if not isnil(b.Character.Head) and not b.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            local c = Instance.new("BillboardGui", b.Character.Head)
                            c.Name = "NameEsp" .. Number
                            c.ExtentsOffset = Vector3.new(0, 1, 0)
                            c.Size = UDim2.new(1, 200, 1, 30)
                            c.Adornee = b.Character.Head
                            c.AlwaysOnTop = true
                            local c = Instance.new("TextLabel", c)
                            c.Font = "GothamBold"
                            c.FontSize = "Size14"
                            c.TextWrapped = true
                            c.Text =
                                (b.Name ..
                                " \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " M")
                            c.Size = UDim2.new(1, 0, 1, 0)
                            c.TextYAlignment = "Top"
                            c.BackgroundTransparency = 1
                            c.TextStrokeTransparency = 0.5
                            if b.Team == game.Players.LocalPlayer.Team then
                                c.TextColor3 = _G.ColorESP
                            else
                                c.TextColor3 = _G.ColorESP
                            end
                        else
                            b.Character.Head["NameEsp" .. Number].TextLabel.Text =
                                (b.Name ..
                                " | " ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Character.Head.Position).Magnitude / 3
                                    ) ..
                                        " M\nHealth : " ..
                                            a(b.Character.Humanoid.Health * 100 / b.Character.Humanoid.MaxHealth) .. "%")
                        end
                    else
                        if b.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            b.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateIslandESP()
    for b, b in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(
            function()
                if IslandESP then
                    if b.Name ~= "Sea" then
                        if not b:FindFirstChild("NameEsp") then
                            local a = Instance.new("BillboardGui", b)
                            a.Name = "NameEsp"
                            a.ExtentsOffset = Vector3.new(0, 1, 0)
                            a.Size = UDim2.new(1, 200, 1, 30)
                            a.Adornee = b
                            a.AlwaysOnTop = true
                            local a = Instance.new("TextLabel", a)
                            a.Font = "GothamBold"
                            a.FontSize = "Size14"
                            a.TextWrapped = true
                            a.Size = UDim2.new(1, 0, 1, 0)
                            a.TextYAlignment = "Top"
                            a.BackgroundTransparency = 1
                            a.TextStrokeTransparency = 0.5
                            a.TextColor3 = _G.ColorESP
                        else
                            b["NameEsp"].TextLabel.Text =
                                (b.Name ..
                                "   \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - b.Position).Magnitude /
                                            3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if b:FindFirstChild("NameEsp") then
                        b:FindFirstChild("NameEsp"):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateChestEsp()
    for b, b in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(
            function()
                if string.find(b.Name, "Chest") then
                    if ChestESP then
                        if string.find(b.Name, "Chest") then
                            if not b:FindFirstChild("NameEsp" .. Number) then
                                local c = Instance.new("BillboardGui", b)
                                c.Name = "NameEsp" .. Number
                                c.ExtentsOffset = Vector3.new(0, 1, 0)
                                c.Size = UDim2.new(1, 200, 1, 30)
                                c.Adornee = b
                                c.AlwaysOnTop = true
                                local c = Instance.new("TextLabel", c)
                                c.Font = "GothamBold"
                                c.FontSize = "Size14"
                                c.TextWrapped = true
                                c.Size = UDim2.new(1, 0, 1, 0)
                                c.TextYAlignment = "Top"
                                c.BackgroundTransparency = 1
                                c.TextStrokeTransparency = 0.5
                                c.TextColor3 = _G.ColorESP
                                if b.Name == "Chest1" then
                                    c.Text =
                                        ("Chest 1" ..
                                        " \n" ..
                                            a(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    b.Position).Magnitude / 3
                                            ) ..
                                                " M")
                                end
                                if b.Name == "Chest2" then
                                    c.Text =
                                        ("Chest 2" ..
                                        " \n" ..
                                            a(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    b.Position).Magnitude / 3
                                            ) ..
                                                " M")
                                end
                                if b.Name == "Chest3" then
                                    c.Text =
                                        ("Chest 3" ..
                                        " \n" ..
                                            a(
                                                (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                                    b.Position).Magnitude / 3
                                            ) ..
                                                " M")
                                end
                            else
                                b["NameEsp" .. Number].TextLabel.Text =
                                    (b.Name ..
                                    "   \n" ..
                                        a(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - b.Position).Magnitude /
                                                3
                                        ) ..
                                            " M")
                            end
                        end
                    else
                        if b:FindFirstChild("NameEsp" .. Number) then
                            b:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function UpdateMasterEsp()
    for b, b in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(
            function()
                if MasterAurasESP then
                    if string.find(b.Name, "Master of Auras") then
                        if not b.HumanoidRootPart:FindFirstChild("NameEsp" .. Number) then
                            local c = Instance.new("BillboardGui", b.Handle)
                            c.Name = "NameEsp" .. Number
                            c.ExtentsOffset = Vector3.new(0, 1, 0)
                            c.Size = UDim2.new(1, 200, 1, 30)
                            c.Adornee = b.Handle
                            c.AlwaysOnTop = true
                            local c = Instance.new("TextLabel", c)
                            c.Font = "GothamBold"
                            c.FontSize = "Size14"
                            c.TextWrapped = true
                            c.Size = UDim2.new(1, 0, 1, 0)
                            c.TextYAlignment = "Top"
                            c.BackgroundTransparency = 1
                            c.TextStrokeTransparency = 0.5
                            c.TextColor3 = _G.ColorESP
                            c.Text =
                                (b.Name ..
                                " \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        else
                            b.HumanoidRootPart["NameEsp" .. Number].TextLabel.Text =
                                (b.Name ..
                                "   \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if b.HumanoidRootPart:FindFirstChild("NameEsp" .. Number) then
                        b.HumanoidRootPart:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateGearEsp()
    for b, b in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
        pcall(
            function()
                if GearESP then
                    if string.find(b.Name, "MeshPart") then
                        if not b:FindFirstChild("NameEsp" .. Number) then
                            local c = Instance.new("BillboardGui", b.Handle)
                            c.Name = "NameEsp" .. Number
                            c.ExtentsOffset = Vector3.new(0, 1, 0)
                            c.Size = UDim2.new(1, 200, 1, 30)
                            c.Adornee = b.Handle
                            c.AlwaysOnTop = true
                            local c = Instance.new("TextLabel", c)
                            c.Font = "GothamBold"
                            c.FontSize = "Size14"
                            c.TextWrapped = true
                            c.Size = UDim2.new(1, 0, 1, 0)
                            c.TextYAlignment = "Top"
                            c.BackgroundTransparency = 1
                            c.TextStrokeTransparency = 0.5
                            c.TextColor3 = _G.ColorESP
                            c.Text =
                                (b.Name ..
                                " \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        else
                            b["NameEsp" .. Number].TextLabel.Text =
                                (b.Name ..
                                "   \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if b:FindFirstChild("NameEsp" .. Number) then
                        b:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateBfEsp()
    for b, b in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(
            function()
                if DevilFruitESP then
                    if string.find(b.Name, "Fruit") then
                        if not b.Handle:FindFirstChild("NameEsp" .. Number) then
                            local c = Instance.new("BillboardGui", b.Handle)
                            c.Name = "NameEsp" .. Number
                            c.ExtentsOffset = Vector3.new(0, 1, 0)
                            c.Size = UDim2.new(1, 200, 1, 30)
                            c.Adornee = b.Handle
                            c.AlwaysOnTop = true
                            local c = Instance.new("TextLabel", c)
                            c.Font = "GothamBold"
                            c.FontSize = "Size14"
                            c.TextWrapped = true
                            c.Size = UDim2.new(1, 0, 1, 0)
                            c.TextYAlignment = "Top"
                            c.BackgroundTransparency = 1
                            c.TextStrokeTransparency = 0.5
                            c.TextColor3 = _G.ColorESP
                            c.Text =
                                (b.Name ..
                                " \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        else
                            b.Handle["NameEsp" .. Number].TextLabel.Text =
                                (b.Name ..
                                "   \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position -
                                            b.Handle.Position).Magnitude / 3
                                    ) ..
                                        " M")
                        end
                    end
                else
                    if b.Handle:FindFirstChild("NameEsp" .. Number) then
                        b.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
                    end
                end
            end
        )
    end
end
function UpdateFlowerEsp()
    for b, b in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(
            function()
                if b.Name == "Flower2" or b.Name == "Flower1" then
                    if FlowerESP then
                        if not b:FindFirstChild("NameEsp" .. Number) then
                            local c = Instance.new("BillboardGui", b)
                            c.Name = "NameEsp" .. Number
                            c.ExtentsOffset = Vector3.new(0, 1, 0)
                            c.Size = UDim2.new(1, 200, 1, 30)
                            c.Adornee = b
                            c.AlwaysOnTop = true
                            local c = Instance.new("TextLabel", c)
                            c.Font = "GothamBold"
                            c.FontSize = "Size14"
                            c.TextWrapped = true
                            c.Size = UDim2.new(1, 0, 1, 0)
                            c.TextYAlignment = "Top"
                            c.BackgroundTransparency = 1
                            c.TextStrokeTransparency = 0.5
                            c.TextColor3 = _G.ColorESP
                            if b.Name == "Flower1" then
                                c.Text =
                                    ("Blue Flower" ..
                                    " \n" ..
                                        a(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - b.Position).Magnitude /
                                                3
                                        ) ..
                                            " M")
                                c.TextColor3 = _G.ColorESP
                            end
                            if b.Name == "Flower2" then
                                c.Text =
                                    ("Red Flower" ..
                                    " \n" ..
                                        a(
                                            (game:GetService("Players").LocalPlayer.Character.Head.Position - b.Position).Magnitude /
                                                3
                                        ) ..
                                            " M")
                                c.TextColor3 = _G.ColorESP
                            end
                        else
                            b["NameEsp" .. Number].TextLabel.Text =
                                (b.Name ..
                                "   \n" ..
                                    a(
                                        (game:GetService("Players").LocalPlayer.Character.Head.Position - b.Position).Magnitude /
                                            3
                                    ) ..
                                        " M")
                        end
                    else
                        if b:FindFirstChild("NameEsp" .. Number) then
                            b:FindFirstChild("NameEsp" .. Number):Destroy()
                        end
                    end
                end
            end
        )
    end
end
function CheckBossQuest()
    if First_Sea then
        if SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
            BossMon = "The Gorilla King [Lv. 25] [Boss]"
            NameQuestBoss = "JungleQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$2,000\n7,000 Exp."
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss =
                CFrame.new(
                -1088.75977,
                8.13463783,
                -488.559906,
                -0.707134247,
                0,
                0.707079291,
                0,
                1,
                0,
                -0.707079291,
                0,
                -0.707134247
            )
        elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
            BossMon = "Bobby [Lv. 55] [Boss]"
            NameQuestBoss = "BuggyQuest1"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$8,000\n35,000 Exp."
            CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
        elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
            BossMon = "The Saw [Lv. 100] [Boss]"
            CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
        elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
            BossMon = "Yeti [Lv. 110] [Boss]"
            NameQuestBoss = "SnowQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
            BossMon = "Mob Leader [Lv. 120] [Boss]"
            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
        elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
            BossMon = "Vice Admiral [Lv. 130] [Boss]"
            NameQuestBoss = "MarineQuest2"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
            CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
        elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
            BossMon = "Saber Expert [Lv. 200] [Boss]"
            CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
        elseif SelectBoss == "Warden [Lv. 220] [Boss]" then
            BossMon = "Warden [Lv. 220] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 1
            RewardBoss = "Reward:\n$6,000\n850,000 Exp."
            CFrameBoss =
                CFrame.new(
                5278.04932,
                2.15167475,
                944.101929,
                0.220546961,
                -4.49946401e-06,
                0.975376427,
                -1.95412576e-05,
                1,
                9.03162072e-06,
                -0.975376427,
                -2.10519756e-05,
                0.220546961
            )
            CFrameQBoss =
                CFrame.new(
                5191.86133,
                2.84020686,
                686.438721,
                -0.731384635,
                0,
                0.681965172,
                0,
                1,
                0,
                -0.681965172,
                0,
                -0.731384635
            )
        elseif SelectBoss == "Chief Warden [Lv. 230] [Boss]" then
            BossMon = "Chief Warden [Lv. 230] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
            CFrameBoss =
                CFrame.new(
                5206.92578,
                0.997753382,
                814.976746,
                0.342041343,
                -0.00062915677,
                0.939684749,
                0.00191645394,
                0.999998152,
                -2.80422337e-05,
                -0.939682961,
                0.00181045406,
                0.342041939
            )
            CFrameQBoss =
                CFrame.new(
                5191.86133,
                2.84020686,
                686.438721,
                -0.731384635,
                0,
                0.681965172,
                0,
                1,
                0,
                -0.681965172,
                0,
                -0.731384635
            )
        elseif SelectBoss == "Swan [Lv. 240] [Boss]" then
            BossMon = "Swan [Lv. 240] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
            CFrameBoss =
                CFrame.new(
                5325.09619,
                7.03906584,
                719.570679,
                -0.309060812,
                0,
                0.951042235,
                0,
                1,
                0,
                -0.951042235,
                0,
                -0.309060812
            )
            CFrameQBoss =
                CFrame.new(
                5191.86133,
                2.84020686,
                686.438721,
                -0.731384635,
                0,
                0.681965172,
                0,
                1,
                0,
                -0.681965172,
                0,
                -0.731384635
            )
        elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
            BossMon = "Magma Admiral [Lv. 350] [Boss]"
            NameQuestBoss = "MagmaQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
            CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
            CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
        elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
            BossMon = "Fishman Lord [Lv. 425] [Boss]"
            NameQuestBoss = "FishmanQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
        elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
            BossMon = "Wysper [Lv. 500] [Boss]"
            NameQuestBoss = "SkyExp1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
        elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
            BossMon = "Thunder God [Lv. 575] [Boss]"
            NameQuestBoss = "SkyExp2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
            CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
        elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
            BossMon = "Cyborg [Lv. 675] [Boss]"
            NameQuestBoss = "FountainQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
            CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
        elseif SelectBoss == "Ice Admiral [Lv. 700] [Boss]" then
            BossMon = "Ice Admiral [Lv. 700] [Boss]"
            CFrameBoss =
                CFrame.new(
                1266.08948,
                26.1757946,
                -1399.57678,
                -0.573599219,
                0,
                -0.81913656,
                0,
                1,
                0,
                0.81913656,
                0,
                -0.573599219
            )
        elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
            BossMon = "Greybeard [Lv. 750] [Raid Boss]"
            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
        end
    end
    if Second_Sea then
        if SelectBoss == "Diamond [Lv. 750] [Boss]" then
            BossMon = "Diamond [Lv. 750] [Boss]"
            NameQuestBoss = "Area1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
            BossMon = "Jeremy [Lv. 850] [Boss]"
            NameQuestBoss = "Area2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
            CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
        elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
            BossMon = "Fajita [Lv. 925] [Boss]"
            NameQuestBoss = "MarineQuest3"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
            CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
            CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
        elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
            BossMon = "Don Swan [Lv. 1000] [Boss]"
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
        elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
            BossMon = "Smoke Admiral [Lv. 1150] [Boss]"
            NameQuestBoss = "IceSideQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
        elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
            BossMon = "Awakened Ice Admiral [Lv. 1400] [Boss]"
            NameQuestBoss = "FrostQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
            CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
        elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
            BossMon = "Tide Keeper [Lv. 1475] [Boss]"
            NameQuestBoss = "ForgottenQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
            CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
            CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
        elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
            BossMon = "Darkbeard [Lv. 1000] [Raid Boss]"
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
        elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
            BossMon = "Cursed Captain [Lv. 1325] [Raid Boss]"
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
        elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
            BossMon = "Order [Lv. 1250] [Raid Boss]"
            CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
        end
    end
    if Third_Sea then
        if SelectBoss == "Stone [Lv. 1550] [Boss]" then
            BossMon = "Stone [Lv. 1550] [Boss]"
            NameQuestBoss = "PiratePortQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
            BossMon = "Island Empress [Lv. 1675] [Boss]"
            NameQuestBoss = "AmazonQuest2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
            CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
            CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
        elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
            BossMon = "Kilo Admiral [Lv. 1750] [Boss]"
            NameQuestBoss = "MarineTreeIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
            CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
            CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
        elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
            BossMon = "Captain Elephant [Lv. 1875] [Boss]"
            NameQuestBoss = "DeepForestIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
            CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
            CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
        elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
            BossMon = "Beautiful Pirate [Lv. 1950] [Boss]"
            NameQuestBoss = "DeepForestIsland2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
        elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
            BossMon = "Cake Queen [Lv. 2175] [Boss]"
            NameQuestBoss = "IceCreamIslandQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
            CFrameQBoss =
                CFrame.new(
                -819.376709,
                64.9259796,
                -10967.2832,
                -0.766061664,
                0,
                0.642767608,
                0,
                1,
                0,
                -0.642767608,
                0,
                -0.766061664
            )
            CFrameBoss =
                CFrame.new(
                -678.648804,
                381.353943,
                -11114.2012,
                -0.908641815,
                0.00149294338,
                0.41757378,
                0.00837114919,
                0.999857843,
                0.0146408929,
                -0.417492568,
                0.0167988986,
                -0.90852499
            )
        elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
            BossMon = "Longma [Lv. 2000] [Boss]"
            CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
            BossMon = "Soul Reaper [Lv. 2100] [Raid Boss]"
            CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
        elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
            BossMon = "rip_indra True Form [Lv. 5000] [Raid Boss]"
            CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
        end
    end
end
function CheckQuest()
    local a = game.PlaceId
    local b = game:GetService("Players").LocalPlayer.Data.Level.Value
    if a == 2753915549 then
        if b == 1 or b <= 9 then
            Mon = "Bandit [Lv. 5]"
            MonPos = CFrame.new(1198.5999755859375, 38.06475830078125, 1543.47119140625)
            LQuest = 1
            NQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest =
                CFrame.new(
                1059.37195,
                15.4495068,
                1550.4231,
                0.939700544,
                -0,
                -0.341998369,
                0,
                1,
                -0,
                0.341998369,
                0,
                0.939700544
            )
        elseif b == 10 or b <= 14 then
            Mon = "Monkey [Lv. 14]"
            MonPos = CFrame.new(-1403.5555419921875, 98.59825134277344, 90.24476623535156)
            LQuest = 1
            NQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        elseif b == 15 or b <= 29 then
            Mon = "Gorilla [Lv. 20]"
            MonPos = CFrame.new(-1320.2811279296875, 81.85315704345703, -458.73248291015625)
            LQuest = 2
            NQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        elseif b == 30 or b <= 39 then
            Mon = "Pirate [Lv. 35]"
            MonPos = CFrame.new(-1140.37109375, 53.04805374145508, 3972.119384765625)
            LQuest = 1
            NQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
        elseif b == 40 or b <= 59 then
            Mon = "Brute [Lv. 45]"
            MonPos = CFrame.new(-1133.1185302734375, 94.3675537109375, 4307.36376953125)
            LQuest = 2
            NQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
        elseif b == 60 or b <= 74 then
            Mon = "Desert Bandit [Lv. 60]"
            MonPos = CFrame.new(978.1805419921875, 21.926359176635742, 4407.97119140625)
            LQuest = 1
            NQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
        elseif b == 75 or b <= 89 then
            Mon = "Desert Officer [Lv. 70]"
            MonPos = CFrame.new(1558.972900390625, 15.365246772766113, 4280.10302734375)
            LQuest = 2
            NQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
        elseif b == 90 or b <= 99 then
            Mon = "Snow Bandit [Lv. 90]"
            MonPos = CFrame.new(1352.8118896484375, 105.67132568359375, -1324.64697265625)
            LQuest = 1
            NQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
        elseif b == 100 or b <= 119 then
            Mon = "Snowman [Lv. 100]"
            MonsPos = CFrame.new(1201.8741455078125, 144.61459350585938, -1546.5943603515625)
            LQuest = 2
            NQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
        elseif b == 120 or b <= 149 then
            Mon = "Chief Petty Officer [Lv. 120]"
            MonPos = CFrame.new(-4855.8466796875, 23.68708038330078, 4308.84814453125)
            LQuest = 1
            NQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 150 or b <= 174 then
            Mon = "Sky Bandit [Lv. 150]"
            MonPos = CFrame.new(-4951.14501953125, 295.77923583984375, -2899.656005859375)
            LQuest = 1
            NQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
        elseif b == 175 or b <= 189 then
            Mon = "Dark Master [Lv. 175]"
            MonPos = CFrame.new(-5224.60107421875, 429.73699951171875, -2280.69677734375)
            LQuest = 2
            NQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
        elseif b == 190 or b <= 209 then
            Mon = "Prisoner [Lv. 190]"
            MonsPos = CFrame.new(5285.59033203125, 88.68693542480469, 476.51483154296875)
            LQuest = 1
            NQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
        elseif b == 210 or b <= 249 then
            Mon = "Dangerous Prisoner [Lv. 210]"
            MonsPos = CFrame.new(5543.451171875, 88.6868896484375, 696.1821899414062)
            LQuest = 2
            NQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
        elseif b == 250 or b <= 299 then
            Mon = "Toga Warrior [Lv. 250]"
            MonPos = CFrame.new(-1772.7384033203125, 38.839969635009766, -2745.384521484375)
            LQuest = 1
            NQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest =
                CFrame.new(
                -1580.04663,
                6.35000277,
                -2986.47534,
                -0.515037298,
                0,
                -0.857167721,
                0,
                1,
                0,
                0.857167721,
                0,
                -0.515037298
            )
        elseif b == 300 or b <= 324 then
            Mon = "Military Soldier [Lv. 300]"
            MonPos = CFrame.new(-5410.20751953125, 11.10084342956543, 8456.4111328125)
            LQuest = 1
            NQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
        elseif b == 325 or b <= 374 then
            Mon = "Military Spy [Lv. 325]"
            MonPos = CFrame.new(-5800.2548828125, 98.19547271728516, 8781.802734375)
            LQuest = 2
            NQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
        elseif b == 375 or b <= 399 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
                )
            end
            Mon = "Fishman Warrior [Lv. 375]"
            MonPos = CFrame.new(60890.0859375, 95.70665740966797, 1546.843017578125)
            LQuest = 1
            NQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61119.890625, 18.50667381286621, 1567.489990234375)
        elseif b == 400 or b <= 449 then
            Mon = "Fishman Commando [Lv. 400]"
            MonPos = CFrame.new(61872.09765625, 75.50736999511719, 1403.5740966796875)
            LQuest = 2
            NQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61119.890625, 18.50667381286621, 1567.489990234375)
        elseif b == 450 or b <= 474 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(3864.53466796875, 5.4081878662109375, -1925.2999267578125)).Magnitude >= 17000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(3864.53466796875, 5.4081878662109375, -1925.2999267578125)
                )
            end
            Mon = "God's Guard [Lv. 450]"
            MonPos = CFrame.new(-4627.390625, 866.9378051757812, -1945.0068359375)
            LQuest = 1
            NQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest =
                CFrame.new(
                -4721.88867,
                843.874695,
                -1949.96643,
                0.996191859,
                -0,
                -0.0871884301,
                0,
                1,
                -0,
                0.0871884301,
                0,
                0.996191859
            )
        elseif b == 475 or b <= 524 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-7859.09814, 5544.19043, -381.476196)
                )
            end
            Mon = "Shanda [Lv. 475]"
            MonPos = CFrame.new(-7685.2890625, 5567.029296875, -497.586181640625)
            LQuest = 2
            NQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest =
                CFrame.new(
                -7859.09814,
                5544.19043,
                -381.476196,
                -0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                -0.422592998
            )
        elseif b == 525 or b <= 549 then
            Mon = "Royal Squad [Lv. 525]"
            MonPos = CFrame.new(-7647.44775390625, 5637.11572265625, -1416.885009765625)
            LQuest = 1
            NQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 550 or b <= 624 then
            Mon = "Royal Soldier [Lv. 550]"
            MonPos = CFrame.new(-7831.77197265625, 5622.3154296875, -1777.7586669921875)
            LQuest = 2
            NQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 625 or b <= 649 then
            Mon = "Galley Pirate [Lv. 625]"
            MonPos = CFrame.new(5634.70751953125, 95.40705108642578, 4037.620849609375)
            LQuest = 1
            NQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
        elseif b >= 650 then
            Mon = "Galley Captain [Lv. 650]"
            MonPos = CFrame.new(5687.47998046875, 43.858909606933594, 4886.95263671875)
            LQuest = 2
            NQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
        end
    elseif a == 4442272183 then
        if b == 700 or b <= 724 then
            Mon = "Raider [Lv. 700]"
            LQuest = 1
            NQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            MonPos = CFrame.new(-746, 39, 2389)
        elseif b == 725 or b <= 774 then
            Mon = "Mercenary [Lv. 725]"
            LQuest = 2
            NQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            MonPos = CFrame.new(-874, 141, 1312)
        elseif b == 775 or b <= 874 then
            Mon = "Swan Pirate [Lv. 775]"
            MonPos = CFrame.new(879.0155029296875, 121.6172103881836, 1236.484619140625)
            LQuest = 1
            NQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest =
                CFrame.new(
                638.43811,
                71.769989,
                918.282898,
                0.139203906,
                0,
                0.99026376,
                0,
                1,
                0,
                -0.99026376,
                0,
                0.139203906
            )
        elseif b == 875 or b <= 899 then
            Mon = "Marine Lieutenant [Lv. 875]"
            MonPos = CFrame.new(-2846.595703125, 73.00115966796875, -2985.402099609375)
            LQuest = 1
            NQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
        elseif b == 900 or b <= 949 then
            Mon = "Marine Captain [Lv. 900]"
            MonPos = CFrame.new(-1838.5380859375, 91.05396270751953, -3209.526611328125)
            LQuest = 2
            NQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
        elseif b == 950 or b <= 974 then
            Mon = "Zombie [Lv. 950]"
            MonPos = CFrame.new(-5710, 126.0670166015625, -775)
            LQuest = 1
            NQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
        elseif b == 975 or b <= 999 then
            Mon = "Vampire [Lv. 975]"
            MonPos = CFrame.new(-6037.7578125, 6.437739849090576, -1326.2755126953125)
            LQuest = 2
            NQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
        elseif b == 1000 or b <= 1049 then
            Mon = "Snow Trooper [Lv. 1000]"
            MonPos = CFrame.new(609.858826, 400.119904, -5372.25928)
            LQuest = 1
            NQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
        elseif b == 1050 or b <= 1099 then
            Mon = "Winter Warrior [Lv. 1050]"
            MonPos = CFrame.new(1240.4923095703125, 460.9142761230469, -5192.29345703125)
            LQuest = 2
            NQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
        elseif b == 1100 or b <= 1124 then
            Mon = "Lab Subordinate [Lv. 1100]"
            MonPos = CFrame.new(-5780.4345703125, 42.55501174926758, -4482.74853515625)
            LQuest = 1
            NQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
        elseif b == 1125 or b <= 1174 then
            Mon = "Horned Warrior [Lv. 1125]"
            MonPos = CFrame.new(-6349.41015625, 21.453861236572266, -5834.12841796875)
            LQuest = 2
            NQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
        elseif b == 1175 or b <= 1199 then
            Mon = "Magma Ninja [Lv. 1175]"
            LQuest = 1
            NQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            MonPos = CFrame.new(-5428, 78, -5959)
        elseif b == 1200 or b <= 1249 then
            Mon = "Lava Pirate [Lv. 1200]"
            MonPos = CFrame.new(-5232.8466796875, 51.79249954223633, -4729.9609375)
            LQuest = 2
            NQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
        elseif b == 1250 or b <= 1274 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(1037.80127, 125.092171, 32911.6016)
                )
            end
            Mon = "Ship Deckhand [Lv. 1250]"
            MonPos = CFrame.new(1197.23583984375, 125.09214782714844, 33047.83984375)
            LQuest = 1
            NQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
        elseif b == 1275 or b <= 1299 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(1037.80127, 125.092171, 32911.6016)
                )
            end
            Mon = "Ship Engineer [Lv. 1275]"
            MonPos = CFrame.new(922.4091186523438, 43.57904052734375, 32783.21875)
            LQuest = 2
            NQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
        elseif b == 1300 or b <= 1324 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(1037.80127, 125.092171, 32911.6016)
                )
            end
            Mon = "Ship Steward [Lv. 1300]"
            MonPos = CFrame.new(918.0401000976562, 129.07810974121094, 33419.45703125)
            LQuest = 1
            NQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
        elseif b == 1325 or b <= 1349 then
            if
                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                    Vector3.new(1037.80127, 125.092171, 32911.6016)).Magnitude >= 20000
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(1037.80127, 125.092171, 32911.6016)
                )
            end
            Mon = "Ship Officer [Lv. 1325]"
            MonPos = CFrame.new(1188.7747802734375, 181.18414306640625, 33311.84765625)
            LQuest = 2
            NQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
        elseif b == 1350 or b <= 1374 then
            Mon = "Arctic Warrior [Lv. 1350]"
            MonPos = CFrame.new(5984.4443359375, 59.70625686645508, -6170.4990234375)
            LQuest = 1
            NQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
        elseif b == 1375 or b <= 1424 then
            Mon = "Snow Lurker [Lv. 1375]"
            MonPos = CFrame.new(5656.3681640625, 43.96525573730469, -6785.47998046875)
            LQuest = 2
            NQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
        elseif b == 1425 or b <= 1449 then
            Mon = "Sea Soldier [Lv. 1425]"
            LQuest = 1
            NQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
            MonPos = CFrame.new(-3038, 15, -9720)
        elseif b >= 1450 then
            Mon = "Water Fighter [Lv. 1450]"
            MonPos = CFrame.new(-3286.5224609375, 252.3995819091797, -10515.396484375)
            LQuest = 2
            NQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
        end
    elseif a == 7449423635 then
        if b == 1500 or b <= 1524 then
            Mon = "Pirate Millionaire [Lv. 1500]"
            MonPos = CFrame.new(-292.1559753417969, 43.8282470703125, 5582.9287109375)
            LQuest = 1
            NQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
        elseif b == 1525 or b <= 1574 then
            Mon = "Pistol Billionaire [Lv. 1525]"
            MonPos = CFrame.new(-315.38531494140625, 119.50130462646484, 6005.96630859375)
            LQuest = 2
            NQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
        elseif b == 1575 or b <= 1599 then
            Mon = "Dragon Crew Warrior [Lv. 1575]"
            MonPos = CFrame.new(6414.8330078125, 121.43488311767578, -807.5617065429688)
            LQuest = 1
            NQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest =
                CFrame.new(
                5832.83594,
                51.6806107,
                -1101.51563,
                0.898790359,
                -0,
                -0.438378751,
                0,
                1,
                -0,
                0.438378751,
                0,
                0.898790359
            )
        elseif b == 1600 or b <= 1624 then
            Mon = "Dragon Crew Archer [Lv. 1600]"
            MonPos = CFrame.new(6622.6787109375, 378.4330749511719, 182.57872009277344)
            NQuest = "AmazonQuest"
            LQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
        elseif b == 1625 or b <= 1649 then
            Mon = "Female Islander [Lv. 1625]"
            MonPos = CFrame.new(5719.08203125, 781.7914428710938, 871.026123046875)
            NQuest = "AmazonQuest2"
            LQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
        elseif b == 1650 or b <= 1699 then
            Mon = "Giant Islander [Lv. 1650]"
            MonPos = CFrame.new(4937.7333984375, 604.96728515625, -237.5341796875)
            NQuest = "AmazonQuest2"
            LQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
        elseif b == 1700 or b <= 1724 then
            Mon = "Marine Commodore [Lv. 1700]"
            MonPos = CFrame.new(2394.572998046875, 121.98365020751953, -7600.91943359375)
            LQuest = 1
            NQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest =
                CFrame.new(
                2180.54126,
                27.8156815,
                -6741.5498,
                -0.965929747,
                0,
                0.258804798,
                0,
                1,
                0,
                -0.258804798,
                0,
                -0.965929747
            )
        elseif b == 1725 or b <= 1774 then
            Mon = "Marine Rear Admiral [Lv. 1725]"
            MonPos = CFrame.new(3637.744873046875, 160.55908203125, -7037.28857421875)
            NameMon = "Marine Rear Admiral"
            NQuest = "MarineTreeIsland"
            LQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
        elseif b == 1775 or b <= 1799 then
            Mon = "Fishman Raider [Lv. 1775]"
            MonPos = CFrame.new(-10352.6923828125, 344.1450500488281, -8169.39111328125)
            LQuest = 1
            NQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
        elseif b == 1800 or b <= 1824 then
            Mon = "Fishman Captain [Lv. 1800]"
            MonPos = CFrame.new(-11087.44140625, 331.79766845703125, -8934.5576171875)
            LQuest = 2
            NQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
        elseif b == 1825 or b <= 1849 then
            Mon = "Forest Pirate [Lv. 1825]"
            MonPos = CFrame.new(-13241.498046875, 428.2030944824219, -7748.095703125)
            LQuest = 1
            NQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
        elseif b == 1850 or b <= 1899 then
            Mon = "Mythological Pirate [Lv. 1850]"
            MonPos = CFrame.new(-13427.259765625, 511.83453369140625, -6943.66162109375)
            LQuest = 2
            NQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
        elseif b == 1900 or b <= 1924 then
            Mon = "Jungle Pirate [Lv. 1900]"
            MonPos = CFrame.new(-12113.16796875, 441.3117980957031, -10540.6298828125)
            LQuest = 1
            NQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
        elseif b == 1925 or b <= 1974 then
            Mon = "Musketeer Pirate [Lv. 1925]"
            MonPos = CFrame.new(-13249.8271484375, 496.2460632324219, -9584.373046875)
            LQuest = 2
            NQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
        elseif b == 1975 or b <= 1999 then
            Mon = "Reborn Skeleton [Lv. 1975]"
            MonPos = CFrame.new(-8766.345703125, 174.2373809814453, 6169.01513671875)
            LQuest = 1
            NQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        elseif b == 2000 or b <= 2024 then
            Mon = "Living Zombie [Lv. 2000]"
            MonPos = CFrame.new(-9925.1884765625, 158.6781005859375, 6036.7314453125)
            LQuest = 2
            NQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        elseif b == 2025 or b <= 2049 then
            Mon = "Demonic Soul [Lv. 2025]"
            MonPos = CFrame.new(-9542.6875, 272.1398010253906, 6249.53515625)
            LQuest = 1
            NQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2050 or b <= 2074 then
            Mon = "Posessed Mummy [Lv. 2050]"
            MonPos = CFrame.new(-9544.2744140625, 60.294342041015625, 6348.95849609375)
            LQuest = 2
            NQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2075 or b <= 2099 then
            Mon = "Peanut Scout [Lv. 2075]"
            MonPos = CFrame.new(-2063.197021484375, 78.91095733642578, -10137.9287109375)
            LQuest = 1
            NQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2100 or b <= 2124 then
            Mon = "Peanut President [Lv. 2100]"
            MonPos = CFrame.new(-2133.56396484375, 70.31375885009766, -10523.0908203125)
            LQuest = 2
            NQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2125 or b <= 2149 then
            Mon = "Ice Cream Chef [Lv. 2125]"
            MonPos = CFrame.new(-893.8236083984375, 116.68982696533203, -10938.47265625)
            LQuest = 1
            NQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2150 or b <= 2199 then
            Mon = "Ice Cream Commander [Lv. 2150]"
            MonPos = CFrame.new(-585.1178588867188, 203.74639892578125, -11267.0107421875)
            LQuest = 2
            NQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif b == 2200 or b <= 2224 then
            Mon = "Cookie Crafter [Lv. 2200]"
            MonPos = CFrame.new(-2286.31103515625, 91.31655883789062, -12041.6884765625)
            LQuest = 1
            NQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
        elseif b == 2225 or b <= 2249 then
            Mon = "Cake Guard [Lv. 2225]"
            MonPos = CFrame.new(-1630.3675537109375, 195.69100952148438, -12275.96875)
            LQuest = 2
            NQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
        elseif b == 2250 or b <= 2274 then
            Mon = "Baking Staff [Lv. 2250]"
            MonPos = CFrame.new(-1824.580810546875, 95.08509826660156, -12891.3232421875)
            LQuest = 1
            NQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
        elseif b == 2275 or b <= 2299 then
            Mon = "Head Baker [Lv. 2275]"
            MonPos = CFrame.new(-2068.284912109375, 68.5050048828125, -12950.775390625)
            LQuest = 2
            NQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
        elseif b == 2300 or b <= 2324 then
            Mon = "Cocoa Warrior [Lv. 2300]"
            MonPos = CFrame.new(43.3896598815918, 56.341636657714844, -12324.78515625)
            LQuest = 1
            NQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.88818359375, 24.769283294677734, -12202.1337890625)
        elseif b == 2325 or b <= 2349 then
            Mon = "Chocolate Bar Battler [Lv. 2325]"
            MonPos = CFrame.new(719.6046752929688, 69.9678955078125, -12597.25390625)
            LQuest = 2
            NQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.88818359375, 24.769283294677734, -12202.1337890625)
        elseif b == 2350 or b <= 2374 then
            Mon = "Sweet Thief [Lv. 2350]"
            MonPos = CFrame.new(155.99618530273438, 54.82904815673828, -12580.7265625)
            LQuest = 1
            NQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(151.1981201171875, 24.828855514526367, -12778.08984375)
        elseif b == 2375 or b <= 2399 then
            Mon = "Candy Rebel [Lv. 2375]"
            MonPos = CFrame.new(-7.535787105560303, 35.526527404785156, -12896.34375)
            LQuest = 2
            NQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(151.1981201171875, 24.828855514526367, -12778.08984375)
        elseif b == 2400 or b <= 2424 then
            Mon = "Candy Pirate [Lv. 2400]"
            MonPos = CFrame.new(-1393.447021484375, 13.819832801818848, -14419.154296875)
            LQuest = 1
            NQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1147.6239013671875, 16.133047103881836, -14444.970703125)
        elseif b <= 2450 then
            Mon = "Snow Demon [Lv. 2425]"
            MonPos = CFrame.new(-820.8795166015625, 49.07795715332031, -14329.525390625)
            LQuest = 2
            NQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1147.6239013671875, 16.133047103881836, -14444.970703125)
        end
    end
end
spawn(
    function()
        pcall(
            function()
                game.ReplicatedStorage.Effect.Container.Death:Destroy()
                game.ReplicatedStorage.Effect.Container.Respawn:Destroy()
                game.ReplicatedStorage.Effect.Container.Hit:Destroy()
            end
        )
    end
)
function Tween(a)
    spawn(
        function()
            if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                local a = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                a.Name = "Hold"
                a.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                a.Velocity = Vector3.new(0, 0, 0)
            end
            Distance = (a.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
            local b = 0.87
            if Distance < 250 then
                Speed = 700 * b
            elseif Distance < 500 then
                Speed = 500 * b
            elseif Distance < 1000 then
                Speed = 450 * b
            elseif Distance >= 1000 then
                Speed = 350 * b
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.PrimaryPart,
                TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
                {CFrame = a}
            ):Play()
        end
    )
end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
Type = 1
spawn(
    function()
        while wait(.1) do
            if Type == 1 then
                AutoFarm = CFrame.new(0, 30, 0) * CFrame.Angles(0, 30, 0)
            elseif Type == 2 then
                AutoFarm = CFrame.new(0, 30, 15) * CFrame.Angles(0, 30, 0)
            elseif Type == 3 then
                AutoFarm = CFrame.new(15, 30, 0) * CFrame.Angles(0, 30, 0)
            end
        end
    end
)
spawn(
    function()
        while wait(.1) do
            Type = 1
            wait(.15)
            Type = 2
            wait(.15)
            Type = 3
        end
    end
)
function GetDistance(a)
    return math.floor((a.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end
function TelePPlayer(a)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
end
spawn(
    function()
        pcall(
            function()
                while wait() do
                    for a, a in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if a:IsA("Tool") then
                            if a:FindFirstChild("RemoteFunctionShoot") then
                                SelectWeaponGun = a.Name
                            end
                        end
                    end
                end
            end
        )
    end
)
local a = loadstring(game:HttpGet("https://newpchx2.000webhostapp.com/OBF_UI/UI_Edit_By_Ares.lua"))()
local a = library:Evil("MeMayBeo", "", _G.Logo)
local b = a:CraftTab("Main")
local c = b:CraftPage("Main Page 1", 1)
c:Label("Auto Farm LV")
c:Toggle(
    "Auto Farm Level",
    _G.Settings.AutoFarm,
    function(a)
        getgenv().AutoFarm = a
        _G.Settings.AutoFarm = a
        saveSettings()
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if StartBring then
                        for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                            if
                                a.Name == _G.Mon and
                                    (a.HumanoidRootPart.Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350
                             then
                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                a.HumanoidRootPart.CanCollide = false
                                a.Head.CanCollide = false
                                a.HumanoidRootPart.CFrame = Pos
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if getgenv().AutoFarm then
                        CheckQuest()
                        if
                            not string.find(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                NameMon
                            )
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartBring = false
                            if
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude >
                                    1500
                             then
                                BypassTP(CFrameQuest)
                                wait(2)
                            else
                                Tween(CFrameQuest)
                                AutoHaki()
                            end
                            if
                                (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <=
                                    20
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NQuest,
                                    LQuest
                                )
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            CheckQuest()
                            StartBring = true
                            if game.Workspace.Enemies:FindFirstChild(Mon) then
                                for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if a.Name == Mon and a:FindFirstChild("HumanoidRootPart") and a.Humanoid.Health > 0 then
                                        repeat
                                            task.wait()
                                            a.HumanoidRootPart.CanCollide = false
                                            a.Head.CanCollide = false
                                            Pos = a.HumanoidRootPart.CFrame
                                            _G.Mon = a.Name
                                            a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                            EquipWeapon(_G.Select_Weapon)
                                            Click()
                                        until a.Humanoid.Health <= 0 or not a.Parent or not getgenv().AutoFarm or
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                Tween(MonPos)
                            end
                        end
                    end
                end
            )
        end
    end
)
local d = {}
for a, a in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(a.Name, "Boss") then
        if a.Name == "Ice Admiral [Lv. 700] [Boss]" then
        else
            table.insert(d, a.Name)
        end
    end
end
local d =
    c:Dropdown(
    "Select Boss",
    d,
    function(a)
        _G.SelectBoss = a
    end
)
c:Button(
    "Refresh Boss",
    function()
        d:Clear()
        for a, a in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(a.Name, "Boss") then
                d:Add(a.Name)
            end
        end
    end
)
c:Toggle(
    "Auto Farm Boss",
    false,
    function(a)
        _G.AutoFarmBoss = a
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                            for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if a.Name == _G.SelectBoss then
                                    if
                                        a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and
                                            a.Humanoid.Health > 0
                                     then
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            a.HumanoidRootPart.CanCollide = false
                                            a.Humanoid.WalkSpeed = 0
                                            a.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                            Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(
                                                game:GetService("Players").LocalPlayer,
                                                "SimulationRadius",
                                                math.huge
                                            )
                                        until not _G.AutoFarmBoss or not a.Parent or a.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                                Tween(
                                    game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame *
                                        AutoFarm
                                )
                            end
                        end
                    end
                )
            end
        end
    end
)
if World3 then
    c:Label("Auto Farm Prince")
    local a = c:LabelLog("Prince Need Kill Mods : 500")
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if
                            string.len(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            ) == 88
                         then
                            a:Refresh(
                                "Prince Need Kill Mods : " ..
                                    string.sub(
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "CakePrinceSpawner"
                                        ),
                                        39,
                                        41
                                    )
                            )
                        elseif
                            string.len(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            ) == 87
                         then
                            a:Refresh(
                                "Prince Need Kill Mods : " ..
                                    string.sub(
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "CakePrinceSpawner"
                                        ),
                                        39,
                                        40
                                    )
                            )
                        elseif
                            string.len(
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                            ) == 86
                         then
                            a:Refresh(
                                "Prince Need Kill Mods : " ..
                                    string.sub(
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "CakePrinceSpawner"
                                        ),
                                        39,
                                        39
                                    )
                            )
                        else
                            a:Refresh("Prince Is Spawning 🟢")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Auto Prince",
        _G.Settings.AutoPrince,
        function(a)
            getgenv().AutoPrince = a
            _G.Settings.AutoPrince = a
            saveSettings()
        end
    )
    spawn(
        function()
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    pcall(
                        function()
                            for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    getgenv().AutoPrince and StartCakeMagnet and
                                        (a.Name == "Cookie Crafter [Lv. 2200]" or a.Name == "Cake Guard [Lv. 2225]" or
                                            a.Name == "Baking Staff [Lv. 2250]" or
                                            a.Name == "Head Baker [Lv. 2275]") and
                                        (a.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350
                                 then
                                    a.HumanoidRootPart.CFrame = POSCAKE
                                    a.HumanoidRootPart.CanCollide = false
                                    a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    if a.Humanoid:FindFirstChild("Animator") then
                                        a.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    )
                end
            )
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoPrince then
                    pcall(
                        function()
                            if
                                game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild(
                                        "Cake Prince [Lv. 2300] [Raid Boss]"
                                    )
                             then
                                if
                                    game:GetService("Workspace").Enemies:FindFirstChild(
                                        "Cake Prince [Lv. 2300] [Raid Boss]"
                                    )
                                 then
                                    for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if a.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                a.HumanoidRootPart.CanCollide = false
                                                Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                Click()
                                            until getgenv().AutoPrince == false or not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    TelePPlayer(CFrame.new(-2133.14697265625, 70.00882720947266, -12400.857421875))
                                    wait(1)
                                end
                            else
                                if
                                    game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or
                                        game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or
                                        game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or
                                        game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")
                                 then
                                    for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if
                                            (a.Name == "Baking Staff [Lv. 2250]" or a.Name == "Head Baker [Lv. 2275]" or
                                                a.Name == "Cake Guard [Lv. 2225]" or
                                                a.Name == "Cookie Crafter [Lv. 2200]") and
                                                a.Humanoid.Health > 0
                                         then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StartCakeMagnet = true
                                                a.HumanoidRootPart.CanCollide = false
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                POSCAKE = a.HumanoidRootPart.CFrame
                                                Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                Click()
                                            until getgenv().AutoPrince == false or
                                                game:GetService("ReplicatedStorage"):FindFirstChild(
                                                    "Cake Prince [Lv. 2300] [Raid Boss]"
                                                ) or
                                                not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    StartCakeMagnet = false
                                    if
                                        (CFrame.new(-2437.8212890625, 132.23837280273438, -12128.26953125).Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <=
                                            1500
                                     then
                                        Tween(CFrame.new(-2437.8212890625, 132.23837280273438, -12128.26953125))
                                    else
                                        BypassTP(CFrame.new(-2437.8212890625, 132.23837280273438, -12128.26953125))
                                        wait(100)
                                        Tween(CFrame.new(-2437.8212890625, 132.23837280273438, -12128.26953125))
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Toggle(
        "Auto Prince [V2]",
        _G.Settings.AutoPrinceV2,
        function(a)
            getgenv().AutoPrinceV2 = a
            _G.Settings.AutoPrinceV2 = a
            saveSettings()
        end
    )
    spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        if getgenv().AutoPrinceV2 then
                            if not game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                                for a, a in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
                                    if a.Name == "Conjured Cocoa" then
                                        if a.Count <= 9 then
                                            if
                                                game.Workspace.Enemies:FindFirstChild(
                                                    "Chocolate Bar Battler [Lv. 2325]"
                                                ) or game.Workspace.Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]")
                                             then
                                                for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if
                                                        a.Name == "Chocolate Bar Battler [Lv. 2325]" or
                                                            a.Name == "Cocoa Warrior [Lv. 2300]"
                                                     then
                                                        if a:FindFirstChild("HumanoidRootPart") then
                                                            repeat
                                                                task.wait()
                                                                EquipWeapon(_G.Select_Weapon)
                                                                Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                                a.HumanoidRootPart.CanCollide = false
                                                                a.Humanoid.WalkSpeed = 0
                                                                a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                                a.Head.CanCollide = false
                                                                Dough2Mon = a.Name
                                                                Dough2Pos = a.HumanoidRootPart.CFrame
                                                            until not getgenv().AutoPrinceV2 or not a.Parent or
                                                                a.Humanoid.Health <= 0
                                                        end
                                                    end
                                                end
                                            else
                                                Tween(
                                                    CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
                                                )
                                            end
                                        else
                                            if
                                                game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or
                                                    game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice")
                                             then
                                                if
                                                    game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or
                                                        game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or
                                                        game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or
                                                        game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]")
                                                 then
                                                    for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                                        if
                                                            a.Name == "Cookie Crafter [Lv. 2200]" or
                                                                a.Name == "Cake Guard [Lv. 2225]" or
                                                                a.Name == "Baking Staff [Lv. 2250]" or
                                                                v5.Name == "Head Baker [Lv. 2275]"
                                                         then
                                                            if a:FindFirstChild("HumanoidRootPart") then
                                                                repeat
                                                                    task.wait()
                                                                    while task.wait() do
                                                                        EquipWeapon(_G.Select_Weapon)
                                                                        Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                                        a.HumanoidRootPart.CanCollide = false
                                                                        a.Humanoid.WalkSpeed = 0
                                                                        a.HumanoidRootPart.Size =
                                                                            Vector3.new(50, 50, 50)
                                                                        a.Head.CanCollide = false
                                                                        Dough2Mon = a.Name
                                                                        Dough2Pos = a.HumanoidRootPart.CFrame
                                                                    end
                                                                until not getgenv().AutoPrinceV2 or not a.Parent or
                                                                    a.Humanoid.Health <= 0
                                                            end
                                                        end
                                                    end
                                                else
                                                    Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
                                                end
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "CakePrinceSpawner"
                                                )
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "SweetChaliceNpc"
                                                )
                                                for a, a in pairs(game.ReplicatedStorage:GetChildren()) do
                                                    if
                                                        a.Name == "Diablo [Lv. 1750]" or a.Name == "Urban [Lv. 1750]" or
                                                            a.Name == "Deandre [Lv. 1750]"
                                                     then
                                                        if a:FindFirstChild("HumanoidRootPart") then
                                                            repeat
                                                                task.wait()
                                                                while task.wait() do
                                                                    EquipWeapon(_G.Select_Weapon)
                                                                    Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                                    a.Humanoid.WalkSpeed = 0
                                                                    a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                                    a.Humanoid:ChangeState(14)
                                                                    a.HumanoidRootPart.CanCollide = false
                                                                    a.Head.CanCollide = false
                                                                    if a.Humanoid:FindFirstChild("Animator") then
                                                                        a.Humanoid.Animator:Destroy()
                                                                    end
                                                                    sethiddenproperty(
                                                                        game.Players.LocalPlayer,
                                                                        "SimulationRadius",
                                                                        math.huge
                                                                    )
                                                                end
                                                            until not getgenv().AutoPrinceV2 or not a.Parent or
                                                                a.Humanoid.Health <= 0
                                                        end
                                                    end
                                                end
                                            end
                                            if
                                                not game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") or
                                                    not game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
                                                    not game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]")
                                             then
                                                if
                                                    game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or
                                                        game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or
                                                        game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or
                                                        game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]")
                                                 then
                                                    for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                                        if
                                                            a.Name == "Cookie Crafter [Lv. 2200]" or
                                                                a.Name == "Cake Guard [Lv. 2225]" or
                                                                a.Name == "Baking Staff [Lv. 2250]" or
                                                                a.Name == "Head Baker [Lv. 2275]"
                                                         then
                                                            if a:FindFirstChild("HumanoidRootPart") then
                                                                repeat
                                                                    task.wait()
                                                                    while task.wait() do
                                                                        EquipWeapon(_G.Select_Weapon)
                                                                        Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                                        a.HumanoidRootPart.CanCollide = false
                                                                        a.Humanoid.WalkSpeed = 0
                                                                        a.HumanoidRootPart.Size =
                                                                            Vector3.new(50, 50, 50)
                                                                        a.Head.CanCollide = false
                                                                        Dough2Mon = a.Name
                                                                        Dough2Pos = a.HumanoidRootPart.CFrame
                                                                    end
                                                                until not getgenv().AutoPrinceV2 or not a.Parent or
                                                                    a.Humanoid.Health <= 0
                                                            end
                                                        end
                                                    end
                                                else
                                                    Tween(CFrame.new(-2021.32007, 37.7982254, -12028.7295))
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                for a, a in pairs(game.ReplicatedStorage:GetChildren()) do
                                    if a.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                                        if a:FindFirstChild("HumanoidRootPart") then
                                            repeat
                                                task.wait()
                                                while task.wait() do
                                                    EquipWeapon(_G.Select_Weapon)
                                                    Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                    a.Humanoid.WalkSpeed = 0
                                                    a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    a.Humanoid:ChangeState(14)
                                                    a.HumanoidRootPart.CanCollide = false
                                                    a.Head.CanCollide = false
                                                    if a.Humanoid:FindFirstChild("Animator") then
                                                        a.Humanoid.Animator:Destroy()
                                                    end
                                                    sethiddenproperty(
                                                        game.Players.LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                end
                                            until not getgenv().AutoPrinceV2 or not a.Parent or a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    )
    spawn(
        function()
            while task.wait() do
                if StartBring and getgenv().AutoPrinceV2 then
                    pcall(
                        function()
                            for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    a.Name == CocoMon and
                                        (a.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            400
                                 then
                                    a.Humanoid.WalkSpeed = 0
                                    a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    a.HumanoidRootPart.CanCollide = false
                                    a.Head.CanCollide = false
                                    a.HumanoidRootPart.CFrame = CocoPos
                                    if a.Humanoid:FindFirstChild("Animator") then
                                        a.Humanoid.Animator:Destroy()
                                    end
                                    a.Humanoid:ChangeState(11)
                                    a.Humanoid:ChangeState(14)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    spawn(
        function()
            while task.wait() do
                if StartBring and getgenv().AutoPrinceV2 then
                    pcall(
                        function()
                            for a, a in pairs(game.Workspace.Enemies:GetChildren()) do
                                if
                                    a.Name == Dough2Mon and
                                        (a.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            400
                                 then
                                    a.Humanoid.WalkSpeed = 0
                                    a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    a.HumanoidRootPart.CanCollide = false
                                    a.Head.CanCollide = false
                                    a.HumanoidRootPart.CFrame = Dough2Pos
                                    if a.Humanoid:FindFirstChild("Animator") then
                                        a.Humanoid.Animator:Destroy()
                                    end
                                    a.Humanoid:ChangeState(11)
                                    a.Humanoid:ChangeState(14)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Label("Auto Farm Bone")
    local a = c:LabelLog("Bone : ")
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        a:Refresh(
                            "Bone : " ..
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check"))
                        )
                    end
                end
            )
        end
    )
    c:Toggle(
        "Auto Farm Bone",
        _G.Settings.AutoFarmBone,
        function(a)
            getgenv().AutoFarmBone = a
            _G.Settings.AutoFarmBone = a
            saveSettings()
        end
    )
    spawn(
        function()
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    pcall(
                        function()
                            for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    StatrMagnetBoneMon and
                                        (a.Name == "Reborn Skeleton [Lv. 1975]" or a.Name == "Living Zombie [Lv. 2000]" or
                                            a.Name == "Demonic Soul [Lv. 2025]" or
                                            a.Name == "Posessed Mummy [Lv. 2050]") and
                                        (a.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350
                                 then
                                    a.HumanoidRootPart.CFrame = PosMonBone
                                    a.HumanoidRootPart.CanCollide = false
                                    a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    if a.Humanoid:FindFirstChild("Animator") then
                                        a.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    )
                end
            )
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoFarmBone then
                    pcall(
                        function()
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]")
                             then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        a.Name == "Reborn Skeleton [Lv. 1975]" or a.Name == "Living Zombie [Lv. 2000]" or
                                            a.Name == "Demonic Soul [Lv. 2025]" or
                                            a.Name == "Posessed Mummy [Lv. 2050]"
                                     then
                                        if a.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StatrMagnetBoneMon = true
                                                a.HumanoidRootPart.CanCollide = false
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                PosMonBone = a.HumanoidRootPart.CFrame
                                                Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                Click()
                                            until getgenv().AutoFarmBone == false or not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                StatrMagnetBoneMon = false
                                if
                                    (CFrame.new(-9556.91796875, 272.13055419921875, 6249.6064453125).Position -
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500
                                 then
                                    Tween(CFrame.new(-9556.91796875, 272.13055419921875, 6249.6064453125))
                                else
                                    BypassTP(CFrame.new(-9556.91796875, 272.13055419921875, 6249.6064453125))
                                    wait(1)
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Toggle(
        "Auto Trade Bone",
        _G.Settings.AutoBuySurprise,
        function(a)
            getgenv().AutoBuySurprise = a
            _G.Settings.AutoBuySurprise = a
            saveSettings()
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait(.1) do
                        if getgenv().AutoBuySurprise then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                        end
                    end
                end
            )
        end
    )
    c:Label("Auto Farm Elite")
    local a = c:LabelLog("Elite : ")
    spawn(
        function()
            while wait() do
                pcall(
                    function()
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                            a:Refresh("Elite : [ Diablo ] 🟢")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                            a:Refresh("Elite : [ Deandre ] 🟢")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                            a:Refresh("Elite : [ Urban ] 🟢")
                        else
                            a:Refresh("Elite : 🔴")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Auto Farm Elite",
        _G.Settings.AutoElite,
        function(a)
            getgenv().AutoElite = a
            _G.Settings.AutoElite = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoElite and World3 then
                    pcall(
                        function()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if
                                    string.find(
                                        game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                        "Diablo"
                                    ) or
                                        string.find(
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                            "Deandre"
                                        ) or
                                        string.find(
                                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                            "Urban"
                                        )
                                 then
                                    if
                                        game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or
                                            game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]")
                                     then
                                        for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if
                                                a.Name == "Diablo [Lv. 1750]" or a.Name == "Deandre [Lv. 1750]" or
                                                    a.Name == "Urban [Lv. 1750]"
                                             then
                                                if
                                                    a:FindFirstChild("Humanoid") and
                                                        a:FindFirstChild("HumanoidRootPart") and
                                                        a.Humanoid.Health > 0
                                                 then
                                                    repeat
                                                        wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.Select_Weapon)
                                                        a.HumanoidRootPart.CanCollide = false
                                                        a.Humanoid.WalkSpeed = 0
                                                        a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                        Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(
                                                            Vector2.new(1280, 672)
                                                        )
                                                        sethiddenproperty(
                                                            game:GetService("Players").LocalPlayer,
                                                            "SimulationRadius",
                                                            math.huge
                                                        )
                                                    until getgenv().AutoElite == false or a.Humanoid.Health <= 0 or
                                                        not a.Parent
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                            Tween(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame *
                                                    AutoFarm
                                            )
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                            Tween(
                                                game:GetService("ReplicatedStorage"):FindFirstChild(
                                                    "Deandre [Lv. 1750]"
                                                ).HumanoidRootPart.CFrame * AutoFarm
                                            )
                                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                            Tween(
                                                game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame *
                                                    AutoFarm
                                            )
                                        end
                                    end
                                end
                            else
                                if
                                    getgenv().AutoEliteHop and
                                        game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(
                                            "EliteHunter"
                                        ) == "I don't have anything for you right now. Come back later."
                                 then
                                    Hop()
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Toggle(
        "Auto Yama",
        _G.Settings.AutoYama,
        function(a)
            getgenv().AutoYama = a
            _G.Settings.AutoYama = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                        repeat
                            wait(.1)
                            fireclickdetector(
                                game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector
                            )
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or
                            not getgenv().AutoYama
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") <= 30 then
                    getgenv().AutoElite = true
                else
                    getgenv().AutoElite = false
                end
            end
        end
    )
    c:Label("Auto V4")
    local a = c:LabelLog("FullMoon Check:")
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                            a:Refresh("🌑 : Full Moon 100%")
                        elseif
                            game:GetService("Lighting").Sky.MoonTextureId ==
                                "http://www.roblox.com/asset/?id=9709149052"
                         then
                            a:Refresh("🌒 : Full Moon 75%")
                        elseif
                            game:GetService("Lighting").Sky.MoonTextureId ==
                                "http://www.roblox.com/asset/?id=9709143733"
                         then
                            a:Refresh("🌓 : Full Moon 50%")
                        elseif
                            game:GetService("Lighting").Sky.MoonTextureId ==
                                "http://www.roblox.com/asset/?id=9709150401"
                         then
                            a:Refresh("🌗 : Full Moon 25%")
                        elseif
                            game:GetService("Lighting").Sky.MoonTextureId ==
                                "http://www.roblox.com/asset/?id=9709149680"
                         then
                            a:Refresh("🌖 : Full Moon 15%")
                        else
                            a:Refresh("🌚 : Full Moon 0%")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Auto Comple Trial Ghoul V4",
        _G.Settings.TrialGhoul,
        function(a)
            getgenv().TrialGhoul = a
            _G.Settings.TrialGhoul = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().TrialGhoul then
                    pcall(
                        function()
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Ancient Zombie [Lv. 2000]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ancient Vampire [Lv. 2000]")
                             then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if a.Name == "Ancient Zombie [Lv. 2000]" or a.Name == "Ancient Vampire [Lv. 2000]" then
                                        if a.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StatrMagnet = true
                                                a.HumanoidRootPart.CanCollide = false
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                PosMon = a.HumanoidRootPart.CFrame
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 35, 20))
                                                Click()
                                            until getgenv().TrialGhoul == false or not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Toggle(
        "Auto Comple Trial Human V4",
        _G.Settings.TrialHuman,
        function(a)
            getgenv().TrialHuman = a
            _G.Settings.TrialHuman = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().TrialHuman then
                    pcall(
                        function()
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Darkness Master [Lv. 1100]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Light Master [Lv. 1100]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Rumble Master [Lv. 1100]")
                             then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        a.Name == "Light Master [Lv. 1100]" or a.Name == "Darkness Master [Lv. 1100]" or
                                            a.Name == "Rumble Master [Lv. 1100]"
                                     then
                                        if a.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                StatrMagnet = true
                                                a.HumanoidRootPart.CanCollide = false
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                PosMon = a.HumanoidRootPart.CFrame
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 35, 20))
                                                Click()
                                            until getgenv().TrialHuman == false or not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Button(
        "Auto Comple Trial Mink V4",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -5, 0)
        end
    )
    c:Button(
        "Auto Comple Trial Angel V4",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
        end
    )
    c:Button(
        "Auto Comple Trial Cyborg V4",
        function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)
        end
    )
    c:Label("Mystic Island")
    local a = c:LabelLog("Mystic Island Check : No Spawn🔴")
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                            a:Refresh("Mystic Island Check : Is Spawn🟢")
                        else
                            a:Refresh("Mystic Island Check : No Spawn🔴")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Teleport Mystic",
        _G.Settings.TPMystic,
        function(a)
            getgenv().TPMystic = a
            _G.Settings.TPMystic = a
            saveSettings()
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if getgenv().TPMystic then
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                TweenMisc(
                                    CFrame.new(
                                        game:GetService("Workspace").Map.MysticIsland.Center.Position.X,
                                        500,
                                        game:GetService("Workspace").Map.MysticIsland.Center.Position.Z
                                    )
                                )
                            end
                        end
                    end
                end
            )
        end
    )
    c:Toggle(
        "Teleport Gear",
        _G.Settings.TPGear,
        function(a)
            getgenv().TPGear = a
            _G.Settings.TPGear = a
            saveSettings()
        end
    )
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        if getgenv().TPGear then
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                for a, a in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                    if a:IsA("MeshPart") then
                                        if a.Material == Enum.Material.Neon then
                                            TweenMisc(a.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    )
    c:Toggle(
        "Teleport Frag Chest",
        _G.Settings.AutoChestFag,
        function(a)
            getgenv().AutoChestFag = a
            _G.Settings.AutoChestFag = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoChestFag then
                    pcall(
                        function()
                            if game:GetService("Workspace").Map.MysticIsland:FindFirstChild("FragChest") then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if a.Name == "FragChest" then
                                        if a.Humanoid.Health > 0 then
                                            repeat
                                                wait()
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0))
                                            until getgenv().AutoChestFag == false or not a.Parent or
                                                a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Label("Rip Indra Boss")
    local a = c:LabelLog("Rip Indra : No Spawn🔴")
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        if
                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                "rip_indra True Form [Lv. 5000] [Raid Boss]"
                            )
                         then
                            a:Refresh("Rip Indra : Is Spawn🟢")
                        else
                            a:Refresh("Rip Indra : No Spawn🔴")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Auto Kill Boss Rip Indra",
        _G.Settings.AutoDarkDanger,
        function(a)
            getgenv().AutoDarkDanger = a
            _G.Settings.AutoDarkDanger = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoDarkDanger then
                    pcall(
                        function()
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "rip_indra True Form [Lv. 5000] [Raid Boss]"
                                )
                             then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if a.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                        if
                                            a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and
                                                a.Humanoid.Health > 0
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                a.HumanoidRootPart.CanCollide = false
                                                a.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                                                Click()
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            until not getgenv().AutoDarkDanger or not a.Parent or a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                if
                                    game:GetService("ReplicatedStorage"):FindFirstChild(
                                        "rip_indra True Form [Lv. 5000] [Raid Boss]"
                                    )
                                 then
                                    Tween(
                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "rip_indra True Form [Lv. 5000] [Raid Boss]"
                                        ).HumanoidRootPart.CFrame * CFrame.new(0, 0, 15)
                                    )
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Toggle(
        "Auto Tushita [ Beta ]",
        _G.Settings.AutoDarkDanger,
        function(a)
            getgenv().AutoDarkDanger = a
            _G.Settings.AutoDarkDanger = a
            saveSettings()
        end
    )
    c:Label("Soul Repear Boss")
    local a = c:LabelLog("Soul Reaper : No Spawn🔴")
    task.spawn(
        function()
            while task.wait() do
                pcall(
                    function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            a:Refresh("Soul Reaper : Is Spawn🟢")
                        else
                            a:Refresh("Soul Reaper : No Spawn🔴")
                        end
                    end
                )
            end
        end
    )
    c:Toggle(
        "Auto Kill Boss Soul Repear",
        _G.Settings.AutoSoulReaper,
        function(a)
            getgenv().AutoSoulReaper = a
            _G.Settings.AutoSoulReaper = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoSoulReaper then
                    pcall(
                        function()
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
                                Tween(
                                    CFrame.new(
                                        -8932.83789,
                                        144.098709,
                                        6059.34229,
                                        -0.999290943,
                                        7.95623478e-09,
                                        -0.0376505218,
                                        4.4684243e-09,
                                        1,
                                        9.27205832e-08,
                                        0.0376505218,
                                        9.24866086e-08,
                                        -0.999290943
                                    )
                                )
                            elseif
                                game:GetService("Workspace").Enemies:FindFirstChild(
                                    "Soul Reaper [Lv. 2100] [Raid Boss]"
                                ) or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")
                             then
                                if game.Workspace.Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                    for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if a.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                            if
                                                getgenv().AutoSoulReaper and
                                                    a.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" and
                                                    a:FindFirstChild("HumanoidRootPart") and
                                                    a:FindFirstChild("Humanoid") and
                                                    a.Humanoid.Health > 0
                                             then
                                                repeat
                                                    wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.Select_Weapon)
                                                    a.HumanoidRootPart.CanCollide = false
                                                    a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                                                until not getgenv().AutoSoulReaper or not a.Parent or
                                                    a.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                end
                            else
                                if getgenv().AutoSoulReaper_Hop then
                                    Hop()
                                else
                                    local a = {[1] = "Bones", [2] = "Buy", [3] = 1, [4] = 1}
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
                                end
                            end
                        end
                    )
                end
            end
        end
    )
    c:Label("Buddy Boss")
    local a = c:LabelLog("Buddy Boss : No Spawn🔴")
    c:Toggle(
        "Auto Kill Boss Buddy Sword",
        _G.Settings.AutoBuddySword,
        function(a)
            getgenv().AutoBuddySword = a
            _G.Settings.AutoBuddySword = a
            saveSettings()
        end
    )
    c:Toggle(
        "Auto Kill Boss Buddy Sword [ Hop ]",
        _G.Settings.AutoBuddySwordHop,
        function(a)
            getgenv().AutoBuddySwordHop = a
            _G.Settings.AutoBuddySwordHop = a
            saveSettings()
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoBuddySword then
                    pcall(
                        function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if a.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                        if
                                            a:FindFirstChild("Humanoid") and a:FindFirstChild("HumanoidRootPart") and
                                                a.Humanoid.Health > 0
                                         then
                                            repeat
                                                task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                a.HumanoidRootPart.CanCollide = false
                                                a.Humanoid.WalkSpeed = 0
                                                a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(
                                                    game.Players.LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            until not getgenv().AutoBuddySword or not a.Parent or a.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                    Tween(
                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "Cake Queen [Lv. 2175] [Boss]"
                                        ).HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                    )
                                else
                                    if getgenv().AutoBuddySwordHop then
                                        Hop()
                                    end
                                end
                            end
                        end
                    )
                end
            end
        end
    )
end
if World2 then
    c:Label("Auto Farm Ectoplasm")
    local a = c:LabelLog("Ectoplasm Check :")
    spawn(
        function()
            pcall(
                function()
                    while wait() do
                        a:Refresh(
                            "Ectoplasm Check : " ..
                                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Check"))
                        )
                    end
                end
            )
        end
    )
    c:Toggle(
        "Auto Farm Ectoplasm",
        _G.Settings.AutoFarmEctoplasm,
        function(a)
            getgenv().AutoFarmEctoplasm = a
            _G.Settings.AutoFarmEctoplasm = a
            saveSettings()
        end
    )
    spawn(
        function()
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    pcall(
                        function()
                            for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if
                                    getgenv().AutoFarmEctoplasm and MagnetEctoplasm and string.find(a.Name, "Ship") and
                                        (a.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350
                                 then
                                    a.HumanoidRootPart.CFrame = PosMonEctoplasm
                                    a.HumanoidRootPart.CanCollide = false
                                    a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    if a.Humanoid:FindFirstChild("Animator") then
                                        a.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    )
                end
            )
        end
    )
    spawn(
        function()
            while wait() do
                if getgenv().AutoFarmEctoplasm then
                    pcall(
                        function()
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]")
                             then
                                for a, a in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if string.find(a.Name, "Ship") then
                                        repeat
                                            wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            PosMonEctoplasm = a.HumanoidRootPart.CFrame
                                            a.HumanoidRootPart.CanCollide = false
                                            a.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                            Tween(a.HumanoidRootPart.CFrame * AutoFarm)
                                            MagnetEctoplasm = true
                                            Click()
                                        until getgenv().AutoFarmEctoplasm == false or not a.Parent or
                                            a.Humanoid.Health <= 0
                                        MagnetEctoplasm = false
                                    else
                                        MagnetEctoplasm = false
                                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                                    end
                                end
                            else
                                MagnetEctoplasm = false
                                local a =
                                    (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) -
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                if a > 20000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "requestEntrance",
                                        Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
                                    )
                                end
                                Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                            end
                        end
                    )
                end
            end
        end
    )
end
local b = b:CraftPage("Main Page 2", 2)
local c = b:LabelLog("Select Weapon")
spawn(
    function()
        pcall(
            function()
                while wait() do
                    c:Refresh("Weapon Select :  " .. _G.Select_Weapon)
                end
            end
        )
    end
)
b:Dropdown(
    "Select Weapons",
    {"Melee", "Sword", "Gun", "Fruit"},
    _G.Settings.Select_Weapon,
    function(a)
        _G.Select_Weapon = a
        _G.Settings.Select_Weapon = a
        saveSettings()
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Select_Weapon == "Melee" then
                        for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if a.ToolTip == "Melee" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(a.Name)) then
                                    _G.Select_Weapon = a.Name
                                end
                            end
                        end
                    elseif _G.Select_Weapon == "Sword" then
                        for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if a.ToolTip == "Sword" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(a.Name)) then
                                    _G.Select_Weapon = a.Name
                                end
                            end
                        end
                    elseif _G.Select_Weapon == "Gun" then
                        for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if a.ToolTip == "Gun" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(a.Name)) then
                                    _G.Select_Weapon = a.Name
                                end
                            end
                        end
                    elseif _G.Select_Weapon == "Fruit" then
                        for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if a.ToolTip == "Blox Fruit" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(a.Name)) then
                                    _G.Select_Weapon = a.Name
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
local c = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if getgenv().Clickttack then
                    if typeof(y) == "table" then
                        pcall(
                            function()
                                c:Stop()
                                y.activeController.timeToNextAttack = (math.huge ^ math.huge ^ math.huge)
                                y.activeController.timeToNextAttack = 0
                                y.activeController.hitboxMagnitude = 2048
                                y.activeController.active = false
                                y.activeController.timeToNextBlock = 0
                                y.activeController.focusStart = 0
                                y.activeController.increment = 1
                                y.activeController.blocking = false
                                y.activeController.attacking = false
                                y.activeController.humanoid.AutoRotate = true
                            end
                        )
                    end
                end
            end
        )
    end
)
b:Toggle(
    "Fast Attack",
    _G.Settings.Clickttack,
    function(a)
        getgenv().Clickttack = a
        _G.Settings.Clickttack = a
        saveSettings()
    end
)
b:Toggle(
    "Fast Attack [ Fluxus ]",
    _G.Settings.FastAttackPC,
    function(a)
        _G.FastAttackPC = a
        _G.Settings.FastAttackPC = a
        saveSettings()
    end
)
function GetBladeHit()
    local a = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local a = a[2]
    local a = a.activeController
    local a = a.blades[1]
    if not a then
        return a
    end
    while a.Parent ~= game.Players.LocalPlayer.Character do
        a = a.Parent
    end
    return a
end
function AttackHit()
    local a = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local a = a[2]
    local b = game.Players.LocalPlayer
    for c = 1, 1 do
        local b =
            require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            b.Character,
            {b.Character.HumanoidRootPart},
            60
        )
        local d = {}
        local e = {}
        for a, a in pairs(b) do
            if a.Parent:FindFirstChild("HumanoidRootPart") and not e[a.Parent] then
                table.insert(d, a.Parent.HumanoidRootPart)
                e[a.Parent] = true
            end
        end
        b = d
        if #b > 0 then
            pcall(
                function()
                    a.activeController.timeToNextAttack = 1
                    a.activeController.attacking = false
                    a.activeController.blocking = false
                    a.activeController.timeToNextBlock = 0
                    a.activeController.increment = 3
                    a.activeController.hitboxMagnitude = 100
                    a.activeController.focusStart = 0
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring(GetBladeHit())
                    )
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", b, c, "")
                end
            )
        end
    end
end
spawn(
    function()
        while wait(0.000000000000000000000001) do
            if _G.FastAttackPC then
                pcall(
                    function()
                        repeat
                            task.wait(.1)
                            AttackHit()
                        until not _G.FastAttack
                    end
                )
            end
        end
    end
)
local c = require(game.ReplicatedStorage.Util.CameraShaker)
c:Stop()
b:Button(
    "Fix Lag Remove",
    function()
        WaterRemvoe()
        ObjectRemvoe()
        InvisibleObject()
    end
)
function WaterRemvoe()
    for a, a in pairs(workspace:GetDescendants()) do
        if string.find(a.Name, "Water") then
            a:Destroy()
        end
    end
end
function ObjectRemvoe()
    for a, a in pairs(workspace:GetDescendants()) do
        if string.find(a.Name, "Tree") or string.find(a.Name, "House") then
            a:Destroy()
        end
    end
end
function InvisibleObject()
    for a, a in pairs(game:GetService("Workspace"):GetDescendants()) do
        if (a:IsA("Part") or a:IsA("MeshPart") or a:IsA("BasePart")) and a.Transparency then
            a.Transparency = 1
        end
    end
end
b:Toggle(
    "Auto Awakening Race V4",
    _G.Settings.AutoAwakeningRace,
    function(a)
        getgenv().AutoAwakeningRace = va
        _G.Settings.AutoAwakeningRace = va
        saveSettings()
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().AutoAwakeningRace then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                    end
                end
            )
        end
    end
)
b:Toggle(
    "Auto Spawn Katakuri",
    _G.Settings.AutoSpawnKatakuri,
    function(a)
        getgenv().AutoSpawnKatakuri = va
        _G.Settings.AutoSpawnKatakuri = va
        saveSettings()
    end
)
spawn(
    function()
        while wait() do
            if getgenv().AutoSpawnKatakuri then
                local a = {[1] = "CakePrinceSpawner", [2] = true}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
                local a = {[1] = "CakePrinceSpawner"}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
            end
        end
    end
)
b:Toggle(
    "Bring Mob",
    _G.Settings.StartBring,
    function(a)
        StartBring = a
        _G.Settings.StartBring = a
        saveSettings()
    end
)
local b = a:CraftTab("Player")
local c = b:CraftPage("Player Page 1", 1)
c:Label("Stats")
c:Toggle(
    "Stats Melee",
    _G.Settings.Auto_Melee,
    function(a)
        _G.Auto_Melee = a
        _G.Settings.Auto_Melee = a
        saveSettings()
    end
)
c:Toggle(
    "Stats Defense",
    _G.Settings.Auto_Defense,
    function(a)
        _G.Auto_Defense = a
        _G.Settings.Auto_Defense = a
        saveSettings()
    end
)
c:Toggle(
    "Stats Sword",
    _G.Settings.Auto_Sword,
    function(a)
        _G.Auto_Sword = a
        _G.Settings.Auto_Sword = a
        saveSettings()
    end
)
c:Toggle(
    "Stats Gun",
    _G.Settings.Auto_Gun,
    function(a)
        _G.Auto_Gun = a
        _G.Settings.Auto_Gun = a
        saveSettings()
    end
)
c:Toggle(
    "Stats Devil Fruit",
    _G.Settings.Auto_DevilFruit,
    function(a)
        _G.Auto_DevilFruit = a
        _G.Settings.Auto_DevilFruit = a
        saveSettings()
    end
)
c:Slider(
    "Stats Point",
    true,
    0,
    100,
    100,
    function(a)
        _G.PointStats = a
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Melee then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Melee",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Defense then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Defense",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Sword then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Sword",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Gun then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Gun",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_DevilFruit then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Demon Fruit",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
c:Label("Esp")
c:Toggle(
    "ESP Player",
    false,
    function(a)
        ESPPlayer = a
        while ESPPlayer do
            wait()
            UpdateEspPlayer()
        end
    end
)
c:Toggle(
    "ESP Chest",
    false,
    function(a)
        ChestESP = a
        while ChestESP do
            wait()
            UpdateChestEsp()
        end
    end
)
c:Toggle(
    "ESP Fruit",
    false,
    function(a)
        DevilFruitESP = a
        while DevilFruitESP do
            wait()
            UpdateBfEsp()
        end
    end
)
c:Toggle(
    "ESP Flower",
    false,
    function(a)
        FlowerESP = a
        while FlowerESP do
            wait()
            UpdateFlowerEsp()
        end
    end
)
c:Toggle(
    "ESP Master of Aura",
    false,
    function(a)
        MasterAurasESP = a
        while MasterAurasESP do
            wait()
            UpdateMasterEsp()
        end
    end
)
c:Toggle(
    "ESP Gear",
    false,
    function(a)
        GearEsp = a
        while GearEsp do
            wait()
            UpdateGearEsp()
        end
    end
)
local b = b:CraftPage("Player Page 2", 2)
b:Label("Combat")
Playerslist = {}
for a, a in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, a.Name)
end
b:Dropdown(
    "Select Player",
    Playerslist,
    {"Geppo"},
    function(a)
        _G.SelectPlayer = a
    end
)
b:Toggle(
    "Teleport Player Select",
    false,
    function(a)
        _G.TeleportPly = a
        pcall(
            function()
                if _G.TeleportPly then
                    repeat
                        Tween(game:GetService("Players")[_G.SelectPlayer].Character.HumanoidRootPart.CFrame)
                        wait()
                    until _G.TeleportPly == false
                end
                StopTween(_G.TeleportPly)
            end
        )
    end
)
b:Toggle(
    "Auto Kill Player Select",
    false,
    function(a)
        _G.Auto_Kill_Ply = a
    end
)
spawn(
    function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(
                    function()
                        if _G.SelectPlayer ~= nil then
                            if game.Players:FindFirstChild(_G.SelectPlayer) then
                                if game.Players:FindFirstChild(_G.SelectPlayer).Character.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.Select_Weapon)
                                        AutoHaki()
                                        game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.CanCollide =
                                            false
                                        Tween(
                                            game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.CFrame *
                                                CFrame.new(0, 35, 0)
                                        )
                                        spawn(
                                            function()
                                                pcall(
                                                    function()
                                                        if _G.Select_Weapon then
                                                            local a = {
                                                                [1] = game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart.Position,
                                                                [2] = game.Players:FindFirstChild(_G.SelectPlayer).Character.HumanoidRootPart
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[
                                                                Select_Weapon
                                                            ].RemoteFunctionShoot:InvokeServer(unpack(a))
                                                        else
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(
                                                                Vector2.new(1280, 672)
                                                            )
                                                        end
                                                    end
                                                )
                                            end
                                        )
                                    until game.Players:FindFirstChild(_G.SelectPlayer).Character.Humanoid.Health <= 0 or
                                        not game.Players:FindFirstChild(_G.SelectPlayer) or
                                        not _G.Auto_Kill_Ply
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
b:Toggle(
    "Auto Bounty [Beta]",
    false,
    function(a)
        _G.AutoFarmBounty = a
    end
)
spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").RenderStepped:connect(
                    function()
                        if
                            _G.AutoFarmBounty and TargetPlayerAim ~= nil and
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and
                                game.Players.LocalPlayer.Character[
                                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                                ]:FindFirstChild("MousePos")
                         then
                            local a = {
                                [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
                            ].RemoteEvent:FireServer(unpack(a))
                        end
                    end
                )
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                if _G.AutoFarmBounty then
                    while wait() do
                        if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoFarmBounty then
                        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                        end
                    end
                end
            )
        end
    end
)
CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.AutoFarmBounty then
                        for a, a in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                            if a.Name ~= game.Players.LocalPlayer.Name then
                                if
                                    a:WaitForChild("Humanoid").Health > 0 and
                                        (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                            a.HumanoidRootPart.Position).Magnitude <= 17000
                                 then
                                    plyselecthunthelpold = a.Humanoid.Health
                                    repeat
                                        task.wait()
                                        NameTarget = a.Name
                                        if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                            Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 20, 15))
                                        elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                            if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                                Tween(a.HumanoidRootPart.CFrame * CFrame.new(0, 20, 15))
                                            end
                                        end
                                        spawn(
                                            function()
                                                if
                                                    (a.HumanoidRootPart.Position -
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                                        150
                                                 then
                                                    spawn(
                                                        function()
                                                            SY()
                                                            ST()
                                                            EquipMelee()
                                                            SZ()
                                                            SX()
                                                            SC()
                                                            SY()
                                                            ST()
                                                            SY()
                                                            ST()
                                                            SY()
                                                            ST()
                                                            EquipSword()
                                                            SZ()
                                                            SX()
                                                        end
                                                    )
                                                end
                                            end
                                        )
                                        a.HumanoidRootPart.CanCollide = false
                                        TargetSelectHunt = a.Humanoid
                                    until _G.AutoFarmBounty == false or a.Humanoid.Health == 0 or
                                        not a:FindFirstChild("HumanoidRootPart") or
                                        not a:FindFirstChild("Humanoid") or
                                        not a.Parent or
                                        NextplySelect == true
                                    NextplySelect = false
                                    StartCheckTarget = false
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
function EquipMelee()
    wait(2)
    for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if a:IsA("Tool") then
            if a.ToolTip == "Melee" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(a)
            end
        end
    end
end
function EquipSword()
    wait(2)
    for a, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if a:IsA("Tool") then
            if a.ToolTip == "Sword" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(a)
            end
        end
    end
end
function SY()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
end
function ST()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
end
function SZ()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
    wait(4)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
end
function SX()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
end
function SC()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
end
spawn(
    function()
        pcall(
            function()
                while task.wait() do
                    if _G.AutoFarmBounty then
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                        game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoFarmBounty then
                        if TargetSelectHunt ~= nil then
                            if StartCheckTarget then
                                wait(6.5)
                                if
                                    TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or
                                        TargetSelectHunt.Health >= plyselecthunthelpold
                                 then
                                    NextplySelect = true
                                    TargetSelectHunt = nil
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(.1) do
                    if _G.AutoFarmBounty then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
            if _G.AutoFarmBounty then
                pcall(
                    function()
                        wait(150)
                        Hop()
                        Hop()
                        Hop()
                        Hop()
                        Hop()
                    end
                )
            end
        end
    end
)
local b = a:CraftTab("Teleport")
local c = b:CraftPage("Teleport Page 1", 1)
local d = {
    "The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"
}
local e = {
    "WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island"
}
local f = {
    "Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky",
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island"
}
if World1 then
    c:Dropdown(
        "Select Island",
        e,
        {"WindMill"},
        function(a)
            _G.SelectIsland = a
        end
    )
end
if World2 then
    c:Dropdown(
        "Select Island",
        d,
        {"The Cafe"},
        function(a)
            _G.SelectIsland = a
        end
    )
end
if World3 then
    c:Dropdown(
        "Select Island",
        f,
        {"Mansion"},
        function(a)
            _G.SelectIsland = a
        end
    )
end
c:Toggle(
    "Teleport Island Select",
    false,
    function(a)
        _G.TeleportIsland = a
        if _G.TeleportIsland == true then
            repeat
                wait()
                if _G.SelectIsland == "WindMill" then
                    Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    Tween(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-4607.82275, 872.54248, -1667.55688)
                    )
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                    )
                elseif _G.SelectIsland == "Prison" then
                    Tween(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                    )
                elseif _G.SelectIsland == "Fountain City" then
                    Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    Tween(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    Tween(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    Tween(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    Tween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                        "requestEntrance",
                        Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
                    )
                elseif _G.SelectIsland == "Haunted Castle" then
                    Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                end
            until not _G.TeleportIsland
        end
    end
)
c:Button(
    "Bypass TP Select Island",
    function()
        if _G.SelectIsland == "WindMill" then
            BypassTP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectIsland == "Marine" then
            BypassTP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectIsland == "Middle Town" then
            BypassTP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectIsland == "Jungle" then
            BypassTP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectIsland == "Pirate Village" then
            BypassTP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectIsland == "Desert" then
            BypassTP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectIsland == "Snow Island" then
            BypassTP(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif _G.SelectIsland == "MarineFord" then
            BypassTP(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif _G.SelectIsland == "Colosseum" then
            BypassTP(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif _G.SelectIsland == "Sky Island 1" then
            BypassTP(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif _G.SelectIsland == "Sky Island 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "requestEntrance",
                Vector3.new(-4607.82275, 872.54248, -1667.55688)
            )
        elseif _G.SelectIsland == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "requestEntrance",
                Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
            )
        elseif _G.SelectIsland == "Prison" then
            BypassTP(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif _G.SelectIsland == "Magma Village" then
            BypassTP(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif _G.SelectIsland == "Under Water Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "requestEntrance",
                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
            )
        elseif _G.SelectIsland == "Fountain City" then
            BypassTP(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif _G.SelectIsland == "Shank Room" then
            BypassTP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif _G.SelectIsland == "Mob Island" then
            BypassTP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif _G.SelectIsland == "The Cafe" then
            BypassTP(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif _G.SelectIsland == "Frist Spot" then
            BypassTP(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif _G.SelectIsland == "Dark Area" then
            BypassTP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif _G.SelectIsland == "Flamingo Mansion" then
            BypassTP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif _G.SelectIsland == "Flamingo Room" then
            BypassTP(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif _G.SelectIsland == "Green Zone" then
            BypassTP(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif _G.SelectIsland == "Factory" then
            BypassTP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif _G.SelectIsland == "Colossuim" then
            BypassTP(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif _G.SelectIsland == "Zombie Island" then
            BypassTP(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif _G.SelectIsland == "Two Snow Mountain" then
            BypassTP(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif _G.SelectIsland == "Punk Hazard" then
            BypassTP(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif _G.SelectIsland == "Cursed Ship" then
            BypassTP(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
        elseif _G.SelectIsland == "Ice Castle" then
            BypassTP(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif _G.SelectIsland == "Forgotten Island" then
            BypassTP(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif _G.SelectIsland == "Ussop Island" then
            BypassTP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif _G.SelectIsland == "Mini Sky Island" then
            BypassTP(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif _G.SelectIsland == "Great Tree" then
            BypassTP(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif _G.SelectIsland == "Castle On The Sea" then
            BypassTP(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
        elseif _G.SelectIsland == "MiniSky" then
            BypassTP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif _G.SelectIsland == "Port Town" then
            BypassTP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif _G.SelectIsland == "Hydra Island" then
            BypassTP(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
        elseif _G.SelectIsland == "Floating Turtle" then
            BypassTP(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif _G.SelectIsland == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "requestEntrance",
                Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
            )
        elseif _G.SelectIsland == "Haunted Castle" then
            BypassTP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif _G.SelectIsland == "Ice Cream Island" then
            BypassTP(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif _G.SelectIsland == "Peanut Island" then
            BypassTP(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif _G.SelectIsland == "Cake Island" then
            BypassTP(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
        end
    end
)
local b = b:CraftPage("Teleport Page 2", 2)
b:Button(
    "Teleport Sea 1",
    function()
        ame:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
)
b:Button(
    "Teleport Sea 2",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
)
b:Button(
    "Teleport Third Sea",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
)
local b = a:CraftTab("Shop")
local b = b:CraftPage("Shop Page 1", 1)
b:Label("Abilites")
local c = {"Geppo", "Buso", "Soru", "Ken"}
b:Dropdown(
    "Select Abilities",
    c,
    {"Geppo"},
    function(a)
        _G.SelectAbilities = a
    end
)
b:Button(
    "Buy [ Select Abilites ]",
    function()
        if _G.SelectAbilities == "Geppo" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
            print("[Message] Buy Comple")
        elseif _G.SelectAbilities == "Buso" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
            print("[Message] Buy Comple")
        elseif _G.SelectAbilities == "Soru" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
            print("[Message] Buy Comple")
        elseif _G.SelectAbilities == "Ken" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
            print("[Message] Buy Comple")
        end
    end
)
local c = {
    "Black Leg",
    "Electro",
    "Fishman Karate",
    "Dragon Claw",
    "Superhuman",
    "Death Step",
    "Sharkman Karate",
    "Electric Claw",
    "Dragon Talon",
    "God Human"
}
b:Dropdown(
    "Select Melee",
    c,
    {"Black Leg"},
    function(a)
        _G.SelectMelee = a
    end
)
b:Button(
    "Buy [ Select Melee ]",
    function()
        if _G.SelectMelee == "Black Leg" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Electro" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Fishman Karate" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Dragon Claw" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Superhuman" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Death Step" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Sharkman Karate" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Electric Claw" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "Dragon Talon" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
            print("[Message] Buy Comple")
        elseif _G.SelectMelee == "God Human" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
            print("[Message] Buy Comple")
        end
    end
)
local c = {
    "Cutlass",
    "Katana",
    "Iron Mace",
    "Duel Katana",
    "Triple Katana",
    "Pipe",
    "Dual-Headed Blade",
    "Bisento",
    "Soul Cane",
    "Midnight Blade"
}
b:Dropdown(
    "Select Sword",
    c,
    {"Cutlass"},
    function(a)
        _G.SelectSword = a
    end
)
b:Button(
    "Buy [ Select Sword ]",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "_G.SelectSword")
        print("[Message] Buy Comple")
    end
)
local c = {"Slingshot", "Musket", "Flintlock", "Cannon", "Kabucha", "Bizarre Rifle"}
b:Dropdown(
    "Select Gun",
    c,
    {"Slingshot"},
    function(a)
        _G.SelectGun = a
    end
)
b:Button(
    "Buy [ Select Gun ]",
    function()
        if _G.SelectGun ~= "Kabucha" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "_G.SelectGun")
            print("[Message] Buy Comple")
        elseif _G.SelectGun == "Kabucha" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
            print("[Message] Buy Comple")
        end
    end
)
local a = a:CraftTab("Misc")
local b = a:CraftPage("Misc Page 1", 1)
b:Label("Fog * Fix Lag")
b:Button(
    "Remove Fog",
    function()
        game.Lighting.Sky:Destroy()
    end
)
b:Button(
    "Fix Lag [ Farm Only! ]",
    function()
        WaterRemvoe()
        ObjectRemvoe()
        InvisibleObject()
    end
)
function WaterRemvoe()
    for a, a in pairs(workspace:GetDescendants()) do
        if string.find(a.Name, "Water") then
            a:Destroy()
        end
    end
end
function ObjectRemvoe()
    for a, a in pairs(workspace:GetDescendants()) do
        if string.find(a.Name, "Tree") or string.find(a.Name, "House") then
            a:Destroy()
        end
    end
end
function InvisibleObject()
    for a, a in pairs(game:GetService("Workspace"):GetDescendants()) do
        if (a:IsA("Part") or a:IsA("MeshPart") or a:IsA("BasePart")) and a.Transparency then
            a.Transparency = 1
        end
    end
end
b:Label("UI")
b:Button(
    "Open Fruit Shop",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
)
b:Button(
    "Open Awakening Toggler",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(getAwakenedAbilities)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
)
b:Button(
    "Open Haki Color",
    function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
)
b:Button(
    "Open Titles",
    function()
        local a = {[1] = "getTitles"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
)
b:Label("Game")
b:Toggle(
    "Walk On Water",
    nil,
    function(a)
        getgenv().WalkWater = a
    end
)
spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if getgenv().WalkWater then
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
                    else
                        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
                    end
                end
            )
        end
    end
)
b:Label("Job Id")
b:Button(
    "Copy Job Id",
    function()
        setclipboard(tostring(game.JobId))
    end
)
b:Textbox(
    "Job Id Text",
    "",
    function(a)
        _G.JobIDText = a
    end
)
b:Button(
    "Join Job Id Text",
    function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            "_G.JobIDText",
            game.Players.LocalPlayer
        )
    end
)
local a = a:CraftPage("Misc Page 2", 2)
a:Label("Server")
a:Button(
    "Rejoin Server",
    function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
)
a:Button(
    "Hop Server",
    function()
        Hop()
    end
)
a:Label("Team")
a:Button(
    "Join Team Pirate",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
)
a:Button(
    "Join Team Marines",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
)
