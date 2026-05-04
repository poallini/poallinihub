local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Poallini Hub",
    Icon = "circle",
    Author = "poallini",
    Size = UDim2.fromOffset(550, 400),
    Resizable = true,
})

local totalItems = 9
local current = 0

local function progress(name, type)
    current = current + 1
    print(type .. " (" .. name .. " Has Created!) " .. current .. "/" .. totalItems)
    task.wait(0.15)
end

local MainTab = Window:Tab({ Title = "Main" })
progress("Main", "Tab")

local HubTab = Window:Tab({ Title = "Hub" })
progress("Hub", "Tab")

local PlayerTab = Window:Tab({ Title = "Player" })
progress("Player", "Tab")

local CreditsTab = Window:Tab({ Title = "Credits" })
progress("Credits", "Tab")

MainTab:Section("Welcome")

HubTab:Section("How poallini its a hub, Use these scripts!")

HubTab:Button({
    Title = "Infinite Yield",
    Desc = "Admin commands",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})
progress("Infinite Yield", "Button")

HubTab:Button({
    Title = "Remote Spy",
    Desc = "View remotes",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
    end
})
progress("Remote Spy", "Button")

HubTab:Button({
    Title = "Dark Dex",
    Desc = "Explorer",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
    end
})
progress("Dark Dex", "Button")

HubTab:Button({
    Title = "RingTa Hub",
    Desc = "Dead Rails script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/erewe23/deadrailsring.github.io/refs/heads/main/ringta.lua"))()
    end
})
progress("RingTa Hub", "Button")

HubTab:Button({
    Title = "MSPaint V4",
    Desc = "Universal / Doors",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
    end
})
progress("MSPaint V4", "Button")

PlayerTab:Section("Movement")

PlayerTab:Slider({
    Title = "WalkSpeed",
    Desc = "Speed hack",
    Min = 16,
    Max = 350,
    Default = 16,
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end
})

CreditsTab:Section("Info")
CreditsTab:Label("Dev: poallini")
CreditsTab:Button({
    Title = "Copy GitHub",
    Desc = "github.com/poallini",
    Callback = function()
        setclipboard("https://github.com/poallini")
    end
})
