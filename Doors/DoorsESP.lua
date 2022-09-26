-- loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()

-- local Keybind = Enum.KeyCode.H
-- local CanSkipRoom_50 = true
-- local CanAutoUnlockDoors = true

-- do
-- local UIS = game:GetService("UserInputService")
-- local CF = CFrame.new
-- local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

-- UIS.InputBegan:Connect(function(input, typing)
--     if typing then return end
--     if input.KeyCode == Keybind then
--         pcall(function()
--             local key = false
--             local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
--             for i,object in ipairs(CurrentDoor.Parent:GetDescendants()) do
--                 if object.Name == "KeyObtain" then
--                     key = object
--                 end
--             end
--             if LatestRoom.Value == 50 and CanSkipRoom_50 == true then
--                 CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom.Value + 1)]:WaitForChild("Door")
--                 game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
--             else
--                 if key and CanAutoUnlockDoors == true then
--                     game.Players.LocalPlayer.Character:PivotTo(CF(key.Hitbox.Position))
--                     task.wait(.3)
--                     fireproximityprompt(key.ModulePrompt)
--                     task.wait(.3)
--                     game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
-- 					task.wait(.3)
--                     fireproximityprompt(CurrentDoor.Lock.UnlockPrompt)
--                 end
--                 game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
--             end
--             task.wait(.5)
--             CurrentDoor.ClientOpen:FireServer()
--         end)
--     end
-- end)
-- end

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.499738783, 0, 0.498998761, 0)
Frame.Size = UDim2.new(0.495139718, 0, 0.466585696, 0)

UICorner.CornerRadius = UDim.new(0.300000012, 0)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.499732852, 0, 0.44344309, 0)
TextLabel.Size = UDim2.new(0.493462533, 0, 0.298746973, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "PATCHED"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 4)
TextLabel.TextScaled = true
TextLabel.TextSize = 40.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.499429107, 0, 0.593865156, 0)
TextLabel_2.Size = UDim2.new(0.490567982, 0, 0.104852676, 0)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "This script has been patched and the script has been destroyed! Please leave the game and try again later!"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 40.000
TextLabel_2.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 40

UIAspectRatioConstraint.Parent = ScreenGui
UIAspectRatioConstraint.AspectRatio = 2.000