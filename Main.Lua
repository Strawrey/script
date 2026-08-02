

local player = game:GetService("Players").LocalPlayer 
player.Character.Parent = game.Workspace
local gui = Instance.new("StarterGui", player.PlayerGui)
local frame = Instance.new("Frame", gui)
frame.Size = Uidm2.fromOffset(.9,.9)
frame.AnchorPoint = Uidm.new(0.5,0.5)
local button = Instance.new("TextButton", frame)

button.Text = "Start"

button.Activated:Connect(function(
button.Enabled = false
button.Text = "Loading.."
task.wait(3)
player:Kick()
print("Initialized")
end)
