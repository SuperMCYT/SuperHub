print("a")
function getplrsname() -- Returns a list of players in the server whenever its called.
  for i,v in pairs(game:GetChildren()) do
    if v.ClassName == "Players" then
      return v.Name
    end
  end
end
--<config>
--Change the Values here to the size you want. 
--All 5 gives you a nice advantage without looking too sus.
local x = <X-VALUE-HERE>
local y = <Y-VALUE-HERE>
local z = <Z-VALUE-HERE>
--change this value if the resized torso's should have collision.
local collisionEnabled = true/false
--</config>
local players = getplrsname() --Players = list of server players.
local plr = game[players].LocalPlayer --plr = local player (you)
coroutine.resume(coroutine.create(function()
while  wait(1) do --loops every seconds
  coroutine.resume(coroutine.create(function()
  for _,v in pairs(game[players]:GetPlayers()) do -- executes for every player except you.
    if v.Name ~= plr.Name and v.Character then
      v.Character.LowerTorso.CanCollide = collisionEnabled --changes torso collision
      v.Character.LowerTorso.Material = "Neon" --changes the material (doesnt seem to work all the time)
      v.Character.LowerTorso.Size = Vector3.new(x,y,z) --Sets the size of the torso.
      v.Character.HumanoidRootPart.Size = Vector3.new(x,y,z) --Sets the size of the Root part. Arsenal uses the root part for hit reg.
    end
  end
  end))
end
end))