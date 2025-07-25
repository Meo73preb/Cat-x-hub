-- discord.gg/tnZHNCN3


shared.LoaderTitle = "Đang Tải Hub";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(3, 252, 3)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://83190276951914",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Youtube: TBoy Roblox",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local v658 = v420.__index;
--             local v659 = v420.__newindex;
--             v420.__index = function(v759, v760)
--                 if ((v760 == "debug") or (v760 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v658(v759, v760);
--             end;
--             v420.__newindex = function(v761, v762, v763)
--                 if ((v762 == "debug") or (v762 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return v659(v761, v762, v763);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local v568 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for v662, v663 in ipairs(v568) do
--                 local v664, v665 = pcall(function()
--                     return _G[v663];
--                 end);
--                 if (v664 and v665) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local v569 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for v666, v667 in ipairs(v569) do
--                 if v667 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
local v14 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();
local v15 = v14:CreateWindow({
    Title = "Cat x Hub",
    SubTitle = "Blox Fruit",
    TabWidth = 160,
    Theme = "Dark",
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End
});
local v16 = {
    Home = v15:AddTab({
        Title = "Thông Tin"
    }),
    Main = v15:AddTab({
        Title = "Cày"
    }),
};
local v17 = v14.Options;
local v18 = game.PlaceId;
if (v18 == 2753915549) then
    Sea1 = true;
elseif (v18 == 4442272183) then
    Sea2 = true;
elseif (v18 == 7449423635) then
    Sea3 = true;
else
    game:Shutdown();
end
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
    wait();
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
Sea1 = false;
Sea2 = false;
Sea3 = false;
local v19 = game.PlaceId;
if (v19 == 2753915549) then
    Sea1 = true;
elseif (v19 == 4442272183) then
    Sea2 = true;
elseif (v19 == 7449423635) then
    Sea3 = true;
end
function CheckLevel()
    local v197 = game:GetService("Players").LocalPlayer.Data.Level.Value;
    if Sea1 then
        if ((v197 == 1) or (v197 <= 9) or (SelectMonster == "Bandit")) then
            Ms = "Bandit";
            NameQuest = "BanditQuest1";
            QuestLv = 1;
            NameMon = "Bandit";
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875);
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953);
        elseif ((v197 == 10) or (v197 <= 14) or (SelectMonster == "Monkey")) then
            Ms = "Monkey";
            NameQuest = "JungleQuest";
            QuestLv = 1;
            NameMon = "Monkey";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1448.1446533203, 50.851993560791, 63.60718536377);
        elseif ((v197 == 15) or (v197 <= 29) or (SelectMonster == "Gorilla")) then
            Ms = "Gorilla";
            NameQuest = "JungleQuest";
            QuestLv = 2;
            NameMon = "Gorilla";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1142.6488037109, 40.462348937988, - 515.39227294922);
        elseif ((v197 == 30) or (v197 <= 39) or (SelectMonster == "Pirate")) then
            Ms = "Pirate";
            NameQuest = "BuggyQuest1";
            QuestLv = 1;
            NameMon = "Pirate";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1201.0881347656, 40.628940582275, 3857.5966796875);
        elseif ((v197 == 40) or (v197 <= 59) or (SelectMonster == "Brute")) then
            Ms = "Brute";
            NameQuest = "BuggyQuest1";
            QuestLv = 2;
            NameMon = "Brute";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1387.5324707031, 24.592035293579, 4100.9575195313);
        elseif ((v197 == 60) or (v197 <= 74) or (SelectMonster == "Desert Bandit")) then
            Ms = "Desert Bandit";
            NameQuest = "DesertQuest";
            QuestLv = 1;
            NameMon = "Desert Bandit";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625);
        elseif ((v197 == 75) or (v197 <= 89) or (SelectMonster == "Desert Officer")) then
            Ms = "Desert Officer";
            NameQuest = "DesertQuest";
            QuestLv = 2;
            NameMon = "Desert Officer";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688);
        elseif ((v197 == 90) or (v197 <= 99) or (SelectMonster == "Snow Bandit")) then
            Ms = "Snow Bandit";
            NameQuest = "SnowQuest";
            QuestLv = 1;
            NameMon = "Snow Bandit";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, - 1328.2418212891);
        elseif ((v197 == 100) or (v197 <= 119) or (SelectMonster == "Snowman")) then
            Ms = "Snowman";
            NameQuest = "SnowQuest";
            QuestLv = 2;
            NameMon = "Snowman";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172);
        elseif ((v197 == 120) or (v197 <= 149) or (SelectMonster == "Chief Petty Officer")) then
            Ms = "Chief Petty Officer";
            NameQuest = "MarineQuest2";
            QuestLv = 1;
            NameMon = "Chief Petty Officer";
            CFrameQ = CFrame.new(- 5035.49609375, 28.677835464478, 4324.1840820313);
            CFrameMon = CFrame.new(- 4931.1552734375, 65.793113708496, 4121.8393554688);
        elseif ((v197 == 150) or (v197 <= 174) or (SelectMonster == "Sky Bandit")) then
            Ms = "Sky Bandit";
            NameQuest = "SkyQuest";
            QuestLv = 1;
            NameMon = "Sky Bandit";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 4955.6411132813, 365.46365356445, - 2908.1865234375);
        elseif ((v197 == 175) or (v197 <= 189) or (SelectMonster == "Dark Master")) then
            Ms = "Dark Master";
            NameQuest = "SkyQuest";
            QuestLv = 2;
            NameMon = "Dark Master";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 5148.1650390625, 439.04571533203, - 2332.9611816406);
        elseif ((v197 == 190) or (v197 <= 209) or (SelectMonster == "Prisoner")) then
            Ms = "Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 1;
            NameMon = "Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, - 0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816);
        elseif ((v197 == 210) or (v197 <= 249) or (SelectMonster == "Dangerous Prisoner")) then
            Ms = "Dangerous Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 2;
            NameMon = "Dangerous Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, - 0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827);
        elseif ((v197 == 250) or (v197 <= 274) or (SelectMonster == "Toga Warrior")) then
            Ms = "Toga Warrior";
            NameQuest = "ColosseumQuest";
            QuestLv = 1;
            NameMon = "Toga Warrior";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1872.5166015625, 49.080215454102, - 2913.810546875);
        elseif ((v197 == 275) or (v197 <= 299) or (SelectMonster == "Gladiator")) then
            Ms = "Gladiator";
            NameQuest = "ColosseumQuest";
            QuestLv = 2;
            NameMon = "Gladiator";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1521.3740234375, 81.203170776367, - 3066.3139648438);
        elseif ((v197 == 300) or (v197 <= 324) or (SelectMonster == "Military Soldier")) then
            Ms = "Military Soldier";
            NameQuest = "MagmaQuest";
            QuestLv = 1;
            NameMon = "Military Soldier";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5369.0004882813, 61.24352645874, 8556.4921875);
        elseif ((v197 == 325) or (v197 <= 374) or (SelectMonster == "Military Spy")) then
            Ms = "Military Spy";
            NameQuest = "MagmaQuest";
            QuestLv = 2;
            NameMon = "Military Spy";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, - 0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562);
        elseif ((v197 == 375) or (v197 <= 399) or (SelectMonster == "Fishman Warrior")) then
            Ms = "Fishman Warrior";
            NameQuest = "FishmanQuest";
            QuestLv = 1;
            NameMon = "Fishman Warrior";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 400) or (v197 <= 449) or (SelectMonster == "Fishman Commando")) then
            Ms = "Fishman Commando";
            NameQuest = "FishmanQuest";
            QuestLv = 2;
            NameMon = "Fishman Commando";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((v197 == 10) or (v197 <= 474) or (SelectMonster == "God's Guard")) then
            Ms = "God's Guard";
            NameQuest = "SkyExp1Quest";
            QuestLv = 1;
            NameMon = "God's Guard";
            CFrameQ = CFrame.new(- 4721.8603515625, 845.30297851563, - 1953.8489990234);
            CFrameMon = CFrame.new(- 4628.0498046875, 866.92877197266, - 1931.2352294922);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
            end
        elseif ((v197 == 475) or (v197 <= 524) or (SelectMonster == "Shanda")) then
            Ms = "Shanda";
            NameQuest = "SkyExp1Quest";
            QuestLv = 2;
            NameMon = "Shanda";
            CFrameQ = CFrame.new(- 7863.1596679688, 5545.5190429688, - 378.42266845703);
            CFrameMon = CFrame.new(- 7685.1474609375, 5601.0751953125, - 441.38876342773);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
            end
        elseif ((v197 == 525) or (v197 <= 549) or (SelectMonster == "Royal Squad")) then
            Ms = "Royal Squad";
            NameQuest = "SkyExp2Quest";
            QuestLv = 1;
            NameMon = "Royal Squad";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7654.2514648438, 5637.1079101563, - 1407.7550048828);
        elseif ((v197 == 550) or (v197 <= 624) or (SelectMonster == "Royal Soldier")) then
            Ms = "Royal Soldier";
            NameQuest = "SkyExp2Quest";
            QuestLv = 2;
            NameMon = "Royal Soldier";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7760.4106445313, 5679.9077148438, - 1884.8112792969);
        elseif ((v197 == 625) or (v197 <= 649) or (SelectMonster == "Galley Pirate")) then
            Ms = "Galley Pirate";
            NameQuest = "FountainQuest";
            QuestLv = 1;
            NameMon = "Galley Pirate";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063);
        elseif ((v197 >= 650) or (SelectMonster == "Galley Captain")) then
            Ms = "Galley Captain";
            NameQuest = "FountainQuest";
            QuestLv = 2;
            NameMon = "Galley Captain";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188);
        end
    end
    if Sea2 then
        if ((v197 == 700) or (v197 <= 724) or (SelectMonster == "Raider")) then
            Ms = "Raider";
            NameQuest = "Area1Quest";
            QuestLv = 1;
            NameMon = "Raider";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688);
        elseif ((v197 == 725) or (v197 <= 774) or (SelectMonster == "Mercenary")) then
            Ms = "Mercenary";
            NameQuest = "Area1Quest";
            QuestLv = 2;
            NameMon = "Mercenary";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(- 864.85009765625, 122.47104644775, 1453.1505126953);
        elseif ((v197 == 775) or (v197 <= 799) or (SelectMonster == "Swan Pirate")) then
            Ms = "Swan Pirate";
            NameQuest = "Area2Quest";
            QuestLv = 1;
            NameMon = "Swan Pirate";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125);
        elseif ((v197 == 800) or (v197 <= 874) or (SelectMonster == "Factory Staff")) then
            Ms = "Factory Staff";
            NameQuest = "Area2Quest";
            QuestLv = 2;
            NameMon = "Factory Staff";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797);
        elseif ((v197 == 875) or (v197 <= 899) or (SelectMonster == "Marine Lieutenan")) then
            Ms = "Marine Lieutenant";
            NameQuest = "MarineQuest3";
            QuestLv = 1;
            NameMon = "Marine Lieutenant";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2489.2622070313, 84.613594055176, - 3151.8830566406);
        elseif ((v197 == 900) or (v197 <= 949) or (SelectMonster == "Marine Captain")) then
            Ms = "Marine Captain";
            NameQuest = "MarineQuest3";
            QuestLv = 2;
            NameMon = "Marine Captain";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2335.2026367188, 79.786659240723, - 3245.8674316406);
        elseif ((v197 == 950) or (v197 <= 974) or (SelectMonster == "Zombie")) then
            Ms = "Zombie";
            NameQuest = "ZombieQuest";
            QuestLv = 1;
            NameMon = "Zombie";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5536.4970703125, 101.08577728271, - 835.59075927734);
        elseif ((v197 == 975) or (v197 <= 999) or (SelectMonster == "Vampire")) then
            Ms = "Vampire";
            NameQuest = "ZombieQuest";
            QuestLv = 2;
            NameMon = "Vampire";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625);
        elseif ((v197 == 1000) or (v197 <= 1049) or (SelectMonster == "Snow Trooper")) then
            Ms = "Snow Trooper";
            NameQuest = "SnowMountainQuest";
            QuestLv = 1;
            NameMon = "Snow Trooper";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, - 5484.9165039063);
        elseif ((v197 == 1050) or (v197 <= 1099) or (SelectMonster == "Winter Warrior")) then
            Ms = "Winter Warrior";
            NameQuest = "SnowMountainQuest";
            QuestLv = 2;
            NameMon = "Winter Warrior";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, - 5174.130859375);
        elseif ((v197 == 1100) or (v197 <= 1124) or (SelectMonster == "Lab Subordinate")) then
            Ms = "Lab Subordinate";
            NameQuest = "IceSideQuest";
            QuestLv = 1;
            NameMon = "Lab Subordinate";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 5720.5576171875, 63.309471130371, - 4784.6103515625);
        elseif ((v197 == 1125) or (v197 <= 1174) or (SelectMonster == "Horned Warrior")) then
            Ms = "Horned Warrior";
            NameQuest = "IceSideQuest";
            QuestLv = 2;
            NameMon = "Horned Warrior";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 6292.751953125, 91.181983947754, - 5502.6499023438);
        elseif ((v197 == 1175) or (v197 <= 1199) or (SelectMonster == "Magma Ninja")) then
            Ms = "Magma Ninja";
            NameQuest = "FireSideQuest";
            QuestLv = 1;
            NameMon = "Magma Ninja";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5461.8388671875, 130.36347961426, - 5836.4702148438);
        elseif ((v197 == 1200) or (v197 <= 1249) or (SelectMonster == "Lava Pirate")) then
            Ms = "Lava Pirate";
            NameQuest = "FireSideQuest";
            QuestLv = 2;
            NameMon = "Lava Pirate";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5251.1889648438, 55.164535522461, - 4774.4096679688);
        elseif ((v197 == 1250) or (v197 <= 1274) or (SelectMonster == "Ship Deckhand")) then
            Ms = "Ship Deckhand";
            NameQuest = "ShipQuest1";
            QuestLv = 1;
            NameMon = "Ship Deckhand";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1275) or (v197 <= 1299) or (SelectMonster == "Ship Engineer")) then
            Ms = "Ship Engineer";
            NameQuest = "ShipQuest1";
            QuestLv = 2;
            NameMon = "Ship Engineer";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1300) or (v197 <= 1324) or (SelectMonster == "Ship Steward")) then
            Ms = "Ship Steward";
            NameQuest = "ShipQuest2";
            QuestLv = 1;
            NameMon = "Ship Steward";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1325) or (v197 <= 1349) or (SelectMonster == "Ship Officer")) then
            Ms = "Ship Officer";
            NameQuest = "ShipQuest2";
            QuestLv = 2;
            NameMon = "Ship Officer";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((v197 == 1350) or (v197 <= 1374) or (SelectMonster == "Arctic Warrior")) then
            Ms = "Arctic Warrior";
            NameQuest = "FrostQuest";
            QuestLv = 1;
            NameMon = "Arctic Warrior";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, - 6472.7568359375);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422));
            end
        elseif ((v197 == 1375) or (v197 <= 1424) or (SelectMonster == "Snow Lurker")) then
            Ms = "Snow Lurker";
            NameQuest = "FrostQuest";
            QuestLv = 2;
            NameMon = "Snow Lurker";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, - 6618.3481445313);
        elseif ((v197 == 1425) or (v197 <= 1449) or (SelectMonster == "Sea Soldier")) then
            Ms = "Sea Soldier";
            NameQuest = "ForgottenQuest";
            QuestLv = 1;
            NameMon = "Sea Soldier";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3185.0153808594, 58.789089202881, - 9663.6064453125);
        elseif ((v197 >= 1450) or (SelectMonster == "Water Fighter")) then
            Ms = "Water Fighter";
            NameQuest = "ForgottenQuest";
            QuestLv = 2;
            NameMon = "Water Fighter";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3262.9301757813, 298.69036865234, - 10552.529296875);
        end
    end
    if Sea3 then
        if ((v197 == 1500) or (v197 <= 1524) or (SelectMonster == "Pirate Millionaire")) then
            Ms = "Pirate Millionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 1;
            NameMon = "Pirate Millionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 193.99227905273438, 56.12502670288086, 5755.7880859375);
        elseif ((v197 == 1525) or (v197 <= 1574) or (SelectMonster == "Pistol Billionaire")) then
            Ms = "Pistol Billionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 2;
            NameMon = "Pistol Billionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 188.14462280273438, 84.49613189697266, 6337.0419921875);
        elseif ((v197 == 1575) or (v197 <= 1599) or (SelectMonster == "Dragon Crew Warrior")) then
            Ms = "Dragon Crew Warrior";
            NameQuest = "DragonCrewQuest";
            QuestLv = 1;
            NameMon = "Dragon Crew Warrior";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, - 978.93408203125);
        elseif ((v197 == 1600) or (v197 <= 1624) or (SelectMonster == "Dragon Crew Archer")) then
            Ms = "Dragon Crew Archer";
            NameQuest = "DragonCrewQuest";
            QuestLv = 2;
            NameMon = "Dragon Crew Archer";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625);
        elseif ((v197 == 1625) or (v197 <= 1649) or (SelectMonster == "Hydra Enforcer")) then
            Ms = "Hydra Enforcer";
            NameQuest = "VenomCrewQuest";
            QuestLv = 1;
            NameMon = "Hydra Enforcer";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906);
        elseif ((v197 == 1650) or (v197 <= 1699) or (SelectMonster == "Venomous Assailant")) then
            Ms = "Venomous Assailant";
            NameQuest = "VenomCrewQuest";
            QuestLv = 2;
            NameMon = "Venomous Assailant";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938);
        elseif ((v197 == 1700) or (v197 <= 1724) or (SelectMonster == "Marine Commodore")) then
            Ms = "Marine Commodore";
            NameQuest = "MarineTreeIsland";
            QuestLv = 1;
            NameMon = "Marine Commodore";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, - 7109.5043945313);
        elseif ((v197 == 1725) or (v197 <= 1774) or (SelectMonster == "Marine Rear Admiral")) then
            Ms = "Marine Rear Admiral";
            NameQuest = "MarineTreeIsland";
            QuestLv = 2;
            NameMon = "Marine Rear Admiral";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, - 7048.6342773438);
        elseif ((v197 == 1775) or (v197 <= 1799) or (SelectMonster == "Fishman Raider")) then
            Ms = "Fishman Raider";
            NameQuest = "DeepForestIsland3";
            QuestLv = 1;
            NameMon = "Fishman Raider";
            CFrameQ = CFrame.new(- 10582.759765625, 331.78845214844, - 8757.666015625);
            CFrameMon = CFrame.new(- 10553.268554688, 521.38439941406, - 8176.9458007813);
        elseif ((v197 == 1800) or (v197 <= 1824) or (SelectMonster == "Fishman Captain")) then
            Ms = "Fishman Captain";
            NameQuest = "DeepForestIsland3";
            QuestLv = 2;
            NameMon = "Fishman Captain";
            CFrameQ = CFrame.new(- 10583.099609375, 331.78845214844, - 8759.4638671875);
            CFrameMon = CFrame.new(- 10789.401367188, 427.18637084961, - 9131.4423828125);
        elseif ((v197 == 1825) or (v197 <= 1849) or (SelectMonster == "Forest Pirate")) then
            Ms = "Forest Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 1;
            NameMon = "Forest Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13489.397460938, 400.30349731445, - 7770.251953125);
        elseif ((v197 == 1850) or (v197 <= 1899) or (SelectMonster == "Mythological Pirate")) then
            Ms = "Mythological Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 2;
            NameMon = "Mythological Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13508.616210938, 582.46228027344, - 6985.3037109375);
        elseif ((v197 == 1900) or (v197 <= 1924) or (SelectMonster == "Jungle Pirate")) then
            Ms = "Jungle Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 1;
            NameMon = "Jungle Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 12267.103515625, 459.75262451172, - 10277.200195313);
        elseif ((v197 == 1925) or (v197 <= 1974) or (SelectMonster == "Musketeer Pirate")) then
            Ms = "Musketeer Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 2;
            NameMon = "Musketeer Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 13291.5078125, 520.47338867188, - 9904.638671875);
        elseif ((v197 == 1975) or (v197 <= 1999) or (SelectMonster == "Reborn Skeleton")) then
            Ms = "Reborn Skeleton";
            NameQuest = "HauntedQuest1";
            QuestLv = 1;
            NameMon = "Reborn Skeleton";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 8761.77148, 183.431747, 6168.33301, 0.978073597, - 0.000013950732, - 0.208259016, - 0.0000010807393, 1, - 0.00007206303, 0.208259016, 0.00007070804, 0.978073597);
        elseif ((v197 == 2000) or (v197 <= 2024) or (SelectMonster == "Living Zombie")) then
            Ms = "Living Zombie";
            NameQuest = "HauntedQuest1";
            QuestLv = 2;
            NameMon = "Living Zombie";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, - 2.5800633e-8, 1, - 6.068485e-8, - 0.0324240364, 5.981639e-8, 0.999474227);
        elseif ((v197 == 2025) or (v197 <= 2049) or (SelectMonster == "Demonic Soul")) then
            Ms = "Demonic Soul";
            NameQuest = "HauntedQuest2";
            QuestLv = 1;
            NameMon = "Demonic Soul";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9712.03125, 204.69589233398, 6193.322265625);
        elseif ((v197 == 2050) or (v197 <= 2074) or (SelectMonster == "Posessed Mummy")) then
            Ms = "Posessed Mummy";
            NameQuest = "HauntedQuest2";
            QuestLv = 2;
            NameMon = "Posessed Mummy";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9545.7763671875, 69.619895935059, 6339.5615234375);
        elseif ((v197 == 2075) or (v197 <= 2099) or (SelectMonster == "Peanut Scout")) then
            Ms = "Peanut Scout";
            NameQuest = "NutsIslandQuest";
            QuestLv = 1;
            NameMon = "Peanut Scout";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2100) or (v197 <= 2124) or (SelectMonster == "Peanut President")) then
            Ms = "Peanut President";
            NameQuest = "NutsIslandQuest";
            QuestLv = 2;
            NameMon = "Peanut President";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((v197 == 2125) or (v197 <= 2149) or (SelectMonster == "Ice Cream Chef")) then
            Ms = "Ice Cream Chef";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 1;
            NameMon = "Ice Cream Chef";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2150) or (v197 <= 2199) or (SelectMonster == "Ice Cream Commander")) then
            Ms = "Ice Cream Commander";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 2;
            NameMon = "Ice Cream Commander";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((v197 == 2200) or (v197 <= 2224) or (SelectMonster == "Cookie Crafter")) then
            Ms = "Cookie Crafter";
            NameQuest = "CakeQuest1";
            QuestLv = 1;
            NameMon = "Cookie Crafter";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 2321.71216, 36.699482, - 12216.7871, - 0.780074954, 0, 0.625686109, 0, 1, 0, - 0.625686109, 0, - 0.780074954);
        elseif ((v197 == 2225) or (v197 <= 2249) or (SelectMonster == "Cake Guard")) then
            Ms = "Cake Guard";
            NameQuest = "CakeQuest1";
            QuestLv = 2;
            NameMon = "Cake Guard";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 1418.11011, 36.6718941, - 12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, - 0.997700036, 0, 0.0677844882);
        elseif ((v197 == 2250) or (v197 <= 2274) or (SelectMonster == "Baking Staff")) then
            Ms = "Baking Staff";
            NameQuest = "CakeQuest2";
            QuestLv = 1;
            NameMon = "Baking Staff";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765);
        elseif ((v197 == 2275) or (v197 <= 2299) or (SelectMonster == "Head Baker")) then
            Ms = "Head Baker";
            NameQuest = "CakeQuest2";
            QuestLv = 2;
            NameMon = "Head Baker";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 2251.5791, 52.2714615, - 13033.3965, - 0.991971016, 0, - 0.126466095, 0, 1, 0, 0.126466095, 0, - 0.991971016);
        elseif ((v197 == 2300) or (v197 <= 2324) or (SelectMonster == "Cocoa Warrior")) then
            Ms = "Cocoa Warrior";
            NameQuest = "ChocQuest1";
            QuestLv = 1;
            NameMon = "Cocoa Warrior";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(167.978516, 26.2254658, - 12238.874, - 0.939700961, 0, 0.341998369, 0, 1, 0, - 0.341998369, 0, - 0.939700961);
        elseif ((v197 == 2325) or (v197 <= 2349) or (SelectMonster == "Chocolate Bar Battler")) then
            Ms = "Chocolate Bar Battler";
            NameQuest = "ChocQuest1";
            QuestLv = 2;
            NameMon = "Chocolate Bar Battler";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(701.312073, 25.5824986, - 12708.2148, - 0.342042685, 0, - 0.939684391, 0, 1, 0, 0.939684391, 0, - 0.342042685);
        elseif ((v197 == 2350) or (v197 <= 2374) or (SelectMonster == "Sweet Thief")) then
            Ms = "Sweet Thief";
            NameQuest = "ChocQuest2";
            QuestLv = 1;
            NameMon = "Sweet Thief";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(- 140.258301, 25.5824986, - 12652.3115, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((v197 == 2375) or (v197 <= 2400) or (SelectMonster == "Candy Rebel")) then
            Ms = "Candy Rebel";
            NameQuest = "ChocQuest2";
            QuestLv = 2;
            NameMon = "Candy Rebel";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(47.9231453, 25.5824986, - 13029.2402, - 0.819156051, 0, - 0.573571265, 0, 1, 0, 0.573571265, 0, - 0.819156051);
        elseif ((v197 == 2400) or (v197 <= 2424) or (SelectMonster == "Candy Pirate")) then
            Ms = "Candy Pirate";
            NameQuest = "CandyQuest1";
            QuestLv = 1;
            NameMon = "Candy Pirate";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 1437.56348, 17.1481285, - 14385.6934, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((v197 == 2425) or (v197 <= 2449) or (SelectMonster == "Snow Demon")) then
            Ms = "Snow Demon";
            NameQuest = "CandyQuest1";
            QuestLv = 2;
            NameMon = "Snow Demon";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 916.222656, 17.1481285, - 14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, - 0.500031412, 0, 0.866007268);
        elseif ((v197 == 2450) or (v197 <= 2474) or (SelectMonster == "Isle Outlaw")) then
            Ms = "Isle Outlaw";
            NameQuest = "TikiQuest1";
            QuestLv = 1;
            NameMon = "Isle Outlaw";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16162.8193359375, 11.6863374710083, - 96.45481872558594);
        elseif ((v197 == 2475) or (v197 <= 2499) or (SelectMonster == "Island Boy")) then
            Ms = "Island Boy";
            NameQuest = "TikiQuest1";
            QuestLv = 2;
            NameMon = "Island Boy";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((v197 == 2500) or (v197 <= 2524) or (SelectMonster == "Sun-kissed Warrior")) then
            Ms = "Sun-kissed Warrior";
            NameQuest = "TikiQuest2";
            QuestLv = 1;
            NameMon = "Sun-kissed Warrior";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((v197 == 2525) or (v197 <= 2549) or (SelectMonster == "Isle Champion")) then
            Ms = "Isle Champion";
            NameQuest = "TikiQuest2";
            QuestLv = 2;
            NameMon = "Isle Champion";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16848.94140625, 21.68633460998535, 1041.4490966796875);
        elseif ((v197 == 2550) or (v197 <= 2574) or (SelectMonster == "Serpent Hunter")) then
            Ms = "Serpent Hunter";
            NameQuest = "TikiQuest3";
            QuestLv = 1;
            NameMon = "Serpent Hunter";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16621.4140625, 121.40631103515625, 1290.6881103515625);
        elseif ((v197 == 2575) or (v197 <= 2599) or (SelectMonster == "Skull Slayer") or (v197 == 2600)) then
            Ms = "Skull Slayer";
            NameQuest = "TikiQuest3";
            QuestLv = 2;
            NameMon = "Skull Slayer";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16811.5703125, 84.625244140625, 1542.235107421875);
        end
    end
end
if Sea1 then
    tableMon = {
        "Bandit",
        "Monkey",
        "Gorilla",
        "Pirate",
        "Brute",
        "Desert Bandit",
        "Desert Officer",
        "Snow Bandit",
        "Snowman",
        "Chief Petty Officer",
        "Sky Bandit",
        "Dark Master",
        "Prisoner",
        "Dangerous Prisoner",
        "Toga Warrior",
        "Gladiator",
        "Military Soldier",
        "Military Spy",
        "Fishman Warrior",
        "Fishman Commando",
        "God's Guard",
        "Shanda",
        "Royal Squad",
        "Royal Soldier",
        "Galley Pirate",
        "Galley Captain"
    };
elseif Sea2 then
    tableMon = {
        "Raider",
        "Mercenary",
        "Swan Pirate",
        "Factory Staff",
        "Marine Lieutenant",
        "Marine Captain",
        "Zombie",
        "Vampire",
        "Snow Trooper",
        "Winter Warrior",
        "Lab Subordinate",
        "Horned Warrior",
        "Magma Ninja",
        "Lava Pirate",
        "Ship Deckhand",
        "Ship Engineer",
        "Ship Steward",
        "Ship Officer",
        "Arctic Warrior",
        "Snow Lurker",
        "Sea Soldier",
        "Water Fighter"
    };
elseif Sea3 then
    tableMon = {
        "Pirate Millionaire",
        "Dragon Crew Warrior",
        "Dragon Crew Archer",
        "Hydra Enforcer",
        "Venomous Assailant",
        "Marine Commodore",
        "Marine Rear Admiral",
        "Fishman Raider",
        "Fishman Captain",
        "Forest Pirate",
        "Mythological Pirate",
        "Jungle Pirate",
        "Musketeer Pirate",
        "Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy",
        "Peanut Scout",
        "Peanut President",
        "Ice Cream Chef",
        "Ice Cream Commander",
        "Cookie Crafter",
        "Cake Guard",
        "Baking Staff",
        "Head Baker",
        "Cocoa Warrior",
        "Chocolate Bar Battler",
        "Sweet Thief",
        "Candy Rebel",
        "Candy Pirate",
        "Snow Demon",
        "Isle Outlaw",
        "Island Boy",
        "Sun-kissed Warrior",
        "Isle Champion",
        "Serpent Hunter",
        "Skull Slayer"
    };
end
if Sea1 then
    AreaList = {
        "Jungle",
        "Buggy",
        "Desert",
        "Snow",
        "Marine",
        "Sky",
        "Prison",
        "Colosseum",
        "Magma",
        "Fishman",
        "Sky Island",
        "Fountain"
    };
elseif Sea2 then
    AreaList = {
        "Area 1",
        "Area 2",
        "Zombie",
        "Marine",
        "Snow Mountain",
        "Ice fire",
        "Ship",
        "Frost",
        "Forgotten"
    };
elseif Sea3 then
    AreaList = {
        "Pirate Port",
        "Amazon",
        "Marine Tree",
        "Deep Forest",
        "Haunted Castle",
        "Nut Island",
        "Ice Cream Island",
        "Cake Island",
        "Choco Island",
        "Candy Island",
        "Tiki Outpost"
    };
function isnil(v198)
    return v198 == nil ;
end
local function v20(v199)
    return math.floor(tonumber(v199) + 0.5);
end
Number = math.random(1, 1000000);
function isnil(v200)
    return v200 == nil ;
end
local function v20(v201)
    return math.floor(tonumber(v201) + 0.5);
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
    for v443, v444 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(function()
            if not isnil(v444.Character) then
                if ESPPlayer then
                    if (not isnil(v444.Character.Head) and not v444.Character.Head:FindFirstChild("NameEsp" .. Number)) then
                        local v1216 = Instance.new("BillboardGui", v444.Character.Head);
                        v1216.Name = "NameEsp" .. Number ;
                        v1216.ExtentsOffset = Vector3.new(0, 1, 0);
                        v1216.Size = UDim2.new(1, 200, 1, 30);
                        v1216.Adornee = v444.Character.Head;
                        v1216.AlwaysOnTop = true;
                        local v1223 = Instance.new("TextLabel", v1216);
                        v1223.Font = Enum.Font.GothamSemibold;
                        v1223.FontSize = "Size14";
                        v1223.TextWrapped = true;
                        v1223.Text = v444.Name .. " \n" .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v444.Character.Head.Position).Magnitude / 3) .. " Distance" ;
                        v1223.Size = UDim2.new(1, 0, 1, 0);
                        v1223.TextYAlignment = "Top";
                        v1223.BackgroundTransparency = 1;
                        v1223.TextStrokeTransparency = 0.5;
                        if (v444.Team == game.Players.LocalPlayer.Team) then
                            v1223.TextColor3 = Color3.new(0, 255, 0);
                        else
                            v1223.TextColor3 = Color3.new(255, 0, 0);
                        end
                    else
                        v444.Character.Head["NameEsp" .. Number ].TextLabel.Text = v444.Name .. " | " .. v20((game:GetService("Players").LocalPlayer.Character.Head.Position - v444.Character.Head.Position).Magnitude / 3) .. " Distance\nHealth : " .. v20((v444.Character.Humanoid.Health * 100) / v444.Character.Humanoid.MaxHealth) .. "%" ;
                    end
                elseif v444.Character.Head:FindFirstChild("NameEsp" .. Number) then
                    v444.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function Tween2(v204)
    local v205 = (v204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local v206 = 350;
    if (v205 >= 350) then
        v206 = 350;
    end
    local v207 = TweenInfo.new(v205 / v206, Enum.EasingStyle.Linear);
    local v208 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v207, {
        CFrame = v204
    });
    v208:Play();
    if _G.CancelTween2 then
        v208:Cancel();
    end
    _G.Clip2 = true;
    wait(v205 / v206);
    _G.Clip2 = false;
end
function BTPZ(v209)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v209;
    task.wait();
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v209;
end
TweenSpeed = 350;
function Tween(v211)
    local v212 = (v211.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local v213 = TweenSpeed;
    if (v212 >= 350) then
        v213 = TweenSpeed;
    end
    local v214 = TweenInfo.new(v212 / v213, Enum.EasingStyle.Linear);
    local v215 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v214, {
        CFrame = v211
    });
    v215:Play();
    if _G.StopTween then
        v215:Cancel();
    end
end
function CancelTween(v216)
    if not v216 then
        _G.StopTween = true;
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
        _G.StopTween = false;
    end
end
function EquipTool(v217)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(v217) then
        local v570 = game.Players.LocalPlayer.Backpack:FindFirstChild(v217);
        wait();
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v570);
    end
end
spawn(function()
    local v218 = getrawmetatable(game);
    local v219 = v218.__namecall;
    setreadonly(v218, false);
    v218.__namecall = newcclosure(function(...)
        local v465 = getnamecallmethod();
        local v466 = {
            ...
        };
        if (tostring(v465) == "FireServer") then
            if (tostring(v466[1]) == "RemoteEvent") then
                if ((tostring(v466[2]) ~= "true") and (tostring(v466[2]) ~= "false")) then
                    if _G.UseSkill then
                        if (type(v466[2]) == "vector") then
                            v466[2] = PositionSkillMasteryDevilFruit;
                        else
                            v466[2] = CFrame.new(PositionSkillMasteryDevilFruit);
                        end
                        return v219(unpack(v466));
                    end
                end
            end
        end
        return v219(...);
    end);
end);
function AttackNoCoolDown()
    local v228 = {};
    local v229 = game:GetService("Workspace").Enemies:GetChildren();
    local v230 = FindEnemiesInRange(v228, v229);
    if not v230 then
        return;
    end
    local v231 = GetEquippedTool();
    if not v231 then
        return;
    end
    pcall(function()
        local v477 = game:GetService("ReplicatedStorage");
        local v478 = v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack");
        local v479 = v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit");
        if (# v228 > 0) then
            v478:FireServer(1e-9);
            v479:FireServer(v230, v228);
        else
            task.wait(1e-9);
        end
    end);
end
Type = 1;
spawn(function()
    while wait() do
        if (Type == 1) then
            Pos = CFrame.new(0, 40, 0);
        elseif (Type == 2) then
            Pos = CFrame.new(- 40, 40, 0);
        elseif (Type == 3) then
            Pos = CFrame.new(40, 40, 0);
        elseif (Type == 4) then
            Pos = CFrame.new(0, 40, 40);
        elseif (Type == 5) then
            Pos = CFrame.new(0, 40, - 40);
        end
    end
end);
spawn(function()
    while wait() do
        Type = 1;
        wait(0.2);
        Type = 2;
        wait(0.2);
        Type = 3;
        wait(0.2);
        Type = 4;
        wait(0.2);
        Type = 5;
        wait(0.2);
    end
end);
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
    end
end
function to(v232)
    repeat
        wait(_G.Fast_Delay);
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15);
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v232;
        task.wait();
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v232;
    until (v232.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end
local v22 = Instance.new("ScreenGui");
local v23 = Instance.new("ImageButton");
local v24 = Instance.new("UICorner");
local v25 = Instance.new("ParticleEmitter");
local v26 = game:GetService("TweenService");
v22.Parent = game.CoreGui;
v22.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v23.Parent = v22;
v23.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
v23.BorderSizePixel = 0;
v23.Position = UDim2.new(0.120833337 - 0.1, 0, 0.0952890813 + 0.01, 0);
v23.Size = UDim2.new(0, 50, 0, 50);
v23.Draggable = true;
v23.Image = "http://www.roblox.com/asset/?id=83190276951914";
v24.Parent = v23;
v24.CornerRadius = UDim.new(0, 12);
v25.Parent = v23;
v25.LightEmission = 1;
v25.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
});
v25.Lifetime = NumberRange.new(0.5, 1);
v25.Rate = 0;
v25.Speed = NumberRange.new(5, 10);
v25.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255));
local v47 = v26:Create(v23, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Rotation = 360
});
v23.MouseButton1Down:Connect(function()
    v25.Rate = 100;
    task.delay(1, function()
        v25.Rate = 0;
    end);
    v47:Play();
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game);
    v47.Completed:Connect(function()
        v23.Rotation = 0;
    end);
    local v235 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60)
    });
    v235:Play();
    v235.Completed:Connect(function()
        local v483 = v26:Create(v23, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50)
        });
        v483:Play();
    end);
end);
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
end
_G.FastAttackStrix_Mode = "Super Fast Attack";
spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if (_G.FastAttackStrix_Mode == "Super Fast Attack") then
                    _G.Fast_Delay = 1e-9;
                end
            end);
        end
    end
end);
local v48 = v16.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Vũ Khí",
    Description = "",
    Values = {
        "Melee",
        "Sword",
        "Blox Fruits"
    },
    Multi = false,
    Default = 1
});
v48:SetValue("Melee");
v48:OnChanged(function(v236)
    ChooseWeapon = v236;
end);
task.spawn(function()
    while wait() do
        pcall(function()
            if (ChooseWeapon == "Melee") then
                for v836, v837 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if (v837.ToolTip == "Melee") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v837.Name)) then
                            SelectWeapon = v837.Name;
                        end
                    end
                end
            end
        end);
    end
end);
local v49 = v16.Main:AddToggle("ToggleLevel", {
    Title = "Cày Cấp",
    Description = "",
    Default = false
});
v49:OnChanged(function(v237)
    _G.AutoLevel = v237;
    if (v237 == false) then
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
v17.ToggleLevel:SetValue(false);
spawn(function()
    while task.wait() do
        if _G.AutoLevel then
            pcall(function()
                CheckLevel();
                if (not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    Tween(CFrameQ);
                    if ((CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv);
                    end
                elseif (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
                    for v1432, v1433 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v1433:FindFirstChild("Humanoid") and v1433:FindFirstChild("HumanoidRootPart") and (v1433.Humanoid.Health > 0)) then
                            if (v1433.Name == Ms) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    bringmob = true;
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    Tween(v1433.HumanoidRootPart.CFrame * Pos);
                                    v1433.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    v1433.HumanoidRootPart.Transparency = 1;
                                    v1433.Humanoid.JumpPower = 0;
                                    v1433.Humanoid.WalkSpeed = 0;
                                    v1433.HumanoidRootPart.CanCollide = false;
                                    FarmPos = v1433.HumanoidRootPart.CFrame;
                                    MonFarm = v1433.Name;
                                until not _G.AutoLevel or not v1433.Parent or (v1433.Humanoid.Health <= 0) or not game:GetService("Workspace").Enemies:FindFirstChild(v1433.Name) or (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                bringmob = false;
                            end
                        end
                    end
                    for v1434, v1435 in pairs(game:GetService("Workspace")['_WorldOrigin'].EnemySpawns:GetChildren()) do
                        if string.find(v1435.Name, NameMon) then
                            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1435.Position).Magnitude >= 10) then
                                Tween(v1435.HumanoidRootPart.CFrame * Pos);
                            end
                        end
                    end
                end
            end);
        end
    end
end);
local v50 = v16.Main:AddToggle("ToggleMobAura", {
    Title = "Đấm Quái Gần",
    Description = "",
    Default = false
});
v50:OnChanged(function(v238)
    _G.AutoNear = v238;
    if (v238 == false) then
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
v17.ToggleMobAura:SetValue(false);
spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                for v838, v839 in pairs(game.Workspace.Enemies:GetChildren()) do
                    if (v839:FindFirstChild("Humanoid") and v839:FindFirstChild("HumanoidRootPart") and (v839.Humanoid.Health > 0)) then
                        if v839.Name then
                            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v839:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    bringmob = true;
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    Tween(v839.HumanoidRootPart.CFrame * Pos);
                                    v839.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    v839.HumanoidRootPart.Transparency = 1;
                                    v839.Humanoid.JumpPower = 0;
                                    v839.Humanoid.WalkSpeed = 0;
                                    v839.HumanoidRootPart.CanCollide = false;
                                    FarmPos = v839.HumanoidRootPart.CFrame;
                                    MonFarm = v839.Name;
                                until not _G.AutoNear or not v839.Parent or (v839.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(v839.Name)
                                bringmob = false;
                            end
                        end
                    end
                end
            end);
        end
    end
end);
if Sea3 then
    local v484 = v16.Main:AddSection("Xương");
    local v485 = v16.Main:AddParagraph({
        Title = "Xương Trạng Thái",
        Content = ""
    });
    spawn(function()
        pcall(function()
            while wait() do
                local v768 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check");
                v485:SetDesc(" Có: " .. tostring(v768) .. " Xương");
            end
        end);
    end);
    local v486 = v16.Main:AddToggle("ToggleBone", {
        Title = "Cày Xương",
        Description = "",
        Default = false
    });
    v486:OnChanged(function(v571)
        _G.AutoBone = v571;
        if (v571 == false) then
            wait();
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
            wait();
        end
    end);
    v17.ToggleBone:SetValue(false);
    local v487 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBone then
                pcall(function()
                    local v894 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
                    if not string.find(v894, "Demonic Soul") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    end
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                        Tween(v487);
                        if ((v487.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
                        end
                    elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                            for v1661, v1662 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v1662:FindFirstChild("HumanoidRootPart") and v1662:FindFirstChild("Humanoid") and (v1662.Humanoid.Health > 0)) then
                                    if ((v1662.Name == "Reborn Skeleton") or (v1662.Name == "Living Zombie") or (v1662.Name == "Demonic Soul") or (v1662.Name == "Posessed Mummy")) then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                            repeat
                                                wait(_G.Fast_Delay);
                                                AttackNoCoolDown();
                                                AutoHaki();
                                                bringmob = true;
                                                EquipTool(SelectWeapon);
                                                Tween(v1662.HumanoidRootPart.CFrame * Pos);
                                                v1662.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                                v1662.HumanoidRootPart.Transparency = 1;
                                                v1662.Humanoid.JumpPower = 0;
                                                v1662.Humanoid.WalkSpeed = 0;
                                                v1662.HumanoidRootPart.CanCollide = false;
                                                FarmPos = v1662.HumanoidRootPart.CFrame;
                                                MonFarm = v1662.Name;
                                            until not _G.AutoBone or (v1662.Humanoid.Health <= 0) or not v1662.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                                            bringmob = false;
                                        end
                                    end
                                end
                            end
                        else
                        end
                    end
                end);
            end
        end
    end);
    local v488 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(v488);
                    if ((v488.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                    end
                    if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                        for v1436, v1437 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v1437:FindFirstChild("HumanoidRootPart") and v1437:FindFirstChild("Humanoid") and (v1437.Humanoid.Health > 0)) then
                                if ((v1437.Name == "Reborn Skeleton") or (v1437.Name == "Living Zombie") or (v1437.Name == "Demonic Soul") or (v1437.Name == "Posessed Mummy")) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        bringmob = true;
                                        EquipTool(SelectWeapon);
                                        Tween(v1437.HumanoidRootPart.CFrame * Pos);
                                        v1437.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        v1437.HumanoidRootPart.Transparency = 1;
                                        v1437.Humanoid.JumpPower = 0;
                                        v1437.Humanoid.WalkSpeed = 0;
                                        v1437.HumanoidRootPart.CanCollide = false;
                                        FarmPos = v1437.HumanoidRootPart.CFrame;
                                        MonFarm = v1437.Name;
                                    until not _G.AutoBoneNoQuest or (v1437.Humanoid.Health <= 0) or not v1437.Parent
                                end
                            end
                        end
                    end
                end);
            end
        end
    end);
    local v88 = v16.Setting:AddToggle("ToggleSaveSpawn", {
    Title = "Lưu Điểm Hồi Sinh",
    Description = "",
    Default = true
});
v88:OnChanged(function(v276)
    _G.SaveSpawn = v276;
    if v276 then
        local v648 = {
            [1] = "SetSpawnPoint"
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v648));
    end
end);
v17.ToggleSaveSpawn:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                local v797 = {
                    [1] = "SetSpawnPoint"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v797));
            end
        end);
    end
end);
local v89 = require(game.ReplicatedStorage.Util.CameraShaker);
v89:Stop();
local v90 = v16.Setting:AddToggle("ToggleBringMob", {
    Title = "Gom Quái",
    Description = "",
    Default = true
});
v90:OnChanged(function(v277)
    _G.BringMob = v277;
end);
v17.ToggleBringMob:SetValue(true);
spawn(function()
    while wait() do
        pcall(function()
            for v733, v734 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (_G.BringMob and bringmob) then
                    if ((v734.Name == MonFarm) and v734:FindFirstChild("Humanoid") and (v734.Humanoid.Health > 0)) then
                        if (v734.Name == "Factory Staff") then
                            if ((v734.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                v734.Head.CanCollide = false;
                                v734.HumanoidRootPart.CanCollide = false;
                                v734.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                v734.HumanoidRootPart.CFrame = FarmPos;
                                if v734.Humanoid:FindFirstChild("Animator") then
                                    v734.Humanoid.Animator:Destroy();
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        elseif (v734.Name == MonFarm) then
                            if ((v734.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                v734.HumanoidRootPart.CFrame = FarmPos;
                                v734.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                v734.HumanoidRootPart.Transparency = 1;
                                v734.Humanoid.JumpPower = 0;
                                v734.Humanoid.WalkSpeed = 0;
                                if v734.Humanoid:FindFirstChild("Animator") then
                                    v734.Humanoid.Animator:Destroy();
                                end
                                v734.HumanoidRootPart.CanCollide = false;
                                v734.Head.CanCollide = false;
                                v734.Humanoid:ChangeState(11);
                                v734.Humanoid:ChangeState(14);
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        end
                    end
                end
            end
        end);
    end
end);
local v153 = v16.Misc:AddToggle("ToggleAntiBand", {
    Title = "Chống Band",
    Description = "",
    Default = true
});
v153:OnChanged(function(v384)
    _G.AntiBand = v384;
end);
local v154 = {
    17884881,
    120173604,
    912348
};
spawn(function()
    while wait() do
        if _G.AntiBand then
            for v809, v810 in pairs(game:GetService("Players"):GetPlayers()) do
                if table.find(v154, v810.UserId) then
                    Hop();
                end
            end
        end
    end
end);
v14:Notify({
    Title = "Cat x hub",
    Content = "Tải Xong",
    Duration = 10
});