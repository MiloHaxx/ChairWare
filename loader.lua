local games = {

    ["SurviveTheKiller"] = 4580204640

}

for i,v in pairs(games) do
    if game.PlaceId == v then print("Supported!"); loadstring(game:HttpGet("https://raw.githubusercontent.com/MiloHaxx/ChairWare/main/" .. i .. ".lua"))() end
end
