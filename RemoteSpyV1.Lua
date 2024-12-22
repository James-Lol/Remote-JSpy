local DragModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/James-Lol/Remote-JSpy/refs/heads/main/DragModule.Lua"))()
local Channels = {}
local CurrentRemote = nil
local CurrentCode = nil

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderColor = BrickColor.new("Really black")
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.69, 0, 0.55, 0)
MainFrame.Size = UDim2.new(0.3, 0, 0.42, 0)
MainFrame.Name = "MainFrame"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.02, 0)

local ChannelsFrame = Instance.new("ScrollingFrame")
ChannelsFrame.BottomImage = "rbxassetid://19000029648"
ChannelsFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ChannelsFrame.MidImage = "rbxassetid://19000029648"
ChannelsFrame.ScrollBarImageColor3 = Color3.fromRGB(63, 63, 65)
ChannelsFrame.ScrollBarThickness = 6
ChannelsFrame.TopImage = "rbxassetid://19000029648"
ChannelsFrame.Active = true
ChannelsFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 45)
ChannelsFrame.BorderColor = BrickColor.new("Really black")
ChannelsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChannelsFrame.BorderSizePixel = 0
ChannelsFrame.Position = UDim2.new(0.03, 0, 0.04, 0)
ChannelsFrame.Size = UDim2.new(0.14, 0, 0.92, 0)
ChannelsFrame.Name = "Channels"

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local RemoteInfo = Instance.new("Frame")
RemoteInfo.BackgroundColor3 = Color3.fromRGB(44, 44, 45)
RemoteInfo.BorderColor = BrickColor.new("Really black")
RemoteInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoteInfo.BorderSizePixel = 0
RemoteInfo.Position = UDim2.new(0.34, 0, 0.04, 0)
RemoteInfo.Size = UDim2.new(0.63, 0, 0.92, 0)
RemoteInfo.Name = "RemoteInfo"

local RemoteCode = Instance.new("TextBox")
RemoteCode.ClearTextOnFocus = false
RemoteCode.CursorPosition = -1
RemoteCode.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
RemoteCode.MultiLine = true
RemoteCode.Text = ""
RemoteCode.TextColor = BrickColor.new("Institutional white")
RemoteCode.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoteCode.TextEditable = false
RemoteCode.TextSize = 12
RemoteCode.TextWrapped = false
RemoteCode.TextXAlignment = Enum.TextXAlignment.Left
RemoteCode.TextYAlignment = Enum.TextYAlignment.Top
RemoteCode.BackgroundColor3 = Color3.fromRGB(53, 53, 54)
RemoteCode.BorderColor = BrickColor.new("Really black")
RemoteCode.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoteCode.BorderSizePixel = 0
RemoteCode.ClipsDescendants = true
RemoteCode.Position = UDim2.new(0.02, 0, 0.04, 0)
RemoteCode.Size = UDim2.new(0.96, 0, 0.48, 0)
RemoteCode.Name = "RemoteCode"

local ButtonsFrame = Instance.new("Frame")
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.BorderColor = BrickColor.new("Really black")
ButtonsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonsFrame.BorderSizePixel = 0
ButtonsFrame.ClipsDescendants = true
ButtonsFrame.Position = UDim2.new(0.02, 0, 0.58, 0)
ButtonsFrame.Size = UDim2.new(0.96, 0, 0.38, 0)
ButtonsFrame.Transparency = 1
ButtonsFrame.Name = "Buttons"

local UIListLayout_2 = Instance.new("UIListLayout")
UIListLayout_2.Padding = UDim.new(0.1, 0)
UIListLayout_2.Wraps = true
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

local RemoteText = Instance.new("TextLabel")
RemoteText.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
RemoteText.Text = ""
RemoteText.TextColor = BrickColor.new("Institutional white")
RemoteText.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoteText.TextScaled = true
RemoteText.TextSize = 14
RemoteText.TextWrapped = true
RemoteText.TextXAlignment = Enum.TextXAlignment.Left
RemoteText.TextYAlignment = Enum.TextYAlignment.Bottom
RemoteText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoteText.BackgroundTransparency = 1
RemoteText.BorderColor = BrickColor.new("Really black")
RemoteText.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoteText.BorderSizePixel = 0
RemoteText.Position = UDim2.new(0, 0, 0.85, 0)
RemoteText.Size = UDim2.new(1, 0, 0.15, 0)
RemoteText.Name = "RemoteText"

local Remotes = Instance.new("ScrollingFrame")
Remotes.BottomImage = "rbxassetid://19000029648"
Remotes.CanvasSize = UDim2.new(0, 0, 0, 0)
Remotes.MidImage = "rbxassetid://19000029648"
Remotes.ScrollBarImageColor3 = Color3.fromRGB(63, 63, 65)
Remotes.ScrollBarThickness = 6
Remotes.TopImage = "rbxassetid://19000029648"
Remotes.Active = true
Remotes.BackgroundColor3 = Color3.fromRGB(44, 44, 45)
Remotes.BorderColor = BrickColor.new("Really black")
Remotes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Remotes.BorderSizePixel = 0
Remotes.Position = UDim2.new(0.19, 0, 0.04, 0)
Remotes.Size = UDim2.new(0.14, 0, 0.92, 0)
Remotes.Name = "Remotes"

local UIListLayout_3 = Instance.new("UIListLayout")
UIListLayout_3.Padding = UDim.new(0, 5)
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
MainFrame.Parent = ScreenGui
UICorner.Parent = MainFrame
ChannelsFrame.Parent = MainFrame
UIListLayout.Parent = ChannelsFrame
RemoteInfo.Parent = MainFrame
RemoteCode.Parent = RemoteInfo
ButtonsFrame.Parent = RemoteInfo
UIListLayout_2.Parent = ButtonsFrame
RemoteText.Parent = RemoteInfo
Remotes.Parent = MainFrame
UIListLayout_3.Parent = Remotes

DragModule.New(MainFrame):Enable()

local function TemplateButton(Type, ButtonParent, ButtonText)
	if Type == 2 then
		local Template = Instance.new("Frame")
		Template.BackgroundColor3 = Color3.fromRGB(62, 91, 255)
		Template.BorderColor = BrickColor.new("Really black")
		Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Template.BorderSizePixel = 0
		Template.Size = UDim2.new(1, 0, 0, 15)
		Template.Name = tostring(ButtonText)

		local LabelTemplate = Instance.new("TextButton")
		LabelTemplate.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		LabelTemplate.Text = tostring(ButtonText)
		LabelTemplate.TextColor = BrickColor.new("Institutional white")
		LabelTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
		LabelTemplate.TextSize = 10
		LabelTemplate.TextXAlignment = Enum.TextXAlignment.Left
		LabelTemplate.BackgroundColor3 = Color3.fromRGB(53, 53, 54)
		LabelTemplate.BorderColor = BrickColor.new("Really black")
		LabelTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LabelTemplate.BorderSizePixel = 0
		LabelTemplate.ClipsDescendants = true
		LabelTemplate.Position = UDim2.new(0.15, 0, 0, 0)
		LabelTemplate.Size = UDim2.new(0.85, 0, 1, 0)
		LabelTemplate.AutoButtonColor = false
		LabelTemplate.Name = "Label"

		local UIPaddingTemplate = Instance.new("UIPadding")
		UIPaddingTemplate.PaddingLeft = UDim.new(0.1, 0)

		Template.Parent = ButtonParent
		LabelTemplate.Parent = Template
		UIPaddingTemplate.Parent = LabelTemplate
		return Template
	else
		local Template = Instance.new("TextButton")
		Template.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
		Template.Text = tostring(ButtonText)
		Template.TextColor = BrickColor.new("Institutional white")
		Template.TextColor3 = Color3.fromRGB(255, 255, 255)
		Template.TextScaled = true
		Template.TextWrapped = true
		Template.BackgroundColor3 = Color3.fromRGB(53, 53, 54)
		Template.BorderColor = BrickColor.new("Really black")
		Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Template.BorderSizePixel = 0
		Template.Size = UDim2.new(0.25, 0, 0.28, 0)
		Template.Name = tostring(ButtonText)

		local UIPaddingTemplate = Instance.new("UIPadding")
		UIPaddingTemplate.PaddingBottom = UDim.new(0.1, 0)
		UIPaddingTemplate.PaddingTop = UDim.new(0.1, 0)

		Template.Parent = ButtonParent
		UIPaddingTemplate.Parent = Template

		return Template
	end
end

local function CreateChannel(Remote, FirstCode)
	Channels[Remote] = {}
	table.insert(Channels[Remote], FirstCode)

	local ChannelButton = TemplateButton(2, ChannelsFrame, Remote.Name)

	ChannelButton.Label.MouseButton1Down:Connect(function()
		CurrentRemote = Remote

		for _, Button in ipairs(Remotes:GetChildren()) do
			if Button:IsA("Frame") then
				Button:Destroy()
			end
		end

		for Index, Code in ipairs(Channels[Remote]) do
			local RemoteButton = TemplateButton(2, Remotes, tostring(Index))
			RemoteButton.LayoutOrder = tonumber(Index)
			RemoteButton.Label.MouseButton1Down:Connect(function()
				RemoteCode.Text = tostring(Code)
				RemoteText.Text = "Remote." .. tostring(Index)
				CurrentCode = tostring(Code)
			end)
		end

		Remotes.CanvasSize = UDim2.new(0,0,0,UIListLayout_3.AbsoluteContentSize.Y)
	end)

	ChannelsFrame.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y)
end

local function RegisterRemote(Remote, Code)
	if Channels[Remote] then
		table.insert(Channels[Remote],Code)
		if CurrentRemote == Remote then
			for _, Button in ipairs(Remotes:GetChildren()) do
				if Button:IsA("Frame") then
					Button:Destroy()
				end
			end

			for Index, Code in ipairs(Channels[Remote]) do
				local RemoteButton = TemplateButton(2, Remotes, tostring(Index))
				RemoteButton.LayoutOrder = tonumber(Index)
				RemoteButton.Label.MouseButton1Down:Connect(function()
					RemoteCode.Text = tostring(Code)
					RemoteText.Text = "Remote." .. tostring(Index)
					CurrentCode = tostring(Code)
				end)
			end

			Remotes.CanvasSize = UDim2.new(0,0,0,UIListLayout_3.AbsoluteContentSize.Y)
		end
	else
		CreateChannel(Remote,Code)
	end
end

local function GetMaxIndex(Tbl)
    local MaxIndex = 0
    for Index in pairs(Tbl) do
        if type(Index) == "number" and Index > MaxIndex then
            MaxIndex = Index
        end
    end
    return MaxIndex
end

-- Format basic types
local function FormatBasicType(Value)
    if type(Value) == "string" then
        return string.format("%q", Value)
    elseif type(Value) == "boolean" or type(Value) == "number" then
        return tostring(Value)
    elseif Value == nil then
        return "nil"
    end
    return nil
end

-- Format Vector types
local function FormatVector(Vector)
    local VectorType = typeof(Vector)
    if VectorType == "Vector2" or VectorType == "Vector3" then
        return string.format("%s.new(%s)", 
            VectorType,
            table.concat({Vector:components()}, ", "))
    end
    return nil
end

-- Format Color types
local function FormatColor(Color)
    local ColorType = typeof(Color)
    if ColorType == "Color3" then
        return string.format("Color3.new(%g, %g, %g)", 
            Color.R, Color.G, Color.B)
    elseif ColorType == "BrickColor" then
        return string.format('BrickColor.new("%s")', Color.Name)
    end
    return nil
end

-- Format Dimension types
local function FormatDimension(Value)
    local ValueType = typeof(Value)
    if ValueType == "UDim" then
        return string.format("UDim.new(%g, %g)", 
            Value.Scale, Value.Offset)
    elseif ValueType == "UDim2" then
        return string.format("UDim2.new(%g, %g, %g, %g)",
            Value.X.Scale, Value.X.Offset,
            Value.Y.Scale, Value.Y.Offset)
    end
    return nil
end

-- Format Position/Transform types
local function FormatTransform(Value)
    local ValueType = typeof(Value)
    if ValueType == "CFrame" then
        return string.format("CFrame.new(%s)", 
            table.concat({Value:components()}, ", "))
    elseif ValueType == "Ray" then
        local Origin, Direction = Value.Origin, Value.Direction
        return string.format("Ray.new(Vector3.new(%g, %g, %g), Vector3.new(%g, %g, %g))",
            Origin.X, Origin.Y, Origin.Z,
            Direction.X, Direction.Y, Direction.Z)
    end
    return nil
end

-- Format Region types
local function FormatRegion(Value)
    local ValueType = typeof(Value)
    if ValueType == "Rect" then
        return string.format("Rect.new(%g, %g, %g, %g)",
            Value.Min.X, Value.Min.Y,
            Value.Max.X, Value.Max.Y)
    elseif ValueType == "Region3" then
        local Min, Max = Value.CFrame.Position - Value.Size/2, Value.CFrame.Position + Value.Size/2
        return string.format("Region3.new(Vector3.new(%g, %g, %g), Vector3.new(%g, %g, %g))",
            Min.X, Min.Y, Min.Z,
            Max.X, Max.Y, Max.Z)
    end
    return nil
end

-- Format Sequence types
local function FormatSequence(Value)
    local ValueType = typeof(Value)
    if ValueType == "ColorSequence" then
        local FormattedPoints = {}
        for _, Point in ipairs(Value.Keypoints) do
            table.insert(FormattedPoints, 
                string.format("ColorSequenceKeypoint.new(%g, Color3.new(%g, %g, %g))",
                    Point.Time,
                    Point.Value.R, Point.Value.G, Point.Value.B))
        end
        return string.format("ColorSequence.new({%s})",
            table.concat(FormattedPoints, ", "))
    elseif ValueType == "NumberSequence" then
        local FormattedPoints = {}
        for _, Point in ipairs(Value.Keypoints) do
            table.insert(FormattedPoints,
                string.format("NumberSequenceKeypoint.new(%g, %g, %g)",
                    Point.Time,
                    Point.Value,
                    Point.Envelope or 0))
        end
        return string.format("NumberSequence.new({%s})",
            table.concat(FormattedPoints, ", "))
    end
    return nil
end

-- Format Range types
local function FormatRange(Value)
    local ValueType = typeof(Value)
    if ValueType == "NumberRange" then
        return string.format("NumberRange.new(%g, %g)",
            Value.Min, Value.Max)
    end
    return nil
end

-- Format Reference types
local function FormatReference(Value)
    local ValueType = typeof(Value)
    if ValueType == "Instance" then
        return Value:GetFullName()
    elseif ValueType == "EnumItem" then
        return string.format("Enum.%s.%s", 
            tostring(Value.EnumType),
            tostring(Value.Name))
    elseif ValueType == "Enum" then
        return "Enum." .. tostring(Value)
    end
    return nil
end

local function FormatValue(Value, Indent)
    -- Try all formatters in sequence
    local Formatted = 
        FormatBasicType(Value) or
        FormatVector(Value) or
        FormatColor(Value) or
        FormatDimension(Value) or
        FormatTransform(Value) or
        FormatRegion(Value) or
        FormatSequence(Value) or
        FormatRange(Value) or
        FormatReference(Value)
    
    if Formatted then
        return Formatted
    elseif type(Value) == "table" then
        return TableToString(Value, Indent)
    else
        return tostring(Value)
    end
end

function TableToString(Tbl, Indent)
    if type(Tbl) ~= "table" then
        return FormatValue(Tbl, Indent)
    end
    
    Indent = Indent or ""
    local Result = "{\n"
    local MaxIndex = GetMaxIndex(Tbl)
    
    -- Handle sequential indices
    for I = 1, MaxIndex do
        Result = Result .. Indent .. "    [" .. I .. "] = "
        Result = Result .. FormatValue(Tbl[I], Indent .. "    ") .. ",\n"
    end
    
    -- Handle non-sequential indices
    for Index, Value in pairs(Tbl) do
        if type(Index) ~= "number" or Index > MaxIndex then
            Result = Result .. Indent .. "    "
            
            -- Format the index
            if type(Index) == "number" then
                Result = Result .. "[" .. Index .. "]"
            else
                Result = Result .. "[" .. FormatValue(Index, "") .. "]"
            end
            
            Result = Result .. " = " .. FormatValue(Value, Indent .. "    ") .. ",\n"
        end
    end
    
    return Result .. Indent .. "}"
end

local function IsService(Object)
    if not Object then return false end
    if game:GetService(Object.ClassName) then
        return true
    else
        return false
    end
end

local function NeedsWrapping(str)
    if string.match(str, "^%d") then
        return true
    end
    
    if string.match(str, "[^%w]") or string.match(str, "_") then
        return true
    end
    
    return false
end

local function WrapName(name)
    if NeedsWrapping(name) then
        return string.format('[""%s""]', name)
    end
    return name
end

local function ObjectToPath(Object)
    if not Object then
        return nil
    end
    
    local Path = WrapName(Object.Name)
    local Current = Object
    
    if IsService(Object) then
        return string.format('game:GetService("%s")', Object.ClassName)
    end
    
    while Current.Parent and Current.Parent ~= game do
        Current = Current.Parent
        
        if IsService(Current) then
            return string.format('game:GetService("%s").%s', Current.ClassName, Path)
        end
        
        Path = WrapName(Current.Name) .. "." .. Path
    end
    
    if Current.Parent == game then
        Path = "game." .. Path
    end
    
    return Path
end

local function GenerateCode(Remote, Args, Method)
    local RemotePath = ObjectToPath(Remote)
    local Code = nil

    if RemotePath then
        if #Args > 0 then
            local ArgText = TableToString(Args)

            if ArgText then
                Code = string.format("local Args = %s\n\n%s:%s(unpack(Args))", ArgText, RemotePath, Method)
                else
                Code = string.format("%s:%s()", RemotePath, Method)
            end
            else
                Code = string.format("%s:%s()", RemotePath, Method)
        end
    end

    return Code
end

local hookmetamethod = hookmetamethod or debug.hookmetamethod or krnl.hookmetamethod or nil

if hookmetamethod == nil then
    warn([[Your Executor Does Not Have the "hookmetamethod" Function]])
    return
end

local Namecall

Namecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}

    if Method == "FireServer" or Method == "InvokeServer" then
        coroutine.wrap(function()
		RegisterRemote(self, GenerateCode(self, Args, Method))
        end)()
    end

    return Namecall(self, ...)
end))

local ClipBoardFunction = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

local Buttons = {
	[1] = {"Run", function()
		if CurrentCode then
			local Success, ErrorMsg = pcall(function()
				loadstring(CurrentCode)()
			end)
			if not Success then
				warn(ErrorMsg)
			end
		end
	end},
	[2] = {"Copy", function()
		if CurrentCode then
			if ClipBoardFunction then
				ClipBoardFunction(tostring(CurrentCode))
			end
		end
	end}
}

for Index, ButtonInfo in ipairs(Buttons) do
	local ButtonLabel = TemplateButton(1, ButtonsFrame, ButtonInfo[1])

	ButtonLabel.MouseButton1Down:Connect(function()
		ButtonInfo[2]()
	end)
end
