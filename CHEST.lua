getgenv().Setting = {
    ["WhiteScreen"] = false,
    ["TimeReset"] = 4.5,
	["ModFarm"] = {
		["StopItemLegendary"] = false,
        ["SummonKillDarkbeard"] = false
	}
}
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--- Gui
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Only Support BF")
end 
RimusScreen = Instance.new("ScreenGui");
DropShadowHolder = Instance.new("Frame");
DropShadow = Instance.new("ImageLabel");
Main = Instance.new("Frame");
UICorner = Instance.new("UICorner");
Layers = Instance.new("Frame");
UICorner1 = Instance.new("UICorner");
RealLayer = Instance.new("Frame");
UIListLayout = Instance.new("UIListLayout");
EarnedFrame = Instance.new("Frame");
UICorner2 = Instance.new("UICorner");
EarnedText = Instance.new("TextLabel");
EarnedNumber = Instance.new("TextLabel");
TimeEslapedFrame = Instance.new("Frame");
UICorner3 = Instance.new("UICorner");
EslapedText = Instance.new("TextLabel");
EslapedNumber = Instance.new("TextLabel");
TotalEarnedFrame = Instance.new("Frame");
UICorner4 = Instance.new("UICorner");
TotalEarnedText = Instance.new("TextLabel");
TotalEarnedNumber = Instance.new("TextLabel");
CurrentBeliFrame = Instance.new("Frame");
UICorner5 = Instance.new("UICorner");
CurrentBeliText = Instance.new("TextLabel");
CurrentBeliNumber = Instance.new("TextLabel");
HopDisFrame = Instance.new("Frame");
UICorner6 = Instance.new("UICorner");
HopFrame = Instance.new("Frame");
UICorner7 = Instance.new("UICorner");
HopButton = Instance.new("TextButton");
DisFrame = Instance.new("Frame");
UICorner8 = Instance.new("UICorner");
DisButton = Instance.new("TextButton");
Top = Instance.new("Frame");
UICorner9 = Instance.new("UICorner");
ImageHub = Instance.new("ImageLabel");
Ver = Instance.new("TextLabel");
NameHub = Instance.new("TextLabel");

RimusScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RimusScreen.Name = "RimusScreen"
RimusScreen.Parent = game:GetService("CoreGui")

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadowHolder.Size = UDim2.new(0, 336, 0, 258)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = RimusScreen

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.10000000149011612
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 336, 0, 258)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Main

Layers.AnchorPoint = Vector2.new(0.5, 0.5)
Layers.BackgroundColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
Layers.BackgroundTransparency = 0.8999999761581421
Layers.BorderColor3 = Color3.fromRGB(0, 0, 0)
Layers.BorderSizePixel = 0
Layers.Position = UDim2.new(0.499404728, 0, 0.62465781, 0)
Layers.Size = UDim2.new(0, 324, 0, 182)
Layers.Name = "Layers"
Layers.Parent = Main

UICorner1.CornerRadius = UDim.new(0, 1)
UICorner1.Parent = Layers

RealLayer.AnchorPoint = Vector2.new(0.5, 0.5)
RealLayer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RealLayer.BackgroundTransparency = 0.9900000095367432
RealLayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
RealLayer.BorderSizePixel = 0
RealLayer.Position = UDim2.new(0.500385821, 0, 0.495769292, 0)
RealLayer.Size = UDim2.new(0, 312, 0, 169)
RealLayer.Name = "RealLayer"
RealLayer.Parent = Layers

UIListLayout.Padding = UDim.new(0, 2)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = RealLayer

EarnedFrame.AnchorPoint = Vector2.new(0.5, 0)
EarnedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedFrame.BackgroundTransparency = 0.8999999761581421
EarnedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedFrame.BorderSizePixel = 0
EarnedFrame.Position = UDim2.new(0.5, 0, 0, 0)
EarnedFrame.Size = UDim2.new(0, 312, 0, 30)
EarnedFrame.Name = "EarnedFrame"
EarnedFrame.Parent = RealLayer

UICorner2.CornerRadius = UDim.new(0, 1)
UICorner2.Parent = EarnedFrame

EarnedText.Font = Enum.Font.GothamBold
EarnedText.Text = "Earned:"
EarnedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedText.TextSize = 16
EarnedText.TextXAlignment = Enum.TextXAlignment.Left
EarnedText.AnchorPoint = Vector2.new(0, 0.5)
EarnedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EarnedText.BackgroundTransparency = 0.9900000095367432
EarnedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedText.BorderSizePixel = 0
EarnedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
EarnedText.Size = UDim2.new(0, 94, 0, 12)
EarnedText.Name = "EarnedText"
EarnedText.Parent = EarnedFrame

EarnedNumber.Font = Enum.Font.GothamBold
EarnedNumber.Text = "0"
EarnedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EarnedNumber.TextSize = 16
EarnedNumber.TextTransparency = 0.10000000149011612
EarnedNumber.TextXAlignment = Enum.TextXAlignment.Right
EarnedNumber.AnchorPoint = Vector2.new(0, 0.5)
EarnedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EarnedNumber.BackgroundTransparency = 0.9900000095367432
EarnedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
EarnedNumber.BorderSizePixel = 0
EarnedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
EarnedNumber.Size = UDim2.new(0, 123, 0, 12)
EarnedNumber.Name = "EarnedNumber"
EarnedNumber.Parent = EarnedFrame

TimeEslapedFrame.AnchorPoint = Vector2.new(0.5, 0)
TimeEslapedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TimeEslapedFrame.BackgroundTransparency = 0.8999999761581421
TimeEslapedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TimeEslapedFrame.BorderSizePixel = 0
TimeEslapedFrame.Position = UDim2.new(0.5, 0, 0, 0)
TimeEslapedFrame.Size = UDim2.new(0, 312, 0, 30)
TimeEslapedFrame.Name = "TimeEslapedFrame"
TimeEslapedFrame.Parent = RealLayer

UICorner3.CornerRadius = UDim.new(0, 1)
UICorner3.Parent = TimeEslapedFrame

EslapedText.Font = Enum.Font.GothamBold
EslapedText.Text = "Time Eslaped:"
EslapedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EslapedText.TextSize = 16
EslapedText.TextXAlignment = Enum.TextXAlignment.Left
EslapedText.AnchorPoint = Vector2.new(0, 0.5)
EslapedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EslapedText.BackgroundTransparency = 0.9900000095367432
EslapedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EslapedText.BorderSizePixel = 0
EslapedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
EslapedText.Size = UDim2.new(0, 94, 0, 12)
EslapedText.Name = "EslapedText"
EslapedText.Parent = TimeEslapedFrame

EslapedNumber.Font = Enum.Font.GothamBold
EslapedNumber.Text = "00:00"
EslapedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
EslapedNumber.TextSize = 16
EslapedNumber.TextTransparency = 0.10000000149011612
EslapedNumber.TextXAlignment = Enum.TextXAlignment.Right
EslapedNumber.AnchorPoint = Vector2.new(0, 0.5)
EslapedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EslapedNumber.BackgroundTransparency = 0.9900000095367432
EslapedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
EslapedNumber.BorderSizePixel = 0
EslapedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
EslapedNumber.Size = UDim2.new(0, 123, 0, 12)
EslapedNumber.Name = "EslapedNumber"
EslapedNumber.Parent = TimeEslapedFrame

TotalEarnedFrame.AnchorPoint = Vector2.new(0.5, 0)
TotalEarnedFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedFrame.BackgroundTransparency = 0.8999999761581421
TotalEarnedFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedFrame.BorderSizePixel = 0
TotalEarnedFrame.Position = UDim2.new(0.5, 0, 0, 0)
TotalEarnedFrame.Size = UDim2.new(0, 312, 0, 30)
TotalEarnedFrame.Name = "TotalEarnedFrame"
TotalEarnedFrame.Parent = RealLayer

UICorner4.CornerRadius = UDim.new(0, 1)
UICorner4.Parent = TotalEarnedFrame

TotalEarnedText.Font = Enum.Font.GothamBold
TotalEarnedText.Text = "Total Earned:"
TotalEarnedText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedText.TextSize = 16
TotalEarnedText.TextXAlignment = Enum.TextXAlignment.Left
TotalEarnedText.AnchorPoint = Vector2.new(0, 0.5)
TotalEarnedText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedText.BackgroundTransparency = 0.9900000095367432
TotalEarnedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedText.BorderSizePixel = 0
TotalEarnedText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
TotalEarnedText.Size = UDim2.new(0, 94, 0, 12)
TotalEarnedText.Name = "TotalEarnedText"
TotalEarnedText.Parent = TotalEarnedFrame

TotalEarnedNumber.Font = Enum.Font.GothamBold
TotalEarnedNumber.Text = "0"
TotalEarnedNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
TotalEarnedNumber.TextSize = 16
TotalEarnedNumber.TextTransparency = 0.10000000149011612
TotalEarnedNumber.TextXAlignment = Enum.TextXAlignment.Right
TotalEarnedNumber.AnchorPoint = Vector2.new(0, 0.5)
TotalEarnedNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedNumber.BackgroundTransparency = 0.9900000095367432
TotalEarnedNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalEarnedNumber.BorderSizePixel = 0
TotalEarnedNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
TotalEarnedNumber.Size = UDim2.new(0, 123, 0, 12)
TotalEarnedNumber.Name = "TotalEarnedNumber"
TotalEarnedNumber.Parent = TotalEarnedFrame

CurrentBeliFrame.AnchorPoint = Vector2.new(0.5, 0)
CurrentBeliFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBeliFrame.BackgroundTransparency = 0.8999999761581421
CurrentBeliFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBeliFrame.BorderSizePixel = 0
CurrentBeliFrame.Position = UDim2.new(0.5, 0, 0, 0)
CurrentBeliFrame.Size = UDim2.new(0, 312, 0, 30)
CurrentBeliFrame.Name = "CurrentBeliFrame"
CurrentBeliFrame.Parent = RealLayer

UICorner5.CornerRadius = UDim.new(0, 1)
UICorner5.Parent = CurrentBeliFrame

CurrentBeliText.Font = Enum.Font.GothamBold
CurrentBeliText.Text = "Current Beli:"
CurrentBeliText.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBeliText.TextSize = 16
CurrentBeliText.TextXAlignment = Enum.TextXAlignment.Left
CurrentBeliText.AnchorPoint = Vector2.new(0, 0.5)
CurrentBeliText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentBeliText.BackgroundTransparency = 0.9900000095367432
CurrentBeliText.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBeliText.BorderSizePixel = 0
CurrentBeliText.Position = UDim2.new(0.0204153825, 0, 0.5, 0)
CurrentBeliText.Size = UDim2.new(0, 94, 0, 12)
CurrentBeliText.Name = "CurrentBeliText"
CurrentBeliText.Parent = CurrentBeliFrame

CurrentBeliNumber.Font = Enum.Font.GothamBold
CurrentBeliNumber.Text = "0"
CurrentBeliNumber.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
CurrentBeliNumber.TextSize = 16
CurrentBeliNumber.TextTransparency = 0.10000000149011612
CurrentBeliNumber.TextXAlignment = Enum.TextXAlignment.Right
CurrentBeliNumber.AnchorPoint = Vector2.new(0, 0.5)
CurrentBeliNumber.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentBeliNumber.BackgroundTransparency = 0.9900000095367432
CurrentBeliNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBeliNumber.BorderSizePixel = 0
CurrentBeliNumber.Position = UDim2.new(0.578738093, 0, 0.5, 0)
CurrentBeliNumber.Size = UDim2.new(0, 123, 0, 12)
CurrentBeliNumber.Name = "CurrentBeliNumber"
CurrentBeliNumber.Parent = CurrentBeliFrame

HopDisFrame.AnchorPoint = Vector2.new(0.5, 0)
HopDisFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
HopDisFrame.BackgroundTransparency = 0.8999999761581421
HopDisFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopDisFrame.BorderSizePixel = 0
HopDisFrame.Position = UDim2.new(0.5, 0, 0.75739646, 0)
HopDisFrame.Size = UDim2.new(0, 312, 0, 41)
HopDisFrame.Name = "HopDisFrame"
HopDisFrame.Parent = RealLayer

UICorner6.CornerRadius = UDim.new(0, 1)
UICorner6.Parent = HopDisFrame

HopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
HopFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
HopFrame.BackgroundTransparency = 0.8999999761581421
HopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopFrame.BorderSizePixel = 0
HopFrame.Position = UDim2.new(0.253205121, 0, 0.5, 0)
HopFrame.Size = UDim2.new(0, 150, 0, 32)
HopFrame.Name = "HopFrame"
HopFrame.Parent = HopDisFrame

UICorner7.CornerRadius = UDim.new(0, 1)
UICorner7.Parent = HopFrame

HopButton.Font = Enum.Font.GothamBold
HopButton.Text = "Hop Player"
HopButton.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
HopButton.TextSize = 16
HopButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
HopButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HopButton.BackgroundTransparency = 0.9900000095367432
HopButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopButton.BorderSizePixel = 0
HopButton.Size = UDim2.new(0, 150, 0, 32)
HopButton.Name = "HopButton"
HopButton.Parent = HopFrame

DisFrame.AnchorPoint = Vector2.new(0.5, 0.5)
DisFrame.BackgroundColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
DisFrame.BackgroundTransparency = 0.8999999761581421
DisFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisFrame.BorderSizePixel = 0
DisFrame.Position = UDim2.new(0.745192289, 0, 0.5, 0)
DisFrame.Size = UDim2.new(0, 150, 0, 32)
DisFrame.Name = "DisFrame"
DisFrame.Parent = HopDisFrame

UICorner8.CornerRadius = UDim.new(0, 1)
UICorner8.Parent = DisFrame

DisButton.Font = Enum.Font.GothamBold
DisButton.Text = "Copy Link Discord"
DisButton.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
DisButton.TextSize = 16
DisButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DisButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DisButton.BackgroundTransparency = 0.9900000095367432
DisButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DisButton.BorderSizePixel = 0
DisButton.Size = UDim2.new(0, 150, 0, 32)
DisButton.Name = "DisButton"
DisButton.Parent = DisFrame

Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top.BackgroundTransparency = 0.9900000095367432
Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0.500237703, 0, 0.132554695, 0)
Top.Size = UDim2.new(0, 335, 0, 68)
Top.Name = "Top"
Top.Parent = Main

UICorner9.CornerRadius = UDim.new(0, 2)
UICorner9.Parent = Top

ImageHub.Image = "rbxassetid://16058570512"
ImageHub.AnchorPoint = Vector2.new(0, 0.5)
ImageHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageHub.BackgroundTransparency = 0.9900000095367432
ImageHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageHub.BorderSizePixel = 0
ImageHub.Position = UDim2.new(0.00999999978, 0, 0.550000012, 0)
ImageHub.Size = UDim2.new(0, 65, 0, 65)
ImageHub.Name = "ImageHub"
ImageHub.Parent = Top

Ver.Font = Enum.Font.GothamBold
Ver.Text = "Version: Auto Chest"
Ver.TextColor3 = Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)
Ver.TextSize = 17
Ver.TextTransparency = 0.10000000149011612
Ver.TextXAlignment = Enum.TextXAlignment.Left
Ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ver.BackgroundTransparency = 1
Ver.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ver.BorderSizePixel = 0
Ver.Position = UDim2.new(0.223913297, 0, 0.601351321, 0)
Ver.Size = UDim2.new(0, 217, 0, 18)
Ver.Name = "Ver"
Ver.Parent = Top

NameHub.Font = Enum.Font.GothamBold
NameHub.Text = "Rimus Hub | Blox Fruits"
NameHub.TextColor3 = Color3.fromRGB(230.00000149011612, 230.00000149011612, 230.00000149011612)
NameHub.TextSize = 23
NameHub.TextXAlignment = Enum.TextXAlignment.Left
NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHub.BackgroundTransparency = 1
NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameHub.BorderSizePixel = 0
NameHub.Position = UDim2.new(0.223913297, 0, 0.217029572, 0)
NameHub.Size = UDim2.new(0, 246, 0, 20)
NameHub.Name = "NameHub"
NameHub.Parent = Top
--- Gui Function
local UserInputService = game:GetService("UserInputService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end
MakeDraggable(DropShadowHolder,DropShadowHolder)
local p = game.Players
local lp = p.LocalPlayer

local rs = game.RunService
local hb = rs.Heartbeat
local rends = rs.RenderStepped
--- Join Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat wait()
        if getgenv().Setting.ModFarm.StopItemLegendary or getgenv().Setting.ModFarm.SummonKillDarkbeard then
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                b:Fire() 
                end
                v.Function()
            end 
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
wait(0.5)
game:GetService("RunService"):Set3dRenderingEnabled(not getgenv().Setting.WhiteScreen)
AutoFarmChest = true
spawn(function()
    while task.wait() do 
        if AutoFarmChest then
            local Chest = nil
            local distanchest = math.huge
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Chest") and (v.Position - lp.Character.HumanoidRootPart.Position).Magnitude < distanchest then
                    Chest = v
                    distanchest = (v.Position - lp.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            if Chest ~= nil then
                for a, b in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if b:IsA"BasePart" then
                        b.CanCollide = false
                    end
                end
                game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
            else
                hopserver = true
                AutoFarmChest = false
            end
        end
    end
end)
spawn(function()
    while task.wait() do 
        if AutoFarmChest and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
            wait(getgenv().Setting.TimeReset)
            if (getgenv().Setting.ModFarm.StopItemLegendary or getgenv().Setting.ModFarm.SummonKillDarkbeard) and game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                AutoFarmChest = false
            else
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
            end   
        end
    end
end)
spawn(function()
    while task.wait()do
        if hopserver then
            HopServer()
        end
    end
end)
function HopServer(bO)
    if not bO then
        bO = 10
    end
    ticklon = tick()
    repeat
        task.wait()
    until tick() - ticklon >= 1
    local function Hop()
        for r = 1, math.huge do
            if ChooseRegion == nil or ChooseRegion == "" then
                ChooseRegion = "Singapore"
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                    ChooseRegion
            end
            local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
            for k, v in pairs(bP) do
                if k ~= game.JobId and v["Count"] < bO then
                   game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function bQ(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            bQ(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
        getgenv().Loaded = true
    end
    while not Hop() do
        task.wait()
    end
end
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if not hopserver and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
DisButton.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/rimushub")
end)
HopButton.MouseButton1Down:Connect(function()
    HopServer()
end)
--// Fast Attack
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if FastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if FastAttack then
            if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                game.Players.LocalPlayer.Character.Stun.Value = 0
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                game.Players.LocalPlayer.Character.Busy.Value = false   
            end    
        end
    end)
end)
--- Fast Attack
local CurveFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()
function CurveFuckWeapon()
    local p13 = CurveFrame.activeController
    local wea = p13.blades[1]
    if not wea then
        return
    end
    while wea.Parent ~= game.Players.LocalPlayer.Character do
        wea = wea.Parent
    end
    return wea
end

function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if
            Human and Human.RootPart and Human.Health > 0 and
                game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
         then
            table.insert(Hits, Human.RootPart)
        end
    end
    for i = 1, #Characters do
        local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if
                Human and Human.RootPart and Human.Health > 0 and
                    game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end

local cdnormal = 0
local Animation = Instance.new("Animation")


abc = true
task.spawn(function()
    local a = game.Players.LocalPlayer
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    if not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if not shared.cpc then
        shared.cpc = b.play
    end
    if abc then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
            local i = c.getBladeHits(e, f, g)
            if i then
                b.play = function()
                    end
                    d:Play(0.25, 0.25, 0.25)
                    h(i)
                    b.play = shared.cpc
                    wait(.5)
                    d:Stop()
                end
            end
        end)
    end
end)
function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 100
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurveFuckWeapon()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end
--// Equip 
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end
--// Tween
function to(Pos)
    pcall(function()
        if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid").Health > 0 then
            Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                Hold.Name = "Hold"
                Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                Hold.Velocity = Vector3.new(0, 0, 0)
            end
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
            end
            local mul = 0.87
            if Distance < 250 then
                lp.Character.HumanoidRootPart.CFrame = Pos
            elseif Distance < 500 then
                Speed = 400
            elseif Distance < 1000 then
                Speed = 375
            elseif Distance >= 1000 then
                Speed = 350
            end
            pcall(function()
                tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
                tween:Play()
            end)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame .Z)
        end
    end)
end
--// CicleTween
local radius = 30
local angle = 0
function getNextPosition(center)
    angle = angle + 15
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, 10, math.cos(math.rad(angle)) * radius)
end
--// Summon And Kill Dark Beard
spawn(function()
	while wait() do
        if getgenv().Setting.ModFarm.SummonKillDarkbeard and gotobegod then
            pcall(function()
                local g = game.Player.LocalPlayer
                if g.Backpack:FindFirstChild("Fist of Darkness") or g.Character:FindFirstChild("Fist of Darkness") then
                    AutoFarmChest = false
                    equip("Fist of Darkness")
                    to(CFrame.new(3777.58618, 14.8764334, -3498.81909, 0.13158533, 1.16175372e-08, -0.991304874, -9.53944035e-10, 1, 1.15928129e-08, 0.991304874, -5.79794768e-10, 0.13158533))
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v and v.Parent and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Name == "Darkbeard" then
                                repeat task.wait(0.1)
                                    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                    equip("Melee")
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.WalkSpeed = 0
                                    to(getNextPosition(v.HumanoidRootPart.CFrame))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    FastAttack = true
                                    AttackHit()
                                until(v:FindFirstChild("Humanoid") and v.Humanoid.Health) <= 0 
                                FastAttack = false
                                AutoFarmChest = true
                            end
                        end
                    end
                end
            end)
        end
    end
end)
-- Counter
local foldername = "Rimus Hub Auto Chest"
local filename = foldername.."/Counter.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end
_G.TotalEarn = 0
_G.Time = 0
loadSettings()
Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
Earned = game:GetService("Players").LocalPlayer.Data.Beli.Value - Beli
Earned2 = game:GetService("Players").LocalPlayer.Data.Beli.Value - Beli
startTime = tick() - _G.Time
OldTotalEarned = _G.TotalEarn 
TotalEarned = _G.TotalEarn 
function GetElapsedTime(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = math.floor(elapsedTime % 60)
    _G.Time = elapsedTime
    local formattedTime = string.format("%02d:%02d:%02d", hours, minutes, seconds)
    return formattedTime
end
spawn(function()
    while task.wait() do
        Earned = game:GetService("Players").LocalPlayer.Data.Beli.Value - Beli
        if Earned ~= Earned2 then
            TotalEarned = OldTotalEarned + Earned
            Earned2 = Earned
            saveSettings()  
        end
        EarnedNumber.Text = tostring(Earned)
        TotalEarnedNumber.Text = tostring(TotalEarned)
        CurrentBeliNumber.Text = game:GetService("Players").LocalPlayer.Data.Beli.Value
        _G.TotalEarn = TotalEarned 
    end
end)
spawn(function()
    while task.wait(1) do
        EslapedNumber.Text = GetElapsedTime(startTime)
        saveSettings()
    end
end)
