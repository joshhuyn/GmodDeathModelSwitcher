local models = player_manager.AllValidModels()
local model = models["gman"]

hook.Add("PlayerDeath", "Cringe", function(ply)
    ply:GetRagdollEntity():SetModel(model)
end)

concommand.Add( "getDeathModels", function( ply, cmd, args, str )
    for k,v in pairs(models) do
        print(k,v)
    end
end )

concommand.Add("setDeathModel", function(ply, cmd, args, str )
    print(models[args[1]])
    if models[args[1]] ~= nil then
        model = models[args[1]]
    end
end)
