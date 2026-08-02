local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingScreenGui"
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200) -- Using UDim2 properly with scale/offset
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Parent = screenGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0.5, -75, 0.5, -25)
button.Text = "Start"
button.Parent = frame

button.Activated:Connect(function()
	button.Enabled = false
	button.Text = "Loading.."
	task.wait(3)
	LocalPlayer:Kick("Initialized. Please Rejoin")
	print("Initialized")
end)
