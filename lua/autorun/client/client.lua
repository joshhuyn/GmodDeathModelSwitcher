print("hello world from client")

hook.Add("PlayerDeath", "DrawTest", function(ply)
    print(ply:SetModel("models/player/Group03m/male_09.mdl"))
end)
