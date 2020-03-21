local plr = game:GetService"Players".LocalPlayer
local m = plr:GetMouse()
m.KeyDown:connect(function(k)
if k == "m" then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
wait()
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
end
end)