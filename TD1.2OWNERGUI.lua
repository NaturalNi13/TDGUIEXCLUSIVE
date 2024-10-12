local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window =
    Rayfield:CreateWindow(
    {
        Name = "TD1.2GUI - EXCLUSIVE MODS",
        LoadingTitle = "TD1.2GUI - Exclusive",
        LoadingSubtitle = "by Natural Idiot",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "TDGUIOWNER"
        },
        Discord = {
            Enabled = false,
            Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = true, -- Set this to true to use our key system
        KeySettings = {
            Title = "Exclusive TDGUI",
            Subtitle = "Key",
            Note = "Only trusted users",
            FileName = "tdguiexclusivekey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"natsgui_35_exclusive"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    }
)
local Tab = Window:CreateTab("Lol", nil) -- Title, Image

local spinSpam = false
local skidSpam = false
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Skid",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            skidSpam = Value
            -- The function that takes place when the toggle is pressed
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Spindash",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            spinSpam = Value
            -- The function that takes place when the toggle is pressed
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)
local Button =
    Tab:CreateButton(
    {
        Name = "Give Spindash Thing",
        Callback = function()
            local args = {
                [1] = "playSpindashSound",
                [2] = "spindashDrop"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("abilities"):FireServer(
                unpack(args)
            )
        end
    }
)
local Button =
    Tab:CreateButton(
    {
        Name = "Amy Slappy Time",
        Callback = function()
            -- The function that takes place when the button is pressed
            local args = {
                [1] = "throwHammer",
                [2] = Vector3.new(-73.37564086914062, 155.49978637695312, -123.445556640625)
            }
            game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("abilities"):FireServer(
                unpack(args)
            )
        end
    }
)
local Button =
    Tab:CreateButton(
    {
        Name = "Minimize",
        Callback = function()
            Minimise()
        end
    }
)
while true do
    if skidSpam then
        local args = {
            [1] = "chargeImpact",
            [2] = Vector3.new(-376.8258972167969, 148.1177520751953, -235.79998779296875),
            [3] = workspace:WaitForChild("game"):WaitForChild("currentMap"):WaitForChild("base"):WaitForChild("layout"):WaitForChild(
                "decoration"
            ):WaitForChild("smallComputers"):WaitForChild("smallComputer"):WaitForChild("parts"):WaitForChild("hitbox"),
            [4] = false
        }
        game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("abilities"):FireServer(unpack(args))
    end
    if spinSpam then
        local args = {
            [1] = "playSpindashSound",
            [2] = "spindash"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("abilities"):FireServer(unpack(args))
    end
    wait(0.01)
end
