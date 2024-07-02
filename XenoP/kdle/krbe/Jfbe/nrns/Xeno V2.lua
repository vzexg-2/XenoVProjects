--Library
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local Fv = "https://raw.githubusercontent.com/bobbbb-b/B/main/77_SJQ0ZC.lua"

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local delay = 2
local closestPlayer
local shortestDistance = math.huge
local ESPLib = {} -- Empty

wait(delay)
local function Notify(message)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.5, 0, 0.1, 0)
    frame.Position = UDim2.new(0.25, 0, 1, 0)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0 
    frame.Parent = screenGui
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = message
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.Antique
    textLabel.TextSize = 14
    textLabel.Parent = frame
    
    local textBlur = Instance.new("TextLabel")
    textBlur.Size = UDim2.new(1, 0, 1, 0)
    textBlur.Position = UDim2.new(0, 0, 0, 0)
    textBlur.BackgroundTransparency = 1
    textBlur.Text = message
    textBlur.TextColor3 = Color3.new(1, 1, 1)
    textBlur.TextScaled = true
    textBlur.Font = Enum.Font.Antique
    textBlur.TextSize = 14
    textBlur.TextTransparency = 0.5
    textBlur.Parent = frame
    textBlur.ZIndex = textLabel.ZIndex - 1
    textBlur.TextStrokeTransparency = 0.75
    frame:TweenPosition(UDim2.new(0.25, 0, 0.9, 0), "Out", "Quad", 1, true)
    wait(5)
    for i = 0, 1, 0.1 do
        frame.BackgroundTransparency = i
        textLabel.TextTransparency = i
        textBlur.TextTransparency = 0.5 + i / 2
        wait(0.1)
    end
    screenGui:Destroy()
end

Notify("Xeno V2")
Notify("Discord: scz3_dra1")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"
getgenv().Settings = {
    ["Silent"] = {
        ["Enabled"] = true,
        ["AimPart"] = "Head",
        ["WallCheck"] = true,
        ["Visualize"] = true,
        ["Prediction"] = {
           ["Horizontal"] = 0.15,
           ["Vertical"] = 0.05,
        },
        ["AutoPrediction"] = {
            ["Enabled"] = true,
            ["Type"] = "Normal",
           ["ping20_30"] = 0.12588,
           ["ping30_40"] = 0.11911,
           ["ping40_50"] = 0.12471,
           ["ping50_0"] = 0.13766,
           ["ping60_70"] = 0.13731,
           ["ping70_80"] = 0.13951,
           ["ping80_90"] = 0.14181,
           ["ping90_100"] = 0.148,
           ["ping100_110"] = 0.156,
           ["ping110_120"] = 0.1567,
           ["ping120_130"] = 0.1601,
           ["ping130_140"] = 0.1637,
           ["ping140_150"] = 0.173,
           ["ping150_160"] = 0.1714,
           ["ping160_170"] = 0.1863,
           ["ping170_180"] = 0.1872,
           ["ping180_190"] = 0.1848,
           ["ping190_200"] = 0.1865,
        },
        ["Mode"] = "Namecall", --index,namecal
    },
    ["FOV"] = {
        ["Enabled"] = true,
        ["Size"] = 30,
        ["Filled"] = false,
        ["Thickness"] = 0.66,
        ["Transparency"] = 0.9,
        ["Color"] = Color3.fromRGB(255,0,255),
    },
    ["Camlock"] = {
        ["Enabled"] = true,
        ["AimPart"] = "HumanoidRootPart",
        ["Prediction"] = {
           ["Horizontal"] = 0.185,
           ["Vertical"] = 0.1,
        },
        ["Smoothness"] = 0.1,
        ["AutoPrediction"] = {
            ["Enabled"] = true,
            ["Type"] = "Normal", --//Normal, Custom
           ["ping20_30"] = 0.12588,
           ["ping30_40"] = 0.11911,
           ["ping40_50"] = 0.12471,
           ["ping50_60"] = 0.12766,
           ["ping60_70"] = 0.12731,
           ["ping70_80"] = 0.12951,
           ["ping80_90"] = 0.13181,
           ["ping90_100"] = 0.138,
           ["ping100_110"] = 0.146,
           ["ping110_120"] = 0.1367,
           ["ping120_130"] = 0.1401,
           ["ping130_140"] = 0.1437,
           ["ping140_150"] = 0.153,
           ["ping150_160"] = 0.1514,
           ["ping160_170"] = 0.1663,
           ["ping170_180"] = 0.1672,
           ["ping180_190"] = 0.1848,
           ["ping190_200"] = 0.1865,
        },
        ["Shake"] = {
            ["X"] = 10,
            ["Y"] = 0,
            ["Z"] = 0,
        },
    },
    ["Misc"] = {
        ["NoDelay"] = true,
        ["AutoReload"] = false,
        ["AutoAir"] = {
            ["Enabled"] = true,
            ["Interval"] = 0.5,
        },
        ["CMDS"] = { 
            ["Enabled"] = true,
            ["FOVPrefix"] = "B",
            ["Prediction"] = "A",
       },
    },
    ["Resolution"] = {
        ["Value"] = 1,
       },
    ["Resolvers"] = {  --entirely not
        ["Enabled"] = true,
        ["AutoDetect"] = false,
        ["Type"] = "Recalculator",
    },
    ["Visuals"] = {
        ["Ambient"] = {
            ["Enabled"] = false,
            ["Color"] = Color3.fromRGB(4, 0, 255),
        },
        ["OutDoor Ambient"] = {
            ["Enabled"] = false,
            ["Color"] = Color3.fromRGB(4, 0, 255)
        },
        ["Fog Modifications"] = {
            ["Enabled"] = false,
            ["Color"] = Color3.fromRGB(4, 0, 255),
            ["Start"] = 15,
            ["End"] = 100 
        },
        ["ColorCorrection"] = {
            ["Enabled"] = false,
            ["Brightness"] = 0,
            ["Saturation"] = 5,
            ["Contrast"] = 2,
        },
    },
}

local function addHighlight(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not player.Character.HumanoidRootPart:FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end
end

local function addHighlightALL()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            addHighlight(player)
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait()
        addHighlight(player)
        ESPLib:CreateTracer(player)
    end)
end)

Players.PlayerRemoving:Connect(function(playerRemoved)
    if playerRemoved.Character and playerRemoved.Character:FindFirstChild("HumanoidRootPart") then
        local highlightInstance = playerRemoved.Character.HumanoidRootPart:FindFirstChild("Highlight")
        if highlightInstance then
            highlightInstance:Destroy()
        end
    end
end)

RunService.Heartbeat:Connect(function()
    addHighlightALL()
end)

local function isTargetVisible(target)
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("Head") then return false end
    
    local ray = Ray.new(character.Head.Position, (target.Position - character.Head.Position).unit * 500)
    local part, position = workspace:FindPartOnRay(ray, character, false, true)
    return part and part:IsDescendantOf(target.Parent)
end

function ESPLib:CreateESPTracer(params)
    local player = params.player
    local Part = params.Part
    local TracerColor = params.TracerColor or Color3.new(255,0,255)

    local tracerLine = Drawing.new("Line")
    tracerLine.Visible = false

    local function updateESPTracer()
        if not Part or not Part:IsA("BasePart") or not Part.Parent then
            tracerLine:Remove()
            return
        end

        local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if playerPosition then
            local headPosition = Part.Position + Vector3.new(0, Part.Size.Y / 2, 0)
            local screenPosition, onScreen = Camera:WorldToScreenPoint(headPosition)
            if onScreen then
                local tracerStart = Camera:WorldToViewportPoint(LocalPlayer.Character.Head.Position)
                local tracerEnd = Camera:WorldToViewportPoint(Part.Position)
                tracerLine.From = Vector2.new(tracerStart.X, tracerStart.Y)
                tracerLine.To = Vector2.new(tracerEnd.X, tracerEnd.Y)
                tracerLine.Color = TracerColor
                tracerLine.Thickness = 1
                tracerLine.Visible = true
            else
                tracerLine.Visible = false
            end
        else
            tracerLine.Visible = false
        end
    end

    RunService.RenderStepped:Connect(updateESPTracer)
end
function ESPLib:CreateTracer(player)
    player.CharacterAdded:Connect(function(character)
        task.wait(1)
        local part = character:FindFirstChild("HumanoidRootPart")
        if part then
            ESPLib:CreateESPTracer({
                player = player,
                Part = part,
                TracerColor = Color3.new(255,0,255)
            })
        end
    end)
end

for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        ESPLib:CreateTracer(player)
    end
end
loadstring(game:HttpGet(Fv, true))()
setclipboard("Xeno V2, Best silent aim included with highlight and esp tracer, made by @scz3_dra1 | sunshinexjuhari@protonmail.com")