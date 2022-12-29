local cringediscord = 'wxThQvKG'
local text = Instance.new("TextLabel",Instance.new("ScreenGui",game.CoreGui))
text.Text = "ChairWare is currently broken due to the latest game update!\nI'll be fixing it very soon!\n- !Milan#4563"
text.Position = UDim2.new(0,0,0,0)
text.Size = UDim2.new(1,1,1,1)
text.BackgroundTransparency = 1
text.TextColor3 = Color3.new(1.0, 1.0, 1.0)
text.TextSize = 30
if syn then
    syn.request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = game:GetService("HttpService"):JSONEncode({
        cmd = "INVITE_BROWSER",
        args = {
            code = cringediscord
        },
        nonce = game:GetService("HttpService"):GenerateGUID(false)
    }),
    })
else
    setclipboard("discord.gg/"..cringediscord)
    game.StarterGui:SetCore("SendNotification",{Title="Discord",Text="Copied invite to clipboard, please join!"})
end
return
