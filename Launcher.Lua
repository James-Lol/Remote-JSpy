if game:GetService("ReplicatedStorage"):GetAttribute("RemoteJSpy") then
    return
end

game:GetService("ReplicatedStorage"):SetAttribute("RemoteJSpy", true)

loadstring(game:HttpGet("https://raw.githubusercontent.com/James-Lol/Remote-JSpy/refs/heads/main/RemoteSpyV1.Lua"))()
