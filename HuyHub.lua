repeat wait() until game:IsLoaded()
if SetTeam then
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam",SetTeam)
    game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam"):Destroy()
    game:GetService("Workspace").CurrentCamera.CameraType=Enum.CameraType.Custom
    game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players").LocalPlayer.Character.Humanoid
    game:GetService("Workspace").CurrentCamera.CFrame=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
local openshit = Instance.new("ScreenGui")
local mainopen = Instance.new("TextButton")
local mainopens = Instance.new("UICorner")
local loki = Instance.new("ImageLabel")
local posto = Instance.new("UIStroke")

openshit.Name = "openshit"
openshit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
openshit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainopen.Name = "mainopen"
mainopen.Parent = openshit
mainopen.Transparency = 1
mainopen.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
mainopen.Size = UDim2.new(0, 55, 0, 50)
mainopen.Text = ""
mainopen.Visible = true
mainopen.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

mainopens.Parent = mainopen
 
 loki.Name = "loki"
 loki.Parent = mainopen
 loki.BackgroundColor3 = Color3.fromRGB(224,224,224)
 loki.BackgroundTransparency = 1.000
 loki.Position = UDim2.new(-0.0529999994, 0, -0.244000003, 0)
 loki.Size = UDim2.new(0, 55, 0, 50)
 loki.Image = "rbxassetid://15713000592"
 
 local UserInputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 
 local function MakeDraggable(topbarobject, object)
 local Dragging = nil
 local DragInput = nil
 local DragStart = nil
 local StartPosition = nil
 
 local function Update(input)
 local Delta = input.Position - DragStart
 local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
 local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
  Position = pos
 })
 Tween:Play()
 end
 
 topbarobject.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
  Dragging = true
  DragStart = input.Position
  StartPosition = object.Position
 
  input.Changed:Connect(
   function()
   if input.UserInputState == Enum.UserInputState.End then
   Dragging = false
   end
   end
  )
  end
  end
 )
 
 topbarobject.InputChanged:Connect(
  function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseMovement or
  input.UserInputType == Enum.UserInputType.Touch
  then
  DragInput = input
  end
  end
 )
 
 UserInputService.InputChanged:Connect(
  function(input)
  if input == DragInput and Dragging then
  Update(input)
  end
  end
 )
 end
 
 local Update = {}
  
 function Update:Window(text,keybind)
 local osfunc = {}
 local uihide = false
 local abc = false
 local currentpage = ""
 local keybind = keybind or Enum.KeyCode.RightControl
 local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
 
 local HUYHUB = Instance.new("ScreenGui")
 HUYHUB.Name = "HUYHUB"
 HUYHUB.Parent = game.CoreGui
 HUYHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
 local Main = Instance.new("Frame")
 Main.Name = "Main"
 Main.Parent = HUYHUB
 Main.ClipsDescendants = true
 Main.AnchorPoint = Vector2.new(0.5,0.5)
 Main.BackgroundColor3 = Color3.fromRGB(43,168,241)
 Main.Position = UDim2.new(0.5, 0, 0.5, 0)
 Main.Size = UDim2.new(0, 0, 0, 0)

 Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.4,true)
 
 local MCNR = Instance.new("UICorner")
 MCNR.Name = "MCNR"
 MCNR.Parent = Main
 
 local Top = Instance.new("Frame")
 Top.Name = "Top"
 Top.Parent = Main
 Top.BackgroundColor3 = Color3.fromRGB(72, 113, 214)

 Top.Size = UDim2.new(0, 480, 0, 27)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Top
 
 local Logo = Instance.new("ImageLabel")
 Logo.Name = "Logo"
 Logo.Parent = Top
 Logo.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Logo.BackgroundTransparency = 1.000
 Logo.Position = UDim2.new(-0.01, 0,-0.319, 0)
 Logo.Size = UDim2.new(0, 55,0, 45)
 
 local Name = Instance.new("TextLabel")
 Name.Name = "Name"
 Name.Parent = Top
 Name.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Name.BackgroundTransparency = 1.000
 Name.Position = UDim2.new(0.0909756112, 0, 0, 0)
 Name.Size = UDim2.new(0, 61, 0, 27)
 Name.Font = Enum.Font.Code
 Name.Text = text
 Name.TextColor3 = Color3.fromRGB(52, 205, 250)
 Name.TextSize = 17.000
 
 local Hub = Instance.new("TextLabel")
 Hub.Name = "Hub"
 Hub.Parent = Top
 Hub.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Hub.BackgroundTransparency = 1.000
 Hub.Position = UDim2.new(0, 110, 0, 0)
 Hub.Size = UDim2.new(0, 81, 0, 27)
 Hub.Font = Enum.Font.Code
 Hub.Text = "| BLOX FRUIT |"
 Hub.TextColor3 = Color3.fromRGB(255,255,255)
 Hub.TextSize = 16.000
 Hub.TextXAlignment = Enum.TextXAlignment.Left
 
 
 local MainImage = Instance.new("ImageLabel")
 local MainImageFrame = Instance.new("Frame")

 MainImage.Parent = Main
 MainImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainImage.BackgroundTransparency = 1.000
 MainImage.Position = UDim2.new(0, 25, 0, 25)
 MainImage.Size = UDim2.new(0, 100, 0, 170)
 MainImage.Image = ""
 
 
 local Tab = Instance.new("Frame")
 Tab.Name = "Tab"
 Tab.Parent = Main
 Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 Tab.Position = UDim2.new(0, 5, 0, 30)

 Tab.Size = UDim2.new(0, 0, 0, 0)

 

 local TabCorner = Instance.new("UIListLayout")
 TabCorner.Name = "TabCorner"
 TabCorner.Parent = Tab
 TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
 TabCorner.Padding = UDim.new(0, 15)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Tab
 
 local ScrollTab = Instance.new("ScrollingFrame")
 ScrollTab.Name = "ScrollTab"
 ScrollTab.Parent = Tab
 ScrollTab.Active = true
 ScrollTab.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ScrollTab.BackgroundTransparency = 1.000
 ScrollTab.Size = UDim2.new(0, 133, 0, 250)
 ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
 ScrollTab.ScrollBarThickness = 0
 
 local PLL = Instance.new("UIListLayout")
 PLL.Name = "PLL"
 PLL.Parent = ScrollTab
 PLL.SortOrder = Enum.SortOrder.LayoutOrder
 PLL.Padding = UDim.new(0, 15)
 
 local PPD = Instance.new("UIPadding")
 PPD.Name = "PPD"
 PPD.Parent = ScrollTab
 PPD.PaddingLeft = UDim.new(0, 10)
 PPD.PaddingTop = UDim.new(0, 10)
 
 local Page = Instance.new("Frame")
 Page.Name = "Page"
 Page.Parent = Main
 Page.BackgroundColor3 = Color3.fromRGB(90,154,233)
 Page.Position = UDim2.new(0.295726834, 0, 0.144050003, 0)
 Page.Size = UDim2.new(0, 330, 0, 280)
 
 local PCNR = Instance.new("UICorner")
 PCNR.Name = "PCNR"
 PCNR.Parent = Page
 
 local MainPage = Instance.new("Frame")
 MainPage.Name = "MainPage"
 MainPage.Parent = Page
 MainPage.ClipsDescendants = true
 MainPage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainPage.BackgroundTransparency = 1.000
 MainPage.Size = UDim2.new(0, 325, 0, 316)
 
 local PageList = Instance.new("Folder")
 PageList.Name = "PageList"
 PageList.Parent = MainPage
 
 local UIPageLayout = Instance.new("UIPageLayout")
 
 UIPageLayout.Parent = PageList
 UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
 UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
 UIPageLayout.FillDirection = Enum.FillDirection.Vertical
 UIPageLayout.Padding = UDim.new(0, 15)
 UIPageLayout.TweenTime = 0.400
 UIPageLayout.GamepadInputEnabled = false
 UIPageLayout.ScrollWheelInputEnabled = false
 UIPageLayout.TouchInputEnabled = false
 
 MakeDraggable(Top,Main)
 
 UserInputService.InputBegan:Connect(function(input)
  if input.KeyCode == Enum.KeyCode[yoo] then
  if uihide == false then
  uihide = true
  Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
  else
   uihide = false
  Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.5,true)
  end
  end
  end)
 local uitab = {}
 
 function uitab:Tab(text,img)
 local TabButton = Instance.new("TextButton")
 local TabImage = Instance.new("ImageLabel")
 TabButton.Parent = ScrollTab
 TabButton.Name = text.."Server"
 TabButton.Text = text
 TabButton.BackgroundColor3 = Color3.fromRGB(0,255,0)
 TabButton.BackgroundTransparency = 1.000
 TabButton.Size = UDim2.new(0, 130, 0, 23)
 TabButton.Font = Enum.Font.Gotham
 TabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
 TabButton.TextSize = 14.000
 
 local TabFrame = Instance.new("Frame")
 local UICornerFrame = Instance.new("UICorner")
 TabFrame.Name = "TabFrame"
 TabFrame.Parent = TabButton
 TabFrame.ClipsDescendants = true

 TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TabFrame.BackgroundTransparency = 0.800
 TabFrame.Size = UDim2.new(0, 120, 0.1, 23)
 UICornerFrame.CornerRadius = UDim.new(0, 5)
 UICornerFrame.Parent = TabFrame
 
 TabImage.Name = text or "TabImage"
 TabImage.Parent = TabFrame
 TabImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TabImage.BackgroundTransparency = 1.000
 TabImage.Position = UDim2.new(0, 0, 0, 0)
 TabImage.Size = UDim2.new(0, 20, 0, 20)
 TabImage.Image = img or "rbxassetid://8666601749"
 TabImage.ImageColor3 = Color3.fromRGB(224,224,224)
 
 local MainFramePage = Instance.new("ScrollingFrame")
 MainFramePage.Name = text.."_Page"
 MainFramePage.Parent = PageList
 MainFramePage.Active = true
 MainFramePage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainFramePage.BackgroundTransparency = 1.000
 MainFramePage.BorderSizePixel = 0
 MainFramePage.Size = UDim2.new(0, 400, 0, 245)
 MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
 MainFramePage.ScrollBarThickness = 0
 
 local UIPadding = Instance.new("UIPadding")
 local UIListLayout = Instance.new("UIListLayout")
 
 UIPadding.Parent = MainFramePage
 UIPadding.PaddingLeft = UDim.new(0, 10)
 UIPadding.PaddingTop = UDim.new(0, 10)
 
 UIListLayout.Padding = UDim.new(0,15)
 UIListLayout.Parent = MainFramePage
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
 
 
 TabButton.MouseButton1Click:Connect(function()
  for i,v in next, ScrollTab:GetChildren() do
  if v:IsA("TextButton") then
  TweenService:Create(
   v,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end
  TweenService:Create(
   TabButton,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end
  for i,v in next, PageList:GetChildren() do
  currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
  if v.Name == currentpage then
  UIPageLayout:JumpTo(v)
  end
  end
  end)
 
 if abc == false then
 for i,v in next, ScrollTab:GetChildren() do
 if v:IsA("TextButton") then
 TweenService:Create(
  v,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0.5
  }
 ):Play()
 end
 TweenService:Create(
  TabButton,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0
  }
 ):Play()
 end
 UIPageLayout:JumpToIndex(1)
 abc = true
 end
 
 game:GetService("RunService").Stepped:Connect(function()
  pcall(function()
   MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
   ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
   end)
  end)
 
 local main = {}
 function main:Button(text,callback)
 local Button = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local TextBtn = Instance.new("TextButton")
 local UICorner_2 = Instance.new("UICorner")
 local Black = Instance.new("Frame")
 local UICorner_3 = Instance.new("UICorner")
 
 Button.Name = "Button"
 Button.Parent = MainFramePage
 Button.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Button.BackgroundTransparency = 1
 Button.Size = UDim2.new(0, 310, 0, 31)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Button
 
 TextBtn.Name = "TextBtn"
 TextBtn.Parent = Button
 TextBtn.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TextBtn.Position = UDim2.new(0, 1, 0, 1)
 TextBtn.Size = UDim2.new(0, 308, 0, 29)
 TextBtn.AutoButtonColor = false
 TextBtn.Font = Enum.Font.Gotham
 TextBtn.Text = text
 TextBtn.TextColor3 = Color3.fromRGB(0,0,0)
 TextBtn.TextSize = 13.000
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBtn
 
 Black.Name = "Black"
 Black.Parent = Button
 Black.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Black.BackgroundTransparency = 1.000
 Black.BorderSizePixel = 0
 Black.Position = UDim2.new(0, 1, 0, 1)
 Black.Size = UDim2.new(0, 310, 0, 29)
 
 UICorner_3.CornerRadius = UDim.new(0, 5)
 UICorner_3.Parent = Black
 
 
 
 TextBtn.MouseEnter:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 0.7
   }
  ):Play()
  end)
 TextBtn.MouseLeave:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 1
   }
  ):Play()
  end)
 TextBtn.MouseButton1Click:Connect(function()
  TextBtn.TextSize = 0
  TweenService:Create(
   TextBtn,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextSize = 15
   }
  ):Play()
  callback()
  end)
 end
 function main:Toggle(TogInfo,default,callback)
 local toggle = false
 local CheckFrame = Instance.new("Frame")
 local CheckFrame2 = Instance.new("Frame")
 local UIStroke = Instance.new("UIStroke")
 local UIListLayout = Instance.new("UIListLayout")
 local UICorner = Instance.new("UICorner")
 local Space = Instance.new("TextLabel")
 local Title = Instance.new("TextLabel")
 local ImageButton = Instance.new("ImageButton")
 

 CheckFrame.Name = TogInfo or "CheckFrame"
 CheckFrame.Parent = MainFramePage
 CheckFrame.BackgroundColor3 = Color3.fromRGB(224,224,224)
 CheckFrame.BackgroundTransparency = 1.000
 CheckFrame.BorderSizePixel = 0
 CheckFrame.Size = UDim2.new(0, 38, 0, 30)
 
 CheckFrame2.Name = "CheckFrame2"
 CheckFrame2.Parent = CheckFrame
 CheckFrame2.BackgroundColor3 = Color3.fromRGB(224,224,224)
 CheckFrame2.BorderSizePixel = 0
 CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
 CheckFrame2.Size = UDim2.new(0, 308, 0, 30)
 
 UIStroke.Name = "UIStroke"
 UIStroke.Parent = CheckFrame2
 UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 UIStroke.Color = Color3.fromRGB(224,224,224)
 UIStroke.LineJoinMode = Enum.LineJoinMode.Round
 UIStroke.Thickness = 1
 UIStroke.Transparency = 0
 UIStroke.Enabled = true
 UIStroke.Archivable = true
 
 UICorner.Parent = CheckFrame2
 UICorner.CornerRadius = UDim.new(0, 3)
 
 Space.Name = "Space"
 Space.Parent = CheckFrame2
 Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Space.BackgroundTransparency = 1.000
 Space.Position = UDim2.new(0, 30, 0, 0)
 Space.Size = UDim2.new(0, 15, 0, 30)
 Space.Font = Enum.Font.Gotham
 Space.Text = ""
 Space.TextSize = 13.000
 Space.TextXAlignment = Enum.TextXAlignment.Center
 
 Title.Name = "Title"
 Title.Parent = CheckFrame2
 Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Title.BackgroundTransparency = 1.000
 Title.Position = UDim2.new(0, 50, 0, 0)
 Title.Size = UDim2.new(0, 280, 0, 30)
 Title.Font = Enum.Font.Gotham
 Title.Text = TogInfo or "checkBox Title"
 Title.TextColor3 = Color3.fromRGB(0,0,0)
 Title.TextSize = 13.000
 Title.TextXAlignment = Enum.TextXAlignment.Left
 
 ImageButton.Name = "ImageButton"
 ImageButton.Parent = CheckFrame2
 ImageButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ImageButton.BackgroundTransparency = 1.000
 ImageButton.Position = UDim2.new(0, 280, 0, 4)
 ImageButton.Size = UDim2.new(0, 23, 0, 23)
 ImageButton.ZIndex = 2
 ImageButton.Image = "rbxassetid://3926311105"
 ImageButton.ImageColor3 = Color3.fromRGB(0,0,0)
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
 ImageButton.ImageRectSize = Vector2.new(48, 48)
 

 
 if default == true then
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(0,0,0)}
 ):Play()
 toggle = not toggle
 pcall(callback, toggle)
 end
 
 ImageButton.MouseButton1Click:Connect(function()
  if toggle == false then
  game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(0,0,0)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(4, 836)
  else
   game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(0,0,0)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(940, 784)
  end
  toggle = not toggle
  pcall(callback, toggle)
  end)
 end
 
 function main:Dropdown(text,option,callback)
 local isdropping = false
 local Dropdown = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local DropTitle = Instance.new("TextLabel")
 local DropScroll = Instance.new("ScrollingFrame")
 local UIListLayout = Instance.new("UIListLayout")
 local UIPadding = Instance.new("UIPadding")
 local DropButton = Instance.new("TextButton")
 local DropImage = Instance.new("ImageLabel")
 local posto1 = Instance.new("UIStroke")
 
 Dropdown.Name = "Dropdown"
 Dropdown.Parent = MainFramePage
 Dropdown.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Dropdown.ClipsDescendants = true
 Dropdown.Size = UDim2.new(0, 310, 0, 31)
 
 posto1.Name = "posto"
 posto1.Parent = Dropdown
 posto1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto1.Color = Color3.fromRGB(224,224,224)
 posto1.LineJoinMode = Enum.LineJoinMode.Round
 posto1.Thickness = 1
 posto1.Transparency = 0
 posto1.Enabled = true
 posto1.Archivable = true
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Dropdown
 
 DropTitle.Name = "DropTitle"
 DropTitle.Parent = Dropdown
 DropTitle.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropTitle.BackgroundTransparency = 1.000
 DropTitle.Size = UDim2.new(0, 310, 0, 31)
 DropTitle.Font = Enum.Font.Gotham
 DropTitle.Text = text.. " : "
 DropTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
 DropTitle.TextSize = 13.000
 
 DropScroll.Name = "DropScroll"
 DropScroll.Parent = DropTitle
 DropScroll.Active = true
 DropScroll.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropScroll.BackgroundTransparency = 1.000
 DropScroll.BorderSizePixel = 0
 DropScroll.Position = UDim2.new(0, 0, 0, 31)
 DropScroll.Size = UDim2.new(0, 310, 0, 100)
 DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
 DropScroll.ScrollBarThickness = 3
 
 UIListLayout.Parent = DropScroll
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout.Padding = UDim.new(0, 5)
 
 UIPadding.Parent = DropScroll
 UIPadding.PaddingLeft = UDim.new(0, 5)
 UIPadding.PaddingTop = UDim.new(0, 5)
 
 DropImage.Name = "DropImage"
 DropImage.Parent = Dropdown
 DropImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropImage.BackgroundTransparency = 1.000
 DropImage.Position = UDim2.new(0, 280, 0, 6)
 DropImage.Rotation = 180.000
 DropImage.Size = UDim2.new(0, 20, 0, 20)
 DropImage.ImageColor3 = Color3.fromRGB(0,0,0)
 DropImage.Image = "rbxassetid://6031090990"
 
 DropButton.Name = "DropButton"
 DropButton.Parent = Dropdown
 DropButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropButton.BackgroundTransparency = 1.000
 DropButton.Size = UDim2.new(0, 310, 0, 31)
 DropButton.Font = Enum.Font.SourceSans
 DropButton.Text = ""
 DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
 DropButton.TextSize = 14.000
 
 for i,v in next,option do
 local Item = Instance.new("TextButton")
 
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(v)
 Item.TextColor3 = Color3.fromRGB(0,0,0)
 Item.TextSize = 13.000
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 
 DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
 
 DropButton.MouseButton1Click:Connect(function()
  if isdropping == false then
  isdropping = true
  Dropdown:TweenSize(UDim2.new(0,310,0,131),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 0
   }
  ):Play()
  else
   isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  end
  end)
 
 local dropfunc = {}
 function dropfunc:Add(t)
 local Item = Instance.new("TextButton")
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(t)
 Item.TextColor3 = Color3.fromRGB(0,0,0)
 Item.TextSize = 13.000
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 function dropfunc:Clear()
 DropTitle.Text = tostring(text).." : "
 isdropping = false
 Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
 TweenService:Create(
  DropImage,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   Rotation = 180
  }
 ):Play()
 for i,v in next, DropScroll:GetChildren() do
 if v:IsA("TextButton") then
 v:Destroy()
 end
 end
 end
 return dropfunc
 end

 function main:Label(text)
 local Label = Instance.new("TextLabel")
 local PaddingLabel = Instance.new("UIPadding")
 local labelfunc = {}
 
 Label.Name = "Label"
 Label.Parent = MainFramePage
 Label.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Label.BackgroundTransparency = 1.000
 Label.Size = UDim2.new(0, 325, 0, 20)
 Label.Font = Enum.Font.Gotham
 Label.TextColor3 = Color3.fromRGB(0,0,0)
 Label.TextSize = 13.000
 Label.Text = text
 Label.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel.PaddingLeft = UDim.new(0,15)
 PaddingLabel.Parent = Label
 PaddingLabel.Name = "PaddingLabel"
 
 function labelfunc:Set(newtext)
 Label.Text = newtext
 end
 return labelfunc
 end
 
function main:Seperator(text)
 local Seperator = Instance.new("Frame")
 local Sep1 = Instance.new("Frame")
 local Sep2 = Instance.new("TextLabel")
 local Sep3 = Instance.new("Frame")
 
 Seperator.Name = "Seperator"
 Seperator.Parent = MainFramePage
 Seperator.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Seperator.BackgroundTransparency = 1.000
 Seperator.Size = UDim2.new(0, 290, 0, 20)
 
 Sep1.Name = "Sep1"
 Sep1.Parent = Seperator
 Sep1.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Sep1.BorderSizePixel = 0
 Sep1.Position = UDim2.new(0, 0, 0, 10)
 Sep1.Size = UDim2.new(0, 80, 0, 2)
 
 Sep2.Name = "Sep2"
 Sep2.Parent = Seperator
 Sep2.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Sep2.BackgroundTransparency = 1.000
 Sep2.Position = UDim2.new(0, 120, 0, 0)
 Sep2.Size = UDim2.new(0, 80, 0, 20)
 Sep2.Font = Enum.Font.Gotham
 Sep2.Text = text
 Sep2.TextColor3 = Color3.fromRGB(0,0,0)
 Sep2.TextSize = 14.000
 
 Sep3.Name = "Sep3"
 Sep3.Parent = Seperator
 Sep3.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Sep3.BorderSizePixel = 0
 Sep3.Position = UDim2.new(0, 240, 0, 10)
 Sep3.Size = UDim2.new(0, 80, 0, 2)
 end
 
 
 function main:Line()
 local Linee = Instance.new("Frame")
 local Line = Instance.new("Frame")
 
 Linee.Name = "Linee"
 Linee.Parent = MainFramePage
 Linee.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Linee.BackgroundTransparency = 1.000
 Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
 Linee.Size = UDim2.new(0, 310, 0, 20)
 
 Line.Name = "Line"
 Line.Parent = Linee
 Line.BackgroundColor3 = Color3.fromRGB(0,0,0)
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0, 10)
 Line.Size = UDim2.new(0, 325, 0, 2)
 end
 return main
 end
 return uitab
 end

if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end

        function CheckQuestLevel()
			local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
			if World1 then
				if Lv == 1 or Lv <= 9 then
					NameQuest = "BanditQuest1"
					LevelQuest = 1
					NameMon = "Bandit"
					CFrameQuest = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
					CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
				elseif Lv == 10 or Lv <= 14 then
					NameQuest = "JungleQuest"
					LevelQuest = 1
					NameMon = "Monkey"
					CFrameQuest = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
					CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
				elseif Lv == 15 or Lv <= 29 then
					NameQuest = "JungleQuest"
					LevelQuest = 2
					NameMon = "Gorilla"
					CFrameQuest = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
					CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
				elseif Lv == 30 or Lv <= 39 then
					NameQuest = "BuggyQuest1"
					LevelQuest = 1
					NameMon = "Pirate"
					CFrameQuest = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
					CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
				elseif Lv == 40 or Lv <= 59 then
					NameQuest = "BuggyQuest1"
					LevelQuest = 2
					NameMon = "Brute"
					CFrameQuest = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
					CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
				elseif Lv == 60 or Lv <= 74 then
					NameQuest = "DesertQuest"
					LevelQuest = 1
					NameMon = "Desert Bandit"
					CFrameQuest = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
					CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
				elseif Lv == 75 or Lv <= 89 then
					NameQuest = "DesertQuest"
					LevelQuest = 2
					NameMon = "Desert Officer"
					CFrameQuest = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
					CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
				elseif Lv == 90 or Lv <= 99 then
					NameQuest = "SnowQuest"
					LevelQuest = 1
					NameMon = "Snow Bandit"
					CFrameQuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
				elseif Lv == 100 or Lv <= 119 then
					NameQuest = "SnowQuest"
					LevelQuest = 2
					NameMon = "Snowman"
					CFrameQuest = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
					CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
				elseif Lv == 120 or Lv <= 149 then
					NameQuest = "MarineQuest2"
					LevelQuest = 1
					NameMon = "Chief Petty Officer"
					CFrameQuest = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
					CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
				elseif Lv == 150 or Lv <= 174 then
					NameQuest = "SkyQuest"
					LevelQuest = 1
					NameMon = "Sky Bandit"
					CFrameQuest = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
				elseif Lv == 175 or Lv <= 249 then
					NameQuest = "SkyQuest"
					LevelQuest = 2
					NameMon = "Dark Master"
					CFrameQuest = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
					CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
				elseif Lv == 250 or Lv <= 274 then
					NameQuest = "ColosseumQuest"
					LevelQuest = 1
					NameMon = "Toga Warrior"
					CFrameQuest = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
				elseif Lv == 275 or Lv <= 299 then
					NameQuest = "ColosseumQuest"
					LevelQuest = 2
					NameMon = "Gladiator"
					CFrameQuest = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
				elseif Lv == 300 or Lv <= 329 then
					NameQuest = "MagmaQuest"
					LevelQuest = 1
					NameMon = "Military Soldier"
					CFrameQuest = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
				elseif Lv == 330 or Lv <= 374 then
					NameQuest = "MagmaQuest"
					LevelQuest = 2
					NameMon = "Military Spy"
					CFrameQuest = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
					CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
				elseif Lv == 375 or Lv <= 399 then
					NameQuest = "FishmanQuest"
					LevelQuest = 1
					NameMon = "Fishman Warrior"
					CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
					CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
					if Dis(CFrameMon.Position) > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 400 or Lv <= 449 then
					NameQuest = "FishmanQuest"
					LevelQuest = 2
					NameMon = "Fishman Commando"
					CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
					CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
					if Dis(CFrameMon.Position) > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 450 or Lv <= 474 then
					NameQuest = "SkyExp1Quest"
					LevelQuest = 1
					NameMon = "God's Guard"
					CFrameQuest = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
					CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
					if Dis(CFrameMon.Position) > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
				elseif Lv == 475 or Lv <= 524 then
					NameQuest = "SkyExp1Quest"
					LevelQuest = 2
					NameMon = "Shanda"
					CFrameQuest = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
					CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
					if Dis(CFrameMon.Position) > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
				elseif Lv == 525 or Lv <= 549 then
					NameQuest = "SkyExp2Quest"
					LevelQuest = 1
					NameMon = "Royal Squad"
					CFrameQuest = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
					CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
				elseif Lv == 550 or Lv <= 624 then
					NameQuest = "SkyExp2Quest"
					LevelQuest = 2
					NameMon = "Royal Soldier"
					CFrameQuest = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
					CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
				elseif Lv == 625 or Lv <= 649 then
					NameQuest = "FountainQuest"
					LevelQuest = 1
					NameMon = "Galley Pirate"
					CFrameQuest = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
					CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
				elseif Lv >= 650 then
					NameQuest = "FountainQuest"
					LevelQuest = 2
					NameMon = "Galley Captain"
					CFrameQuest = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
					CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
				end
			end
			if World2 then
				if Lv == 700 or Lv <= 724 then
					NameQuest = "Area1Quest"
					LevelQuest = 1
					NameMon = "Raider"
					CFrameQuest = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
					CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
				elseif Lv == 725 or Lv <= 774 then
					NameQuest = "Area1Quest"
					LevelQuest = 2
					NameMon = "Mercenary"
					CFrameQuest = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
					CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
				elseif Lv == 775 or Lv <= 799 then
					NameQuest = "Area2Quest"
					LevelQuest = 1
					NameMon = "Swan Pirate"
					CFrameQuest = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
					CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
				elseif Lv == 800 or Lv <= 874 then
					NameQuest = "Area2Quest"
					LevelQuest = 2
					NameMon = "Factory Staff"
					CFrameQuest = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
					CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
				elseif Lv == 875 or Lv <= 899 then
					NameQuest = "MarineQuest3"
					LevelQuest = 1
					NameMon = "Marine Lieutenant"
					CFrameQuest = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
					CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
				elseif Lv == 900 or Lv <= 949 then
					NameQuest = "MarineQuest3"
					LevelQuest = 2
					NameMon = "Marine Captain"
					CFrameQuest = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
					CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
				elseif Lv == 950 or Lv <= 974 then
					NameQuest = "ZombieQuest"
					LevelQuest = 1
					NameMon = "Zombie"
					CFrameQuest = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
					CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
				elseif Lv == 975 or Lv <= 999 then
					NameQuest = "ZombieQuest"
					LevelQuest = 2
					NameMon = "Vampire"
					CFrameQuest = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
					CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
				elseif Lv == 1000 or Lv <= 1049 then
					NameQuest = "SnowMountainQuest"
					LevelQuest = 1
					NameMon = "Snow Trooper"
					CFrameQuest = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
					CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
				elseif Lv == 1050 or Lv <= 1099 then
					NameQuest = "SnowMountainQuest"
					LevelQuest = 2
					NameMon = "Winter Warrior"
					CFrameQuest = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
					CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
				elseif Lv == 1100 or Lv <= 1124 then
					NameQuest = "IceSideQuest"
					LevelQuest = 1
					NameMon = "Lab Subordinate"
					CFrameQuest = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
					CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
				elseif Lv == 1125 or Lv <= 1174 then
					NameQuest = "IceSideQuest"
					LevelQuest = 2
					NameMon = "Horned Warrior"
					CFrameQuest = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
					CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
				elseif Lv == 1175 or Lv <= 1199 then
					NameQuest = "FireSideQuest"
					LevelQuest = 1
					NameMon = "Magma Ninja"
					CFrameQuest = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
					CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
				elseif Lv == 1200 or Lv <= 1249 then
					NameQuest = "FireSideQuest"
					LevelQuest = 2
					NameMon = "Lava Pirate"
					CFrameQuest = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
					CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
				elseif Lv == 1250 or Lv <= 1274 then
					NameQuest = "ShipQuest1"
					LevelQuest = 1
					NameMon = "Ship Deckhand"
					CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
					CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
					if Dis(CFrameMon.Position) > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1275 or Lv <= 1299 then
					NameQuest = "ShipQuest1"
					LevelQuest = 2
					NameMon = "Ship Engineer"
					CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
					CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
					if Dis(CFrameMon.Position) > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1300 or Lv <= 1324 then
					NameQuest = "ShipQuest2"
					LevelQuest = 1
					NameMon = "Ship Steward"
					CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
					if Dis(CFrameMon.Position) > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1325 or Lv <= 1349 then
					NameQuest = "ShipQuest2"
					LevelQuest = 2
					NameMon = "Ship Officer"
					CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
					if Dis(CFrameMon.Position) > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1350 or Lv <= 1374 then
					NameQuest = "FrostQuest"
					LevelQuest = 1
					NameMon = "Arctic Warrior"
					CFrameQuest = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
					CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
					if Dis(CFrameMon.Position) > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					end
				elseif Lv == 1375 or Lv <= 1424 then
					NameQuest = "FrostQuest"
					LevelQuest = 2
					NameMon = "Snow Lurker"
					CFrameQuest = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
					CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
				elseif Lv == 1425 or Lv <= 1449 then
					NameQuest = "ForgottenQuest"
					LevelQuest = 1
					NameMon = "Sea Soldier"
					CFrameQuest = CFrame.new(-3053.8515625, 239.64625549316406, -10144.45703125)
					CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
				elseif Lv >= 1450 then
					NameQuest = "ForgottenQuest"
					LevelQuest = 2
					NameMon = "Water Fighter"
					CFrameQuest = CFrame.new(-3053.8515625, 239.64625549316406, -10144.45703125)
					CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
				end
			end
			if World3 then
				if Lv == 1500 or Lv <= 1524 then
					NameQuest = "PiratePortQuest"
					LevelQuest = 1
					NameMon = "Pirate Millionaire"
					CFrameQuest = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
					CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
				elseif Lv == 1525 or Lv <= 1574 then
					NameQuest = "PiratePortQuest"
					LevelQuest = 2
					NameMon = "Pistol Billionaire"
					CFrameQuest = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
					CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
				elseif Lv == 1575 or Lv <= 1599 then
					NameQuest = "AmazonQuest"
					LevelQuest = 1
					NameMon = "Dragon Crew Warrior"
					CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
					CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
				elseif Lv == 1600 or Lv <= 1624 then
					NameQuest = "AmazonQuest"
					LevelQuest = 2
					NameMon = "Dragon Crew Archer"
					CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
					CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
				elseif Lv == 1625 or Lv <= 1649 then
					NameQuest = "AmazonQuest2"
					LevelQuest = 1
					NameMon = "Female Islander"
					CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
					CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
				elseif Lv == 1650 or Lv <= 1699 then
					NameQuest = "AmazonQuest2"
					LevelQuest = 2
					NameMon = "Giant Islander"
					CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
					CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
				elseif Lv == 1700 or Lv <= 1724 then
					NameQuest = "MarineTreeIsland"
					LevelQuest = 1
					NameMon = "Marine Commodore"
					CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
					CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
				elseif Lv == 1725 or Lv <= 1774 then
					NameQuest = "MarineTreeIsland"
					LevelQuest = 2
					NameMon = "Marine Rear Admiral"
					CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
					CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
				elseif Lv == 1775 or Lv <= 1799 then
					NameQuest = "DeepForestIsland3"
					LevelQuest = 1
					NameMon = "Fishman Raider"
					CFrameQuest = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
					CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
				elseif Lv == 1800 or Lv <= 1824 then
					NameQuest = "DeepForestIsland3"
					LevelQuest = 2
					NameMon = "Fishman Captain"
					CFrameQuest = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
					CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
				elseif Lv == 1825 or Lv <= 1849 then
					NameQuest = "DeepForestIsland"
					LevelQuest = 1
					NameMon = "Forest Pirate"
					CFrameQuest = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
					CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
				elseif Lv == 1850 or Lv <= 1899 then
					NameQuest = "DeepForestIsland"
					LevelQuest = 2
					NameMon = "Mythological Pirate"
					CFrameQuest = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
					CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
				elseif Lv >= 1900 and Lv <= 1924 then
					NameQuest = "DeepForestIsland2"
					LevelQuest = 1
					NameMon = "Jungle Pirate"
					CFrameQuest = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
				elseif Lv >= 1925 and Lv <= 1974 then
					NameQuest = "DeepForestIsland2"
					LevelQuest = 2
					NameMon = "Musketeer Pirate"
					CFrameQuest = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
				elseif Lv >= 1975 and Lv <= 1999 then
					NameQuest = "DeepForestIsland2"
					LevelQuest = 2
					NameMon = "Musketeer Pirate"
					CFrameQuest = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
					CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
				elseif Lv >= 2000 and Lv <= 2024 then
					NameQuest = "HauntedQuest1"
					LevelQuest = 2
					NameMon = "Living Zombie"
					CFrameQuest = CFrame.new(-9480.80762, 142.130661, 5566.37305)
					CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977)
				elseif Lv >= 2025 and Lv <= 2049 then
					NameQuest = "HauntedQuest1"
					LevelQuest = 1
					NameMon = "Demonic Soul"
					CFrameQuest = CFrame.new(-9515.39551, 172.266037, 6078.89746)
					CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688)
				elseif Lv >= 2050 and Lv <= 2074 then
					NameQuest = "HauntedQuest2"
					LevelQuest = 2
					NameMon = "Posessed Mummy"
					CFrameQuest = CFrame.new(-9515.39551, 172.266037, 6078.89746)
					CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584)
				elseif Lv >= 2075 and Lv <= 2099 then
					NameQuest = "NutsIslandQuest"
					LevelQuest = 1
					NameMon = "Peanut Scout"
					CFrameQuest = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
				elseif Lv >= 2100 and Lv <= 2124 then
					NameQuest = "NutsIslandQuest"
					LevelQuest = 2
					NameMon = "Peanut President"
					CFrameQuest = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
				elseif Lv >= 2125 and Lv <= 2149 then
					NameQuest = "IceCreamIslandQuest"
					LevelQuest = 1
					NameMon = "Ice Cream Chef"
					CFrameQuest = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
					CFrameMon = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
				elseif Lv >= 2150 and Lv <= 2200 then
					NameQuest = "IceCreamIslandQuest"
					LevelQuest = 2
					NameMon = "Ice Cream Commander"
					CFrameQuest = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
					CFrameMon = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
				elseif Lv >= 2200 and Lv <= 2250 then
					NameQuest = "CakeQuest1"
					LevelQuest = 1
					NameMon = "Cookie Crafter"
					CFrameQuest = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
					CFrameMon = CFrame.new(-2358.5791015625, 36.85615539550781, -12111.052734375)
				elseif Lv >= 2225 and Lv <= 2299 then 
					NameQuest = "CakeQuest1"
					LevelQuest = 2
					NameMon = "Cake Guard"
					CFrameMon = CFrame.new(-1430.4925537109375, 36.85621643066406, -12322.162109375)
					CFrameQuest = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
				elseif Lv >= 2300 and Lv <= 2324 then 
					NameQuest = "ChocQuest1"
					LevelQuest = 1
					NameMon = "Cocoa Warrior"
					CFrameQuest = CFrame.new(232.46937561035156, 30.263864517211914, -12199.86328125)
					CFrameMon = CFrame.new(-16.506715774536133, 70.69639587402344, -12338.564453125)
                elseif Lv >= 2325 and Lv <= 2349 then 
					NameQuest = "ChocQuest1"
					LevelQuest = 2
					NameMon = "Chocolate Bar Battler"
					CFrameQuest = CFrame.new(232.46937561035156, 30.263864517211914, -12199.86328125)
					CFrameMon = CFrame.new(780.2754516601562, 75.43675994873047, -12732.5732421875)
                elseif Lv >= 2350 and Lv <= 2374 then 
					NameQuest = "ChocQuest2"
					LevelQuest = 1
					NameMon = "Sweet Thief"
					CFrameQuest = CFrame.new(151.9495391845703, 30.66791343688965, -12773.796875)
					CFrameMon = CFrame.new(69.60169219970703, 77.22183990478516, -12631.5205078125)
                elseif Lv >= 2375 and Lv <= 2399 then 
					NameQuest = "ChocQuest2"
					LevelQuest = 2
					NameMon = "Candy Rebel"
					CFrameQuest = CFrame.new(151.9495391845703, 30.66791343688965, -12773.796875)
					CFrameMon = CFrame.new(32.20514678955078, 77.48395538330078, -12900.884765625)
                elseif Lv >= 2400 and Lv <= 2424 then 
					NameQuest = "CandyQuest1"
					LevelQuest = 1
					NameMon = "Candy Pirate"
					CFrameQuest = CFrame.new(-1148.7237548828125, 20.353158950805664, -14445.751953125)
					CFrameMon = CFrame.new(-1353.9947509765625, 14.107321739196777, -14548.1103515625)
				elseif Lv >= 2425 and Lv <= 2449 then 
					NameQuest = "CandyQuest1"
					LevelQuest = 2
					NameMon = "Snow Demon"
					CFrameQuest = CFrame.new(-1148.7237548828125, 20.353158950805664, -14445.751953125)
					CFrameMon = CFrame.new(-883.241455, 40.9553833, -14538.4951, -0.28144443, -1.18274158e-07, 0.959577501, 1.83865634e-08, 1, 1.28649276e-07, -0.959577501, 5.38509575e-08, -0.28144443)
				elseif Lv >= 2450 and Lv <= 2524 then 
					NameQuest = "TikiQuest1"
					LevelQuest = 1
					NameMon = "Isle Outlaw"
					CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
					CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
                elseif Lv >= 2525 and Lv <= 2549 then 
					NameQuest = "TikiQuest1"
					LevelQuest = 2
					NameMon = "Island Boy"
					CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
					CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
			    elseif Lv >= 2500 and Lv <= 2524 then
			        NameQuest = "TikiQuest2"
					LevelQuest = 1
					NameMon = "Sun-kissed Warrior"
					CFrameQuest = CFrame.new(-16538.828125, 55.68632888793945, 1051.5789794921875)
					CFrameMon = CFrame.new(-16600.66796875, 130.38734436035156, 1086.5809326171875)
			    elseif Lv >= 2525 then
			        NameQuest = "TikiQuest2"
					LevelQuest = 2
					NameMon = "Isle Champion"
					CFrameQuest = CFrame.new(-16538.828125, 55.68632888793945, 1051.5789794921875)
					CFrameMon = CFrame.new(-16600.66796875, 130.38734436035156, 1086.5809326171875)
				end
			end
		end

        function CheckBossQuest(SelectedBoss)
			if SelectedBoss == "Saber Expert" then
			    LevelBoss = 200
			    CFrameQuestBoss = nil
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
			elseif SelectedBoss == "The Saw" then
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854)
			elseif SelectedBoss == "Greybeard" then
			    LevelBoss = 0
			    CFrameBoss = nil
			    CFrameQuestBoss = nil
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif SelectedBoss == "The Gorilla King" then
			    LevelBoss = 25
				NameQuestBoss = "JungleQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			elseif SelectedBoss == "Bobby" then
			    LevelBoss = 55
				NameQuestBoss = "BuggyQuest1"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
			elseif SelectedBoss == "Yeti" then
			    LevelBoss = 110
				NameQuestBoss = "SnowQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
			elseif SelectedBoss == "Mob Leader" then
			    CFrameQuestBoss = nil
			    CFrameBoss = nil
			    LevelBoss = 0
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif SelectedBoss == "Vice Admiral" then
			    LevelBoss = 130
				NameQuestBoss = "MarineQuest2"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
			elseif SelectedBoss == "Warden" then
				NameQuestBoss = "ImpelQuest"
				LevelBoss = 220
				LevelQuestBoss = 1
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Chief Warden" then
				NameQuestBoss = "ImpelQuest"
				LevelBoss = 230
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Swan" then
				NameQuestBoss = "ImpelQuest"
				LevelBoss = 240
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Magma Admiral" then
				NameQuestBoss = "MagmaQuest"
				LevelQuestBoss = 3
				LevelBoss = 350
				CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
			elseif SelectedBoss == "Fishman Lord" then
				NameQuestBoss = "FishmanQuest"
				LevelQuestBoss = 3
				LevelBoss = 420
				CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				if (game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") or game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Lord")) and Dis(CFrameQuestBoss.Position) > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif SelectedBoss == "Wysper" then
				NameQuestBoss = "SkyExp1Quest"
				LevelQuestBoss = 3
				LevelBoss = 500
				CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
				if (game:GetService("Workspace").Enemies:FindFirstChild("Wysper") or game:GetService("ReplicatedStorage"):FindFirstChild("Wysper")) and Dis(CFrameQuestBoss.Position) > 1000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
			elseif SelectedBoss == "Thunder God" then
				NameQuestBoss = "SkyExp2Quest"
				LevelQuestBoss = 3
				LevelBoss = 575
				CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				if (game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God")) and Dis(CFrameQuestBoss.Position) > 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
			elseif SelectedBoss == "Cyborg" then
				NameQuestBoss = "FountainQuest"
				LevelQuestBoss = 3
				LevelBoss = 675
				CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			elseif SelectedBoss == "Diamond" then
				NameQuestBoss = "Area1Quest"
				LevelQuestBoss = 3
				LevelBoss = 750
				CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
			elseif SelectedBoss == "Jeremy" then
				NameQuestBoss = "Area2Quest"
				LevelQuestBoss = 3
				LevelBoss = 850
				CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
			elseif SelectedBoss == "Fajita" then
				NameQuestBoss = "MarineQuest3"
				LevelQuestBoss = 3
				LevelBoss = 925
				CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
			elseif SelectedBoss == "Don Swan" then
			    CFrameBoss = nil
			    CFrameQuestBoss = nil
			    LevelBoss = 0
				if CheckBossHit("Don Swan") and (game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan")) and Dis(Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) > 300 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
		        end
			elseif SelectedBoss == "Smoke Admiral" then
				NameQuestBoss = "IceSideQuest"
				LevelQuestBoss = 3
				LevelBoss = 1150
				CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
			elseif SelectedBoss == "Cursed Captain" then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") or game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain")) and Dis(Vector3.new(886.28179931641, 40.47790145874, 32800.83203125)) > 20000 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		        end
		        CFrameBoss = nil
		        LevelBoss = 0
			    CFrameQuestBoss = nil
			elseif SelectedBoss == "Darkbeard" then
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777)
			    CFrameQuestBoss = nil
			    LevelBoss = 0
			elseif SelectedBoss == "Awakened Ice Admiral" then
				NameQuestBoss = "FrostQuest"
				LevelQuestBoss = 3
				LevelBoss = 1400
				CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521)
			elseif SelectedBoss == "Tide Keeper" then
				NameQuestBoss = "ForgottenQuest"             
				LevelQuestBoss = 3
				LevelBoss = 1475
				CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072)
			elseif SelectedBoss == "Stone" then
				NameQuestBoss = "PiratePortQuest"             
				LevelQuestBoss = 3
				LevelBoss = 1550
				CFrameQuestBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
			elseif SelectedBoss == "Island Empress" then
				NameQuestBoss = "AmazonQuest2"             
				LevelQuestBoss = 3
				LevelBoss = 1675
				CFrameQuestBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
				if (game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") or game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress")) and Dis(Vector3.new(5742.65087890625, 610.9649658203125, -269.2676696777344)) > 1000 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5742.65087890625, 610.9649658203125, -269.2676696777344))
		        end
			elseif SelectedBoss == "Kilo Admiral" then
				NameQuestBoss = "MarineTreeIsland"             
				LevelQuestBoss = 3
				LevelBoss = 1750
				CFrameQuestBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
			elseif SelectedBoss == "Captain Elephant" then
				NameQuestBoss = "DeepForestIsland"             
				LevelQuestBoss = 3
				LevelBoss = 1875
				CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
				if (game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") or game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant")) and Dis(Vector3.new(-13221, 325, -8405)) > 1000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                end
			elseif SelectedBoss == "Beautiful Pirate" then
				NameQuestBoss = "DeepForestIsland2"             
				LevelQuestBoss = 3
				LevelBoss = 1950
				CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
			elseif SelectedBoss == "rip_indra True Form" then
			    CFrameBoss = nil
			    CFrameQuestBoss = nil
			    LevelBoss = 0
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")) and Dis(Vector3.new(-5121.33056640625, 314.5412902832031, -2961.544189453125)) > 1000 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5093.7294921875, 314.5412902832031, -3131.57080078125))
		        end
			elseif SelectedBoss == "Longma" then
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
			    CFrameQuestBoss = nil
				if CheckBossHit("Longma") and (game:GetService("Workspace").Enemies:FindFirstChild("Longma") or game:GetService("ReplicatedStorage"):FindFirstChild("Longma")) and Dis(Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875)) > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				end
				LevelBoss = 0
			elseif SelectedBoss == "Soul Reaper" then
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
			elseif SelectedBoss == "Cake Queen" then
				NameQuestBoss = "IceCreamIslandQuest"             
				LevelQuestBoss = 3
				LevelBoss = 2175
				CFrameQuestBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994)
				CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896)
			end
		end

function isnil(thing)
    return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game:GetService("Players").LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
    end
end

function UpdateSeaBeastsESP() 
    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
        pcall(function()
            if SeaBeastsESP then 
                if v.Name ~= "SeaBeast" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function UpdateChestEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if string.find(v.Name,"Chest") then
                if ChestESP then
                    if string.find(v.Name,"Chest") then
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest3" then
                                name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                        v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end
        end)
    end
end
    
function UpdateBfEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp'..Number) then
                    v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end)
    end
end
    
function UpdateFlowerEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then 
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                        v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end   
        end)
    end
end

function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game:GetService("Players").LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end

function TP(Pos)
    if World1 then
        if Pos.Position.Y <= 4500 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y > 4500 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif Pos.Position.X <= 50000 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X > 50000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.6884765625, 6.736950397491455, -1926.214111328125))
		end
    elseif World2 then
        if Pos.Position.Z <= 25000 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z > 25000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
    end
    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == true then
        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Dis(Pos.Position)/300, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
    end)
    tween:Play()
    if Dis(Pos) <= 300 then
        tween:Cancel()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween then
        tween:Cancel()
    end
end

function GetInventory(WeaponName)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	    if type(v) == "table" then
		    if v.Name == WeaponName then
			    return true
		    end
	    end
    end
	return false
end

function GetMaterial(MaterialName)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	    if type(v) == "table" then
	        if v.Type == "Material" then
		        if v.Name == MaterialName then
			        return v.Count
			    end
		    end
	    end
    end
	return 0
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        Tool = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
    end
end

function Collide(Target)
    Target.HumanoidRootPart.CFrame = CFrame.new(Target.HumanoidRootPart.Position)
    Target.Humanoid.WalkSpeed = 0
end
function Dis(Pos)
    if typeof(Pos) == "CFrame" then
       Pos = Pos.Position
    end
    return (Pos - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
end

function Look(Target)
    game:GetService("Workspace").Camera.CFrame = CFrame.new(game:GetService("Workspace").Camera.CFrame.Position, Target.Position)
end

    local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local cooldownfastattack = tick()
	require(game.ReplicatedStorage.Util.CameraShaker):Stop()
	
	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end
	
	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
					end
				end
			end
		end
	end
	
	local plr = game.Players.LocalPlayer
	local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]

	function GetCurrentBlade() 
		local p13 = CbFw2.activeController
		local ret = p13.blades[1]
		if not ret then return end
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		return ret
	end

	function AttackNoCD()
        local AC = CbFw2.activeController
        for i = 1, 1 do 
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                    end
                end)
            end
        end
	end

	local YaY = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	spawn(function()
		while task.wait() do
			for i,CombatFrameworkR in pairs(debug.getupvalues(YaY)) do
				if i == 2 then
					pcall(function()
						CameraShakerR:Stop()
						CombatFrameworkR.activeController.timeToNextAttack = 0
						CombatFrameworkR.activeController.attacking = false
						CombatFrameworkR.activeController.hitboxMagnitude = 80
						CombatFrameworkR.activeController.blocking = false
						CombatFrameworkR.activeController.focusStart = 0
						CombatFrameworkR.activeController.humanoid.AutoRotate = true
					end)
				end
			end
		end
	end)
	
	coroutine.wrap(function()
	    while task.wait() do
	        local ac = CombatFrameworkR.activeController
	        if ac and ac.equipped then
	            if SuperAttack then
	                AttackNoCD()
	                if tick() - cooldownfastattack > 1 then task.wait(0.5) cooldownfastattack = tick() end
	            elseif FastAttack then
	                AttackFunction()
	    	        if tick() - cooldownfastattack > 3.5 then task.wait(DelayAttack) cooldownfastattack = tick() end
	    	    end
	        end
    	end
    end)()
    

local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if DisableAttackAnimation then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.7)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)
    

local Library = Update:Window("Huy Hub ")
local Main = Library:Tab("Main","")
local Setting = Library:Tab("Setting","")
local Weapon = Library:Tab("Item","")
local Race = Library:Tab("Race V4","")
local Sea = Library:Tab("Sea Event","")
local Stat = Library:Tab("Stats","")
local P = Library:Tab("Combat","")
local Tele = Library:Tab("Teleport","")
local Raid = Library:Tab("Raid","")
local DevilFruit = Library:Tab("Fruit + ESP","")
local Shop = Library:Tab("Shop","")
local Misc = Library:Tab("Misc","")

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if Magnet and v.Name == TargetMagnet.Name then
				    v.HumanoidRootPart.CFrame = TargetMagnet.HumanoidRootPart.CFrame
				    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
	    end)
    end)
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
            if AutoUpgradeRaceV3 or FarmMiniTusk or FarmDemonicWisp or FarmVampireFang or FarmRadioActive or FarmMysticDroplet or AutoSaber or FarmAngelWings or FarmScrapMetalLeather or FarmMagmaOre or AutoFarmFishTail or AutoTrial or TeleportHighestPoint or AutoTrain or TeleportRaceDoor or AutoUpgradeRaceV3 or AutoRainbowHaki or AutoFarmEctoplasm or AutoFarmFishTail or AutoFarmMastery or AutoSealedKing or AutoDoughKing or AutoBuddySword or AutoCavanderSword or AutoTwinHook or AutoFarmCocoa or AutoEliteHunter or AutoElectricClaw or AutoHallowScythe or AutoFarmChest or AutoBringFruit or NoClip or AutoFarmLevel or AutoFarmNearest or AutoSecondSea or AutoThirdSea or AutoFarmBoss or AutoFarmAllBoss or TeleportMirage or AutoCakePrince or AutoFarmBone or FarmDragonScale or AutoPirateRaid or TeleportKitsuneIsland or AutoSeaEvent or AutoDragonTalon or AutoFactory or AutoDarkBeard or AutoUpgradeRaceV2 or AutoRengoku or AutoBartiloQuest or AutoDonSwan or AutoNextIsland or TeleportIsland then
		        GetWeapon = true
		        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	                if v:IsA("BasePart") then
				    	v.CanCollide = false
			    	end
		    	end
		    else
		        GetWeapon = false
		    end
		end)
	end)
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
		    if AutoUpgradeRaceV3 or FarmMiniTusk or FarmDemonicWisp or FarmVampireFang or FarmRadioActive or FarmMysticDroplet or AutoSaber or FarmAngelWings or FarmScrapMetalLeather or FarmMagmaOre or AutoFarmFishTail or AutoTrial or TeleportHighestPoint or AutoTrain or TeleportRaceDoor or AutoUpgradeRaceV3 or AutoRainbowHaki or AutoFarmEctoplasm or AutoFarmFishTail or AutoFarmMastery or AutoSealedKing or AutoDoughKing or AutoBuddySword or AutoCavanderSword or AutoTwinHook or AutoFarmCocoa or AutoEliteHunter or AutoElectricClaw or AutoHallowScythe or AutoFarmChest or AutoBringFruit or AutoFarmLevel or AutoFarmNearest or AutoSecondSea or AutoThirdSea or AutoFarmBoss or AutoFarmAllBoss or TeleportMirage or AutoCakePrince or AutoFarmBone or FarmDragonScale or AutoPirateRaid or TeleportKitsuneIsland or AutoSeaEvent or AutoDragonTalon or AutoFactory or AutoDarkBeard or AutoUpgradeRaceV2 or AutoRengoku or AutoBartiloQuest or AutoDonSwan or AutoNextIsland or TeleportIsland then
			 	if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
			 	end
		  	else
			 	if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			 	end
		  	end
		end)
	end)
end)

Main:Seperator("Weapon Setup ⚙️")

Main:Dropdown("Select Weapon",{"Melee","Sword","Gun","Blox Fruit"},function(value)
    SelectWeapon = value
end)

spawn(function()
	while wait() do
		pcall(function()
		    for i ,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			    if GetWeapon then
			        if SelectWeapon == "Melee" or SelectWeapon == nil then
					    if v.ToolTip == "Melee" then
						    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							    Weapon = v.Name
						    end
					    end
			        elseif SelectWeapon == "Sword" then
					    if v.ToolTip == "Sword" then
						    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							    Weapon = v.Name
						    end
					    end
			        elseif SelectWeapon == "Blox Fruit" then
					    if v.ToolTip == "Blox Fruit" then
						    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
						        Weapon = v.Name
						    end
						end
			        elseif SelectWeapon == "Gun" then
					    if v.ToolTip == "Gun" then
						    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
						        Weapon = v.Name
						    end
						end
					end
				end
			end
		end)
	end
end)

Main:Seperator("Main 🏠")

Main:Toggle("Auto Farm Level",AutoFarmLevel,function(value)
    AutoFarmLevel = value
    StopTween(AutoFarmLevel)
end)

spawn(function()
    while wait() do
        if AutoFarmLevel then
            pcall(function()
                CheckQuestLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and NameMon ~= "Sun-kissed Warrior" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        wait()
                        TP(CFrameQuest)
                    until Dis(CFrameQuest.Position) < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmLevel
                    if Dis(CFrameQuest.Position) < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmLevel then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(NameMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmLevel then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or NameMon == "Sun-kissed Warrior" then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
					                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                            Collide(v)
                                            FastAttack = true
                                            if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                TargetMagnet = v
                                                Magnet = true
                                                AutoClick = true
                                            end
                                        until v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not AutoFarmLevel or not v.Parent
                                        Magnet = false
                                        FastAttack = false
                                        AutoClick = false
                                    end
                                end
                            end
                        end
                    else
                        CheckQuestLevel()
                        repeat wait() TP(CFrameMon) until Dis(CFrameMon.Position) < 6 or not AutoFarmLevel or game:GetService("Workspace").Enemies:FindFirstChild(NameMon)
                    end
                end
            end)
        end
    end
end)

Main:Toggle("Auto Farm Nearest",AutoFarmNearest,function(value)
    AutoFarmNearest = value
    StopTween(AutoFarmNearest)
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmNearest then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Dis(v.HumanoidRootPart.Position) <= 700 then
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmNearest and not string.find(v:FindFirstChild("Humanoid").DisplayName, "Boss") then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                Collide(v)
                                FastAttack = true
                                if Dis(v.HumanoidRootPart.Position) <= 30 then
                                     TargetMagnet = v
                                     Magnet = true
                                     AutoClick = true
                                end
                            until v.Humanoid.Health <= 0 or not AutoFarmNearest or not v.Parent
                            FastAttack = false
                            Magnet = false
                            AutoClick = false
                        end
                    end
                end
            end
        end)
    end
end)

if World2 then
    Main:Seperator("Ectoplasm 🤮")
    
    local Ectoplasm = Main:Label("Ectoplasm : ???")
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                Ectoplasm:Set("Ectoplasm : "..tostring(GetMaterial("Ectoplasm")))
            end)
        end
    end)
    
    Main:Toggle("Auto Farm Ectoplasm",AutoFarmEctoplasm,function(value)
        AutoFarmEctoplasm = value
        StopTween(AutoFarmEctoplasm)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmEctoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Officer" or v.Name == "Ship Steward" or v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmEctoplasm then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmEctoplasm
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                end
            end)
        end
    end)
end

if World1 then
    Main:Seperator("Main Quest ✈️")
    
    Main:Toggle("Auto Second Sea",AutoSecondSea,function(value)
        AutoSecondSea = value
        StopTween(AutoSecondSea)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSecondSea then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 1 then
                        if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key")) and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            EquipWeapon("Key")
                            repeat wait() TP(CFrame.new(1347.86646, 37.3493385, -1326.25745, 0.445431441, 6.075269e-08, 0.895316064, 6.98548508e-09, 1, -7.13315131e-08, -0.895316064, 3.80275154e-08, 0.445431441)) until Dis(CFrame.new(1347.86646, 37.3493385, -1326.25745)) < 6 or not AutoSecondSea
                        elseif game:GetService("Workspace").Map.Ice.Door.Transparency == 1 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoSecondSea then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoSecondSea
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                repeat wait() TP(CFrame.new(1348.05469, 37.8902702, -1326.51892, 0.607307553, 8.30034708e-08, 0.794466794, -9.89606832e-08, 1, -2.88292714e-08, -0.794466794, -6.11127433e-08, 0.607307553)) until Dis(Vector3.new(1306.806884765625, 30.175724029541016, -1353.4013671875)) < 6 or not AutoSecondSea or game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral")
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end)
elseif World2 then
    Main:Seperator("Main Quest ✈️")
    Main:Toggle("Auto Third Sea",AutoThirdSea,function(value)
        AutoThirdSea = value
        StopTween(AutoThirdSea)
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoThirdSea then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                            TP(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if Dis(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position) <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoThirdSea then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoThirdSea
                                            SuperAttack = false
                                        end
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    end
                end
            end)
        end
    end)
end

Main:Seperator("Boss 🦍")

local BossLabel = Main:Label("Status : Boss Not Found ❌️")

spawn(function()
	while wait() do
		pcall(function()
			if game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
				BossLabel:Set("Status : Boss Found ✅️")	
			else
				BossLabel:Set("Status : Boss Not Found ❌️")	
			end
		end)
	end
end)

if World1 then
	BossList = {"The Saw","Saber Expert","The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Greybeard"}
elseif World2 then
	BossList = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Awakened Ice Admiral","Tide Keeper","Cursed Captain","Darkbeard","Order"}
elseif World3 then
	BossList = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","Longma","Cake Queen","rip_indra True Form","Soul Reaper"}
end

function GetBoss()
    if World1 then
        return tostring((game:GetService("Workspace").Enemies:FindFirstChild("The Saw") or game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") or game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") or game:GetService("Workspace").Enemies:FindFirstChild("The Gorilla King") or game:GetService("ReplicatedStorage"):FindFirstChild("The Gorilla King") or game:GetService("Workspace").Enemies:FindFirstChild("Bobby") or game:GetService("ReplicatedStorage"):FindFirstChild("Bobby") or game:GetService("Workspace").Enemies:FindFirstChild("Yeti") or game:GetService("ReplicatedStorage"):FindFirstChild("Yeti") or game:GetService("Workspace").Enemies:FindFirstChild("Vice Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Vice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Warden") or game:GetService("ReplicatedStorage"):FindFirstChild("Warden") or game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") or game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") or game:GetService("Workspace").Enemies:FindFirstChild("Swan") or game:GetService("ReplicatedStorage"):FindFirstChild("Swan") or game:GetService("Workspace").Enemies:FindFirstChild("Magma Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Magma Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Lord") or game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Lord") or game:GetService("Workspace").Enemies:FindFirstChild("Wysper") or game:GetService("ReplicatedStorage"):FindFirstChild("Wysper") or game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") or game:GetService("Workspace").Enemies:FindFirstChild("Cyborg") or game:GetService("ReplicatedStorage"):FindFirstChild("Cyborg") or game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard")).Name)
    elseif World2 then
        return tostring((game:GetService("Workspace").Enemies:FindFirstChild("Diamond") or game:GetService("ReplicatedStorage"):FindFirstChild("Diamond") or game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") or game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") or game:GetService("Workspace").Enemies:FindFirstChild("Fajita") or game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") or game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") or game:GetService("Workspace").Enemies:FindFirstChild("Smoke Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Smoke Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") or game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Captain") or game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Captain") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard")).Name)
    elseif World3 then
        return tostring((game:GetService("Workspace").Enemies:FindFirstChild("Stone") or game:GetService("ReplicatedStorage"):FindFirstChild("Stone") or game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") or game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress") or game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") or game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral") or game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") or game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") or game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") or game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") or game:GetService("Workspace").Enemies:FindFirstChild("Longma") or game:GetService("ReplicatedStorage"):FindFirstChild("Longma") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")).Name)
    end
end

function CheckBossHit(TargetCheck)
    if TargetCheck == "Longma" then
        if game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency == 1 then
            return true
        else
            return false
        end
    elseif TargetCheck == "Don Swan" then
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
            return true
        else
            return false
        end
    elseif TargetCheck == "Saber Expert" then
        if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 1 then
            return true
        else
            return false
        end
    else
        return true
    end
end

Main:Dropdown("Select Boss",BossList,function(value)
    SelectBoss = value
end)

Main:Toggle("Auto Farm Boss",AutoFarmBoss,function(value)
    AutoFarmBoss = value
    StopTween(AutoFarmBoss)
end)

spawn(function()
    while wait() do
        if AutoFarmBoss then
            pcall(function()
                if (game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss)) and (game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss)).Humanoid.Health > 0 then
                    CheckBossQuest(SelectBoss)
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, SelectBoss) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and CFrameQuestBoss and game:GetService("Players").LocalPlayer.Data.Level.Value >= LevelBoss then
                        if SelectBoss == "Beautiful Pirate" and Dis(CFrameQuestBoss.Position) > 1000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				        end
				        if Dis(CFrameQuestBoss.Position) >= 6 then
                            repeat wait() TP(CFrameQuestBoss) until Dis(CFrameQuestBoss.Position) < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmBoss
                        end
                        if Dis(CFrameQuestBoss.Position) < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmBoss then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,LevelQuestBoss)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not CFrameQuestBoss or game:GetService("Players").LocalPlayer.Data.Level.Value < LevelBoss then
                        if CheckBossHit(SelectBoss) then
                            if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == SelectBoss then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmBoss then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmBoss
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                CheckBossQuest(SelectBoss)
                                if SelectBoss == "Beautiful Pirate" and Dis(Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)) > 1000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				                end
				                if CFrameBoss then
                                    repeat wait() TP(CFrameBoss) until Dis(CFrameBoss.Position) < 6 or not AutoFarmBoss or game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Main:Toggle("Auto Farm All Boss",AutoFarmAllBoss,function(value)
    AutoFarmAllBoss = value
    StopTween(AutoFarmAllBoss)
end)

spawn(function()
    while wait() do
        if AutoFarmAllBoss then
            pcall(function()
                NameBoss = GetBoss()
                if NameBoss then
                    if (game:GetService("Workspace").Enemies:FindFirstChild(NameBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(NameBoss)) and (game:GetService("Workspace").Enemies:FindFirstChild(NameBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(NameBoss)).Humanoid.Health > 0 then
                        CheckBossQuest(NameBoss)
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and CFrameQuestBoss and game:GetService("Players").LocalPlayer.Data.Level.Value >= LevelBoss then
                            if NameBoss == "Beautiful Pirate" and Dis(CFrameQuestBoss.Position) > 1000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				            end
                            repeat wait() TP(CFrameQuestBoss) until Dis(CFrameQuestBoss.Position) < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmAllBoss
                            if Dis(CFrameQuestBoss.Position) < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmAllBoss then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,LevelQuestBoss)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not CFrameQuestBoss or game:GetService("Players").LocalPlayer.Data.Level.Value < LevelBoss then
                            if CheckBossHit(NameBoss) then
                                if game:GetService("Workspace").Enemies:FindFirstChild(NameBoss) then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == NameBoss then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmAllBoss then
                                                repeat task.wait()
                                                    EquipWeapon(Weapon)
                                                    AutoHaki()
                                                    if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                    else
                                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    end
                                                    Collide(v)
                                                    SuperAttack = true
                                                until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmAllBoss
                                                SuperAttack = false
                                            end
                                        end
                                    end
                                else
                                    CheckBossQuest(NameBoss)
                                    if NameBoss == "Beautiful Pirate" and Dis(Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)) > 1000 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				                    end
				                    if CFrameBoss then
                                        repeat wait() TP(CFrameBoss) until Dis(CFrameBoss.Position) < 6 or not AutoFarmAllBoss or game:GetService("Workspace").Enemies:FindFirstChild(NameBoss)
                                   end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Main:Seperator("Chest 📦")

Main:Toggle("Auto Farm Chest",AutoFarmChest,function(value)
    AutoFarmChest = value
    StopTween(AutoFarmChest)
end)
local DistanceChest = {200,500,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,11000,12000,13000,14000,15000,16000,17000,18000,19000,20000}
function GetNearestChest()
    for i,v in pairs(DistanceChest) do
        for i2,v2 in pairs(game:GetService("Workspace"):GetChildren()) do
            if v2.Name == "Chest1" or v2.Name == "Chest2" or v2.Name == "Chest3" then
                if Dis(v2.Position) <= v then
                    return v2
                end
            end
        end
    end
    return false
end

spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmChest then
                local Chest = GetNearestChest()
                if Chest then
                    TP(Chest.CFrame)
                    if Dis(Chest.Position) <= 5 then
                        game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                    end
                end
            end
        end)
    end
end)

if World3 then

Main:Seperator("Cake Prince 🍩")

local RemainingMob = Main:Label("Kill More : ???")

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                RemainingMob:Set("Kill More : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                RemainingMob:Set("Kill More : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                RemainingMob:Set("Kill More : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                RemainingMob:Set("Boss Spawned ✅️")
            end
        end)
    end
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if AutoSpawnCakePrince or AutoCakePrince then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
            end
        end)
    end
end)

Main:Toggle("Auto Cake Prince",AutoCakePrince,function(value)
    AutoCakePrince = value
    StopTween(AutoCakePrince)
end)

Main:Toggle("Auto Spawn Cake Prince",AutoSpawnCakePrince,function(value)
    AutoSpawnCakePrince = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoCakePrince then
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if Dis(Vector3.new(-1995.837158203125, 4532.998046875, -14981.3525390625)) >= 2000 and (game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince")).Humanoid.Health > 0 then
                        repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until Dis(Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) < 6 or not AutoCakePrince
                        wait(1)
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Prince" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoCakePrince then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoCakePrince
                                        SuperAttack = false
                                    end
                               end
                            end
                        else
                            repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until Dis(Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) < 6 or not AutoCakePrince
                        end
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Head Baker" or v.Name == "Baking Staff" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoCakePrince then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                    Collide(v)
                                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 5000 then
                                        SuperAttack = true
                                        FastAttack = false
                                    else
                                        FastAttack = true
                                        SuperAttack = false
                                    end
                                    if Dis(v.HumanoidRootPart.Position) <= 30 then
                                         TargetMagnet = v
                                         Magnet = true
                                         AutoClick = true
                                    end
                                until v.Humanoid.Health <= 0 or not AutoCakePrince or not v.Parent or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                Magnet = false
                                FastAttack = false
                                SuperAttack = false
                                AutoClick = false
                            end
                        end
                    end
                else
                    repeat wait() TP(CFrame.new(-1946.752685546875, 251.5355987548828, -12407.5146484375)) until Dis(Vector3.new(-1946.752685546875, 251.5355987548828, -12407.5146484375)) < 6 or not AutoCakePrince or game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")
                end
            end
        end)
    end
end)

Main:Seperator("Bone 🦴")

local CheckBone = Main:Label("Bone : ???")
local BoneStatus = Main:Label("Bone Random Remaining : ???")

spawn(function()
    while wait(.5) do
        pcall(function()
            CheckBone:Set("Bone : "..tostring(GetMaterial("Bones")))
            Bone1,Bone2,Bone3,Bone4,Bone5 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
            BoneStatus:Set("Bone Random Remaining : "..tostring(Bone3).."/"..tostring(Bone5))
        end)
    end
end)

Main:Toggle("Auto Farm Bone",AutoFarmBone,function(value)
    AutoFarmBone = value
    StopTween(AutoFarmBone)
end)

spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmBone then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmBone then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmBone
                                        SuperAttack = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-9521.013671875, 316.34521484375, 6664.80078125)) until Dis(Vector3.new(-9521.013671875, 316.34521484375, 6664.80078125)) < 6 or not AutoFarmBone or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        EquipWeapon("Hallow Essence")
                        repeat wait() TP(CFrame.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) until Dis(Vector3.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) < 6 or not AutoFarmBone or not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence"))
                    elseif AutoFarmBone and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoFarmBone and not (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")) and not (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            if AutoHallowScythe and not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                                                AutoRandomBone = true
                                            end
                                            Collide(v)
                                            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 5000 then
                                                SuperAttack = true
                                                FastAttack = false
                                            else
                                                SuperAttack = false
                                                FastAttack = true
                                            end
                                            if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                TargetMagnet = v
                                                Magnet = true
                                                AutoClick = true
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmBone or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")
                                        Magnet = false
                                        FastAttack = false
                                        SuperAttack = false
                                        AutoClick = false
                                        AutoRandomBone = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until Dis(Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) < 6 or not AutoFarmBone or game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                        end
                    end
                end
            end)
        end
    end)

Main:Toggle("Auto Random Bone",AutoRandomBone,function(value)
    AutoRandomBone = value
end)
spawn(function()
    while wait() do
        pcall(function()
            if AutoRandomBone then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end)
    end
end)

Main:Button("Random Bone",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)
end

Main:Seperator("Mastery 🍎")

local MasBF = Main:Label("Don't Have Devil Fruit ❌️")

Main:Toggle("Auto Farm Mastery Fruit",AutoFarmMastery,function(value)
    AutoFarmMastery = value
    StopTween(AutoFarmMastery)
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == "Blox Fruit" then
                    repeat wait(.5) MasBF:Set("Mastery Fruit : "..v.Level.Value) until v.Parent ~= "Backpack"
                    SelectBF = v.Name
                end
            end
        end)
    end
end)
spawn(function()
    while wait(0.5) do
        pcall(function()
            if SlowAttack then
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmMastery and UseSkill then
                if SkillZ and AutoFarmMastery and UseSkill then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                    wait(.5)
                end
                if SkillX and AutoFarmMastery and UseSkill then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                    wait(.5)
                end
                if SkillC and AutoFarmMastery and UseSkill then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                    wait(.5)
                end
                if SkillV and AutoFarmMastery and UseSkill then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                    wait(.5)
                end
                if SkillF and AutoFarmMastery and UseSkill then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                    wait(.5)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if AutoFarmMastery then
            pcall(function()
                CheckQuestLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and NameMon ~= "Sun-kissed Warrior" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        wait()
                        TP(CFrameQuest)
                    until Dis(CFrameQuest.Position) < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmMastery
                    if Dis(CFrameQuest.Position) < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmMastery then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(NameMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmMastery then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or NameMon == "Sun-kissed Warrior" then
                                        SelectMonAim = v.HumanoidRootPart
                                        repeat task.wait()
                                            AutoHaki()
                                            SlowAttack = true
                                            Collide(v)
                                            if v.Humanoid.Health * 100 / v.Humanoid.MaxHealth <= 25 then
                                                EquipWeapon(SelectBF)
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                UseSkill = true
                                                AimbotSkill = true
                                            else
                                                EquipWeapon(Weapon)
					                            TP(v.HumanoidRootPart.CFrame * SetUp)
					                            UseSkill = false
					                            AimbotSkill = false
					                        end
					                        if Dis(v.HumanoidRootPart.CFrame) <= 30 then
					                            TargetMagnet = v
                                                Magnet = true
                                            end
                                        until v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not AutoFarmMastery or not v.Parent or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                        Magnet = false
                                        UseSkill = false
                                        SlowAttack = false
                                        AimbotSkill = false
                                    end
                                end
                            end
                        end
                    else
                        CheckQuestLevel()
                        repeat wait() TP(CFrameMon) until Dis(CFrameMon.Position) < 6 or not AutoFarmMastery or game:GetService("Workspace").Enemies:FindFirstChild(NameMon)
                    end
                end
            end)
        end
    end
end)

spawn(function()
   while wait() do
      pcall(function()
          if AutoFarmMastery and SelectMonAim then
              OldSelectMonAim = SelectMonAim.Position
              repeat task.wait()
                  AimbotPos = SelectMonAim.Position
              until SelectMonAim.Position ~= OldSelectMonAim or not AutoFarmMastery or not SelectMonAim
          end
      end)
   end
end)

Main:Toggle("Use Skill Z",true,function(value)
    SkillZ = value
end)

Main:Toggle("Use Skill X",true,function(value)
    SkillX = value
end)

Main:Toggle("Use Skill C",true,function(value)
    SkillC = value
end)

Main:Toggle("Use Skill V",true,function(value)
    SkillV = value
end)

Main:Toggle("Use Skill F",SkillF,function(value)
    SkillF = value
end)

Main:Seperator("Material 🪨")
if World1 then
    Main:Toggle("Farm Magma Ore",FarmMagnaOre,function(value)
        FarmMagmaOre = value
        StopTween(FarmMagmaOre)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmMagmaOre then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier") or game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Military Soldier" or v.Name == "Military Spy" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmMagmaOre then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmMagmaOre or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)) until Dis(CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)) < 6 or not FarmMagmaOre or game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier") then
                            repeat wait() TP(CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)) until Dis(CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)) < 6 or not FarmMagmaOre or game:GetService("Workspace").Enemies:FindFirstChild("Military Spy")
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Scrap Metal and Leather",FarmScrapMetalLeather,function(value)
        FarmScrapMetalLeather = value
        StopTween(FarmScrapMetalLeather)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmScrapMetalLeather then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") or game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Pirate" or v.Name == "Brute" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmScrapMetalLeather then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmScrapMetalLeather or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)) until Dis(CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)) < 6 or not FarmScrapMetalLeather or game:GetService("Workspace").Enemies:FindFirstChild("Pirate")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
                            repeat wait() TP(CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)) until Dis(CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)) < 6 or not FarmScrapMetalLeather or game:GetService("Workspace").Enemies:FindFirstChild("Brute") 
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Fish Tail",AutoFarmFishTail,function(value)
        AutoFarmFishTail = value
        StopTween(AutoFarmFishTail)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmFishTail then
                    if Dis(CFrame.new(61343.25, 19.411720275878906, 1524.3311767578125)) > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					elseif game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Commando") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Warrior" or v.Name == "Fishman Commando" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmFishTail then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not AutoFarmFishTail or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)) until Dis(CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)) < 6 or not AutoFarmFishTail or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Fishman Warrior") then
                            repeat wait() TP(CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)) until Dis(CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)) < 6 or not AutoFarmFishTail or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Commando")
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Angel Wings",FarmAngelWings,function(value)
        FarmAngelWings = value
        StopTween(FarmAngelWings)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmAngelWings then
                    if Dis(CFrame.new(-7862.04248046875, 5662.69140625, -1706.26318359375)) > 2000 then
					    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				    elseif game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Royal Squad" or v.Name == "Royal Soldier" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmAngelWings then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmAngelWings or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)) until Dis(CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)) < 6 or not FarmAngelWings or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad") then
                            repeat wait() TP(CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)) until Dis(CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)) < 6 or not FarmAngelWings or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") 
                        end
                    end
                end
            end)
        end
    end)
elseif World2 then
    Main:Toggle("Farm Magma Ore",FarmMagnaOre,function(value)
        FarmMagmaOre = value
        StopTween(FarmMagmaOre)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmMagmaOre then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja") or game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Magma Ninja" or v.Name == "Lava Pirate" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmMagmaOre then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmMagmaOre or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)) until Dis(CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)) < 6 or not FarmMagmaOre or game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Magma Ninja") then
                            repeat wait() TP(CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)) until Dis(CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)) < 6 or not FarmMagmaOre or game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate")
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Vampire Fang",FarmVampireFang,function(value)
        FarmVampireFang = value
        StopTween(FarmVampireFang)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmVampireFang then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Vampire" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmVampireFang then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmVampireFang or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)) until Dis(CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)) < 6 or not FarmVampireFang or game:GetService("Workspace").Enemies:FindFirstChild("Vampire")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Scrap Metal and Leather",FarmScrapMetalLeather,function(value)
        FarmScrapMetalLeather = value
        StopTween(FarmScrapMetalLeather)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmScrapMetalLeather then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mercenary" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmScrapMetalLeather then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmScrapMetalLeather or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)) until Dis(CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)) < 6 or not FarmScrapMetalLeather or game:GetService("Workspace").Enemies:FindFirstChild("Mercenary")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm RadioActive",FarmRadioActive,function(value)
        FarmRadioActive = value
        StopTween(FarmRadioActive)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmRadioActive then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Factory Staff" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmRadioActive then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmRadioActive or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)) until Dis(CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)) < 6 or not FarmRadioActive or game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Mystic Droplet",FarmMysticDroplet,function(value)
        FarmMysticDroplet = value
        StopTween(FarmMysticDroplet)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmMysticDroplet then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier") or game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Sea Soldier" or v.Name == "Water Fighter" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmMysticDroplet then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmMysticDroplet or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)) until Dis(CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)) < 6 or not FarmMysticDroplet or game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Sea Soldier") then
                            repeat wait() TP(CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)) until Dis(CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)) < 6 or not FarmMysticDroplet or game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter")
                        end
                    end
                end
            end)
        end
    end)
elseif World3 then
    Main:Toggle("Farm Dragon Scale",FarmDragonScale,function(value)
        FarmDragonScale = value
        StopTween(FarmDragonScale)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmDragonScale then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Archer" or v.Name == "Dragon Crew Warrior" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmDragonScale then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or not FarmDragonScale
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end
                            end
                        end
                    else
                        if Dis(Vector3.new(6720.99169921875, 433.4623107910156, 115.74989318847656)) > 2000 then
		                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5742.65087890625, 610.9649658203125, -269.2676696777344))
		                end
                        repeat wait() TP(CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)) until Dis(CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)) < 6 or not FarmDragonScale or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
                            repeat wait() TP(CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)) until Dis(CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)) < 6 or not FarmDragonScale or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer")
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Auto Farm Cocoa",AutoFarmCocoa,function(value)
        AutoFarmCocoa = value
        StopTween(AutoFarmCocoa)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmCocoa then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmCocoa then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not AutoFarmCocoa or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) until Dis(Vector3.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) < 6 or not AutoFarmCocoa or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Auto Fish Tail",AutoFarmFishTail,function(value)
        AutoFarmFishTail = value
        StopTween(AutoFarmFishTail)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFarmFishTail then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fishman Raider" or v.Name == "Fishman Captain" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoFarmFishTail then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoFarmFishTail
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end
                            end
                        end
                    else
                        if Dis(Vector3.new(-10727.619140625, 388.7049865722656, -8756.8134765625)) > 5000 then
		                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
		                end
                        repeat wait() TP(CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)) until Dis(CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)) < 6 or not AutoFarmFishTail or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain")
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
                            repeat wait() TP(CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)) until Dis(CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)) < 6 or not AutoFarmFishTail or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider")
                        end
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Scrap Metal and Leather",FarmScrapMetalLeather,function(value)
        FarmScrapMetalLeather = value
        StopTween(FarmScrapMetalLeather)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmScrapMetalLeather then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jungle Pirate" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmScrapMetalLeather then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmScrapMetalLeather or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        if Dis(CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)) > 1500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
                        end
                        repeat wait() TP(CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)) until Dis(CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)) < 6 or not FarmScrapMetalLeather or game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Mini Tusk",FarmMiniTusk,function(value)
        FarmMiniTusk = value
        StopTween(FarmMiniTusk)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmMiniTusk then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmMiniTusk then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmMiniTusk or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        if Dis(CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)) > 1000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
                        end
                        repeat wait() TP(CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)) until Dis(CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)) < 6 or not FarmMiniTusk or game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate")
                    end
                end
            end)
        end
    end)
    
    Main:Toggle("Farm Demonic Wisp",FarmDemonicWisp,function(value)
        FarmDemonicWisp = value
        StopTween(FarmDemonicWisp)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FarmDemonicWisp then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Demonic Soul" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and FarmDemonicWisp then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                        end
                                    until v.Humanoid.Health <= 0 or not FarmDemonicWisp or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(-9709.30762, 204.695892, 6044.04688)) until Dis(CFrame.new(-9709.30762, 204.695892, 6044.04688)) < 6 or not FarmDemonicWisp or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul")
                    end
                end
            end)
        end
    end)
end

if World3 then
    Weapon:Seperator("Third Sea Event 🎉")
    Weapon:Toggle("Auto Pirate Raid",AutoPirateRaid,function(value)
        AutoPirateRaid = value
        StopTween(AutoPirateRaid)
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
		    pcall(function()
	    	    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				    if AutoPirateRaid and PirateMagnet and (v.HumanoidRootPart.Position - PiratePos.Position).magnitude <= 700 then
					    v.HumanoidRootPart.CFrame = PiratePos
					    if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 10000)
			    	 end
			    end
	        end)
        end)
    end)
   
    spawn(function()
        while wait() do
            pcall(function()
                if AutoPirateRaid then
                     if Dis(Vector3.new(-5121.33056640625, 314.5412902832031, -2961.544189453125)) > 1000 then
                         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5093.7294921875, 314.5412902832031, -3131.57080078125))
                     else
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                             if Dis(v.HumanoidRootPart.Position) <= 700 then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoPirateRaid then
                                     repeat task.wait()
                                         EquipWeapon(Weapon)
                                         AutoHaki()
                                         TP(v.HumanoidRootPart.CFrame * SetUp)
                                         Collide(v)
                                         FastAttack = true
                                         if Dis(v.HumanoidRootPart.CFrame) <= 30 then
                                            PiratePos = v.HumanoidRootPart.CFrame
                                            PirateMagnet = true
                                            AutoClick = true
                                         end
                                     until v.Humanoid.Health <= 0 or not AutoPirateRaid or not v.Parent
                                     PirateMagnet = false
                                     FastAttack = false
                                     AutoClick = false
                                 end
                             end
                         end
                     end
                end
            end)
        end
    end)
   
    Weapon:Seperator("Melee 💪")
    
    Weapon:Toggle("Auto Electric Claw",AutoElectricClaw,function(value)
        AutoElectricClaw = value
        StopTween(AutoElectricClaw)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoElectricClaw then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 0 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == "..." then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                            local MasMelee = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")
                            if MasMelee.Level.Value >= 400 then
                                if Dis(Vector3.new(-10371.4717, 330.764496, -10131.4199)) < 6 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                    wait(1)
                                    if AutoElectricClaw and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start") ~= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12453.896484375, 375.3892822265625, -7574.470703125))
                                    end
                                    wait(1)
                                    repeat wait() TP(CFrame.new(-10371.4717, 330.764496, -10131.4199)) until Dis(Vector3.new(-10371.4717, 330.764496, -10131.4199)) < 6 or not AutoElectricClaw
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                else
                                    repeat wait() TP(CFrame.new(-10371.4717, 330.764496, -10131.4199)) until Dis(Vector3.new(-10371.4717, 330.764496, -10131.4199)) < 6 or not AutoElectricClaw
                                end
                            elseif MasMelee.Level.Value < 400 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoElectricClaw then
                                                repeat task.wait()
                                                    EquipWeapon(Weapon)
                                                    AutoHaki()
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    Collide(v)
                                                    FastAttack = true
                                                    if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                        TargetMagnet = v
                                                        Magnet = true
                                                        AutoClick = true
                                                    end
                                                until v.Humanoid.Health <= 0 or not v.Parent or not AutoElectricClaw or MasMelee.Level.Value >= 400
                                                Magnet = false
                                                FastAttack = false
                                                AutoClick = true
                                            end
                                        end
                                    end
                                else
                                    repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until Dis(Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) < 6 or not AutoElectricClaw or game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Toggle("Auto Dragon Talon",AutoDragonTalon,function(value)
        AutoDragonTalon = value
        StopTween(AutoDragonTalon)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoDragonTalon then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == "Set your heart ablaze." or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 0 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 3 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            local MasMelee = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw")
                            if MasMelee.Level.Value >= 300 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                    EquipWeapon("Hallow Essence")
                                    repeat wait() TP(CFrame.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) until Dis(Vector3.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) < 6 or not AutoDragonTalon
                                elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Soul Reaper" then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDragonTalon then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                        else
                                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        end
                                                        Collide(v)
                                                        SuperAttack = true
                                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoDragonTalon
                                                    SuperAttack = false
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-9521.013671875, 316.34521484375, 6664.80078125)) until Dis(Vector3.new(-9521.013671875, 316.34521484375, 6664.80078125)) < 6 or not AutoDragonTalon or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoDragonTalon and not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        Collide(v)
                                                        if not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                                        end
                                                        FastAttack = true
                                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                            TargetMagnet = v
                                                            Magnet = true
                                                            AutoClick = true
                                                        end
                                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoDragonTalon or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")
                                                    Magnet = false
                                                    FastAttack = false
                                                    AutoClick = false
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until Dis(Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) < 6 or not AutoDragonTalon or game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                                    end
                                end
                            elseif MasMelee.Level.Value < 300 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                                    EquipWeapon("Hallow Essence")
                                    repeat wait() TP(CFrame.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) until Dis(Vector3.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) < 6 or not AutoDragonTalon
                                elseif game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Soul Reaper" then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDragonTalon then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                        else
                                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        end
                                                        Collide(v)
                                                        SuperAttack = true
                                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoDragonTalon
                                                    SuperAttack = false
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-9521.013671875, 316.34521484375, 6664.80078125)) until Dis(Vector3.new(-9521.013671875, 316.34521484375, 6664.80078125)) < 6 or not AutoDragonTalon or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                                    end
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoDragonTalon and not (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                                                    repeat task.wait()
                                                        if Weapon ~= "Dragon Claw" then
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                                                        else
                                                            EquipWeapon(Weapon)
                                                        end
                                                        AutoHaki()
                                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        Collide(v)
                                                        FastAttack = true
                                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                            TargetMagnet = v
                                                            Magnet = true
                                                            AutoClick = true
                                                        end
                                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoDragonTalon or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")
                                                    Magnet = false
                                                    FastAttack = false
                                                    AutoClick = false
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until Dis(Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) < 6 or not AutoDragonTalon or game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                                    end
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Quest 📃")
    
    local EliteStatus = Weapon:Label("Elite Not Spawn ❌")
    local EliteProgress = Weapon:Label("Elite Progress : ???")
    spawn(function()
        while wait(.5) do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    EliteStatus:Set("Elite Spawn ✅️")
                else
                    EliteStatus:Set("Elite Not Spawn ❌️")
                end
                EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end)
        end
    end)
    
    Weapon:Toggle("Auto Elite Hunter",AutoEliteHunter,function(value)
        AutoEliteHunter = value
        StopTween(AutoEliteHunter)
    end)
    
    local EliteList = {"Deandre","Diablo","Urban"}
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoEliteHunter then
                    local Elite = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")
                    if Elite then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Elite.Name) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            for i,v in pairs(EliteList) do
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), v) then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(v) then
                                        for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v2.Name == v then
                                                if v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 and AutoEliteHunter then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        if v2.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                            TP(v2.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                        else
                                                            TP(v2.HumanoidRootPart.CFrame * SetUp)
                                                        end
                                                        Collide(v2)
                                                        SuperAttack = true
                                                    until v2.Humanoid.Health <= 0 or not v2.Parent or not AutoEliteHunter
                                                    SuperAttack = false
                                                end
                                            end
                                        end
                                    else
                                        local Elite = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban")
                                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), "Hydra Island") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5747.1650390625, 668.0300903320312, -280.178955078125))
                                        elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), "Floating Turtle") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5078.60546875, 314.5412902832031, -3151.4267578125))
                                        end
                                        if Elite:FindFirstChild("HumanoidRootPart") and Elite:FindFirstChild("Humanoid") and Elite:FindFirstChild("Humanoid").Health > 0 then
                                            repeat wait() TP(Elite.HumanoidRootPart.CFrame * SetUp) until not Elite.Parent or not AutoEliteHunter or Dis(Elite.HumanoidRootPart.Position) <= 50 or game:GetService("Workspace").Enemies:FindFirstChild(v)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Dough King 🤴")
    
    Weapon:Toggle("Auto Dough King",AutoDoughKing,function(value)
        AutoDoughKing = value
        StopTween(AutoDoughKing)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoDoughKing then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        if Dis(Vector3.new(-1995.837158203125, 4532.998046875, -14981.3525390625)) >= 2000 and (game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") ).Humanoid.Health > 0 then
                            repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until Dis(Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) < 6 or not AutoDoughKing
                            wait(1)
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") and game:GetService("Workspace").Enemies:FindFirstChild("Dough King").Humanoid.Health > 0 then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Dough King" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDoughKing then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoDoughKing
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until Dis(Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) < 6 or not AutoDoughKing
                            end
                        end
                    elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Head Baker" or v.Name == "Baking Staff" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and AutoDoughKing and not (game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                                            Collide(v)
                                            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 5000 then
                                                 SuperAttack = true
                                                 FastAttack = false
                                            else
                                                 SuperAttack = false
                                                 FastAttack = true
                                            end
                                            if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                TargetMagnet = v
                                                Magnet = true
                                                AutoClick = true
                                            end
                                        until v.Humanoid.Health <= 0 or not AutoDoughKing or not v.Parent or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")
                                        Magnet = false
                                        FastAttack = false
                                        AutoClick = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-1946.752685546875, 251.5355987548828, -12407.5146484375)) until Dis(Vector3.new(-1946.752685546875, 251.5355987548828, -12407.5146484375)) < 6 or not AutoDoughKing or game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")
                        end
                    elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") < 10 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDoughKing and GetMaterial("Conjured Cocoa") < 10 then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            Collide(v)
                                            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 5000 then
                                                 SuperAttack = true
                                                 FastAttack = false
                                            else
                                                 SuperAttack = false
                                                 FastAttack = true
                                            end
                                            if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                TargetMagnet = v
                                                Magnet = true
                                                AutoClick = true
                                            end
                                        until v.Humanoid.Health <= 0 or not AutoDoughKing or not v.Parent or GetMaterial("Conjured Cocoa") >= 10
                                        FastAttack = false
                                        Magnet = false
                                        AutoClick = false
                                    end 
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) until Dis(Vector3.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) < 6 or not AutoDoughKing or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel")
                        end
                    elseif (game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key")) and game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
                        repeat wait() TP(CFrame.new(-2681.97998, 64.3921585, -12853.7363)) until Dis(Vector3.new(-2681.97998, 64.3921585, -12853.7363)) < 6 or not AutoDoughKing
                        EquipWeapon("Red Key")
                        if Dis(Vector3.new(-2681.97998, 64.3921585, -12853.7363)) < 6 and AutoDoughKing then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
                        end
                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice") then
                        local Elite = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")
                        if Elite then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                            end
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Elite.Name) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                for i,v in pairs(EliteList) do
                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), v) then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(v) then
                                            for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v2.Name == v then
                                                    if v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 and AutoDoughKing then
                                                        repeat task.wait()
                                                            EquipWeapon(Weapon)
                                                            AutoHaki()
                                                            if v2.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                                TP(v2.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                            else
                                                                TP(v2.HumanoidRootPart.CFrame * SetUp)
                                                            end
                                                            Collide(v2)
                                                            SuperAttack = true
                                                        until v2.Humanoid.Health <= 0 or not v2.Parent or not AutoDoughKing
                                                        SuperAttack = false
                                                    end
                                                end
                                            end
                                        else
                                            local Elite = game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban")
                                            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), "Hydra Island") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5747.1650390625, 668.0300903320312, -280.178955078125))
                                            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter"), "Floating Turtle") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5078.60546875, 314.5412902832031, -3151.4267578125))
                                            end
                                            if Elite:FindFirstChild("HumanoidRootPart") and Elite:FindFirstChild("Humanoid") and Elite.Humanoid.Health > 0 then
                                                repeat wait() TP(Elite.HumanoidRootPart.CFrame * SetUp) until not Elite.Parent or not AutoDoughKing or Dis(Elite.HumanoidRootPart.Position) <= 50 or game:GetService("Workspace").Enemies:FindFirstChild(v)
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            local Chest = GetNearestChest()
                            if Chest then
                                TP(Chest.CFrame)
                                if Dis(Chest.Position) <= 5 then
                                    game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Sword 🗡")
    
    Weapon:Toggle("Auto Twin Hook",AutoTwinHook,function(value)
        AutoTwinHook = value
        StopTween(AutoTwinHook)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoTwinHook then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") or game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if Dis(Vector3.new(-13221, 325, -8405)) > 1000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
                            end
                            repeat wait() TP(CFrame.new(-13232.765625, 332.3781433105469, -7627.4033203125)) until Dis(Vector3.new(-13232.765625, 332.3781433105469, -7627.4033203125)) < 6 or not AutoTwinHook
                            if Dis(Vector3.new(-13232.765625, 332.3781433105469, -7627.4033203125)) < 6 and AutoTwinHook then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DeepForestIsland",3)
                            end
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoTwinHook then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoTwinHook
                                        SuperAttack = false
                                    end
                                end
                            end
                        else
                            if Dis(Vector3.new(-13221, 325, -8405)) > 1000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
                            end
                            repeat wait() TP(CFrame.new(-13221, 325, -8405)) until Dis(Vector3.new(-13221, 325, -8405)) < 6 or not AutoTwinHook or game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Toggle("Auto Cavander Sword",AutoCavanderSword,function(value)
        AutoCavanderSword = value
        StopTween(AutoCavanderSword)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoCavanderSword then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") or game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if Dis(Vector3.new(-12686, 391, -9902)) > 1000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				            end
                            repeat wait() TP(CFrame.new(-12686, 391, -9902)) until Dis(Vector3.new(-12686, 391, -9902)) < 6 or not AutoCavanderSword
                            if Dis(Vector3.new(-12686, 391, -9902)) < 6 and AutoCavanderSword then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DeepForestIsland2",3)
                            end
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoCavanderSword then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoCavanderSword
                                        SuperAttack = false
                                    end
                                end
                            end
                        else
                            if Dis(Vector3.new(5182, 23, -20)) > 1000 then
                               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				            end
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Toggle("Auto Buddy Sword",AutoBuddySword,function(value)
        AutoBuddySword = value
        StopTween(AutoBuddySword)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoBuddySword then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cake Queen") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat wait() TP(CFrame.new(-821.267456, 65.9448776, -10964.3994)) until Dis(Vector3.new(-821.267456, 65.9448776, -10964.3994)) < 6 or not AutoBuddySword
                            if Dis(Vector3.new(-821.267456, 65.9448776, -10964.3994)) < 6 and AutoBuddySword then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","IceCreamIslandQuest",3)
                            end
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoBuddySword then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoBuddySword
                                        SuperAttack = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-715.467102, 381.69104, -11019.8896)) until Dis(Vector3.new(-715.467102, 381.69104, -11019.8896)) < 6 or not AutoBuddySword or game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Toggle("Auto Hallow Scythe",AutoHallowScythe,function(value)
        AutoHallowScythe = value
        AutoFarmBone = value
        StopTween(AutoHallowScythe)
    end)
    
    Weapon:Seperator("Gun 🔫")
    
    Weapon:Toggle("Auto Soul Guitar [Error]",AutoSoulGuitar,function(value)
        AutoSoulGuitar = value
        StopTween(AutoSoulGuitar)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSoulGuitar then
                    if GetInventory("Soul Guitar") == false then
                        if Dis(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position) <= 5000 then
							if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
							else
							    if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
									if game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
										if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
											repeat wait() TP(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until Dis(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position) <= 3 or not AutoSoulGuitar
											wait(1)
											repeat wait() TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame) until Dis(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.Position) <= 5 or not AutoSoulGuitar
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
											wait(1)
											repeat wait() TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame) until Dis(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.Position) <= 5 or not AutoSoulGuitar
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											repeat wait() TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame) until Dis(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.Position) <= 5 or not AutoSoulGuitar
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											repeat wait() TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame) until Dis(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.Position) <= 5 or not AutoSoulGuitar
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
											wait(1)
											repeat wait() TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame) until Dis(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.Position) <= 5 or not AutoSoulGuitar
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
										end
									elseif game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
										repeat wait() TP(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until Dis(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position) <= 5 or not AutoSoulGuitar
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
										wait(1)
								    else
								        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
											local args = {
												[1] = "GuitarPuzzleProgress",
												[2] = "Ghost"
											}

											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
								    end
								else
								    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
										repeat wait() TP(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125)) until Dis(Vector3.new(-8653.2060546875, 140.98487854003906, 6160.033203125)) <= 5 or not AutoSoulGuitar
									elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
										require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Waitting For The Next Night<Color=/>"):Display()
                                        wait(5)
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
									end
							    end
							end
				        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Enchancement Color ☻️")
    local HakiColor = Weapon:Label("Enchancement Color : ???")
    local TypeHaki = Weapon:Label("Color Type : ???")
    spawn(function()
        while wait(1) do
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1") then
                    Haki1,Haki2 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1")
                    HakiColor:Set("Enchancement Color : "..tostring(Haki1))
                    if Haki2 == 7500 then
                        TypeHaki:Set("Color Type : Legendary")
                    else
                        TypeHaki:Set("Color Type : Regular")
                    end
                else
                    HakiColor:Set("Enchancement Color : ???")
                    TypeHaki:Set("Color Type : ???")
                end
            end)
        end
    end)
    
    Weapon:Button("Buy Enchancement Color",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
    end)
    
    Weapon:Toggle("Auto Buy Enchancement Color",AutoBuyEnchancementColor,function(value)
       AutoBuyEnchancementColor = value
    end)
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoBuyEnchancementColor then
                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
                end
            end)
        end
    end)
    
    Weapon:Toggle("Auto Rainbow Haki",AutoRainbowHaki,function(value)
        AutoRainbowHaki = value
        StopTween(AutoRainbowHaki)
    end)
    
    local BossRainbow = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","Cake Queen"}
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoRainbowHaki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        repeat wait() TP(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)) until Dis(Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875)) <= 5 or not AutoRainbowHaki
                        if Dis(Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875)) <= 5 and AutoRainbowHaki then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                    for i,v in pairs(BossRainbow) do
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan"), v) and AutoRainbowHaki then
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v) then
                                if game:GetService("Workspace").Enemies:FindFirstChild(v) or game:GetService("ReplicatedStorage"):FindFirstChild(v) then
                                    if game:GetService("Workspace").Enemies:FindFirstChild(v) then
                                        for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == v then
                                                if v2:FindFirstChild("HumanoidRootPart") and v2:FindFirstChild("Humanoid") and v2.Humanoid.Health > 0 and AutoRainbowHaki then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        if v2.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                            TP(v2.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                        else
                                                            TP(v2.HumanoidRootPart.CFrame * SetUp)
                                                        end
                                                        Collide(v2)
                                                        SuperAttack = true
                                                    until v2.Humanoid.Health <= 0 or not v2.Parent or not AutoRainbowHaki
                                                    SuperAttack = false
                                                end
                                            end
                                        end
                                    else
                                        CheckBossQuest(v)
                                        if v == "Beautiful Pirate" and Dis(Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)) > 1000 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				                        end
                                        repeat wait() if CFrameBoss then TP(CFrameBoss) end until Dis(CFrameBoss.Position) < 6 or not AutoRainbowHaki or game:GetService("Workspace").Enemies:FindFirstChild(v)
                                    end
                                else
                                    require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Waiting For The Boss<Color=/>"):Display()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
elseif World2 then
    Weapon:Seperator("Second Sea Event 🎉")
    Weapon:Toggle("Auto Factory",AutoFactory,function(value)
        AutoFactory = value
        StopTween(AutoFactory)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoFactory then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Core") or game:GetService("ReplicatedStorage"):FindFirstChild("Core") then
                        if Dis(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)) <= 2000 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                    SuperAttack = true
                                until not game:GetService("Workspace").Enemies:FindFirstChild("Core") or not AutoFactory
                                SuperAttack = false
                            else
                                repeat wait() TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)) until Dis(Vector3.new(424.12698364258, 211.16171264648, -427.54049682617)) < 6 or not AutoFactory
                            end
                        else
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = GetPosIsland("The Cafe")
                            game:GetService("Players").LocalPlayer.Character.Head:Destroy()
                            wait(5)
                        end
                    end
                end
            end)
        end
    end)
    Weapon:Seperator("Dark Coat 🌑")
    
    Weapon:Toggle("Auto Dark Beard",AutoDarkBeard,function(value)
        AutoDarkBeard = value
        StopTween(AutoDarkBeard)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
               if AutoDarkBeard then
                   if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                       if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                           for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                               if v.Name == "Darkbeard" then
                                   if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDarkBeard then
                                       repeat task.wait()
                                           EquipWeapon(Weapon)
                                           AutoHaki()
                                           if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                               TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                           else
                                               TP(v.HumanoidRootPart.CFrame * SetUp)
                                           end
                                           Collide(v)
                                           SuperAttack = true
                                       until v.Humanoid.Health <= 0 or not v.Parent or not AutoDarkBeard
                                       SuperAttack = false
                                   end
                               end
                           end
                       else
                           repeat wait() TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)) until Dis(Vector3.new(3780.0302734375, 22.652164459229, -3498.5859375)) < 6 or not AutoDarkBeard or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                       end
                   elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                       repeat wait() TP(CFrame.new(3780.02539, 15.8924818, -3499.91357)) until not AutoDarkBeard or Dis(CFrame.new(3780.02539, 15.8924818, -3499.91357)) <= 5 or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                   else
                       local Chest = GetNearestChest()
                       if Chest then
                           TP(Chest.CFrame)
                           if Dis(Chest.Position) <= 5 then
                               game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                           end
                      end
                   end
               end
            end)
        end
    end)
    Weapon:Seperator("Race 🧜")
    Weapon:Toggle("Auto Upgrade Race V2",AutoUpgradeRaceV2,function(value)
        AutoUpgradeRaceV2 = value
        StopTween(AutoUpgradeRaceV2)
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoUpgradeRaceV2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        if Dis(Vector3.new(-2777.236328125, 72.99190521240234, -3571.5791015625)) > 5 then
                            repeat wait() TP(CFrame.new(-2777.236328125, 72.99190521240234, -3571.5791015625)) until Dis(Vector3.new(-2777.236328125, 72.99190521240234, -3571.5791015625)) < 6 or not AutoUpgradeRaceV2
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2") == "Come back when you find them." then
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                repeat wait()
                                    TP(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                                    if Dis(game:GetService("Workspace"):FindFirstChild("Flower1").Position) < 6 and AutoUpgradeRaceV2 and game:GetService("Workspace"):FindFirstChild("Flower1").Transparency == 1 then
                                        require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Wait Until Tonight To Collect This Flower<Color=/>"):Display()
                                        wait(5)
                                    end
                                until Dis(game:GetService("Workspace"):FindFirstChild("Flower1").Position) < 6 or not AutoUpgradeRaceV2
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                repeat wait() TP(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame) until Dis(game:GetService("Workspace"):FindFirstChild("Flower2").Position) < 6 or not AutoUpgradeRaceV2
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoUpgradeRaceV2 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(Weapon)
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    Collide(v)
                                                    FastAttack = true
                                                    if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                        TargetMagnet = v
                                                        Magnet = true
                                                        AutoClick = true
                                                    end
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not AutoUpgradeRaceV2 or v.Humanoid.Health <= 0 or not v.Parent
                                                Magnet = false
                                                FastAttack = false
                                                AutoClick = false
                                            end
                                        end
                                    end
                                else
                                    repeat wait() TP(CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)) until Dis(Vector3.new(-5536.4970703125, 101.08577728271, -835.59075927734)) < 6 or not AutoUpgradeRaceV2 or game:GetService("Workspace").Enemies:FindFirstChild("Zombie")
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Toggle("Upgrade Race V3 [Beta]",AutoUpgradeRaceV3,function(value)
        AutoUpgradeRaceV3 = value
        StopTween(AutoUpgradeRaceV3)
    end)
    
    function HumanV3QuestBoss()
        return tostring((game:GetService("Workspace").Enemies:FindFirstChild("Diamond") or game:GetService("ReplicatedStorage"):FindFirstChild("Diamond") or game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") or game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") or game:GetService("Workspace").Enemies:FindFirstChild("Fajita") or game:GetService("ReplicatedStorage"):FindFirstChild("Fajita")).Name)
    end
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoUpgradeRaceV3 then
                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","info") == "You haven't completed my order yet. Talk to me again once you defeat Jeremy, Fajita and Diamond." then
                            local BossName = HumanV3QuestBoss()
                            if game:GetService("Workspace").Enemies:FindFirstChild(v) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == BossName then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoUpgradeRaceV3 then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoUpgradeRaceV3
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                CheckBossQuest(BossName)
                                repeat wait() TP(CFrameBoss) until Dis(CFrameBoss.Position) <= 5 or not AutoUpgradeRaceV3 or game:GetService("Workspace").Enemies:FindFirstChild(BossName)
                            end
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","info") == "You haven't completed my order yet. Talk to me again once you defeat 5 players." then
                            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do 
                                if v.Name ~= game:GetService("Players").LocalPlayer.Character.Name and AutoUpgradeRaceV3 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    PosToUse = v.HumanoidRootPart
                                    repeat task.wait()
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,3,3))
                                        game:GetService("Workspace").Camera.CFrame = CFrame.lookAt(game:GetService("Workspace").Camera.CFrame.Position, v.HumanoidRootPart.Position - Vector3.new(0,10,0))
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 50 then
                                            AutoClick = true
                                            AimbotSkill = true
                                            AutoUseSkill = true
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoUpgradeRaceV3 or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 or ChangePlayerToKill == true
                                    if ChangePlayerToKill == true then
                                        ChangePlayerToKill = false
                                    end
                                    AutoClick = false
                                    FastAttack = false
                                    AutoUseSkill = false
                                    AimbotSkill = false
                                end
                            end
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","info") == "You haven't completed my order yet. Talk to me again once you pick up 30 treasure chests." then
                            repeat wait()
                                local Chest = GetNearestChest()
                                if Chest then
                                    TP(Chest.CFrame)
                                    if Dis(Chest.Position) <= 5 then
                                        game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                                    end
                                end
                            until not AutoUpgradeRaceV3 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2
                        end
                    elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad","3")
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
             pcall(function()
                 if AutoUpgradeRaceV3 and PosToUse then
                     repeat task.wait() AimbotPos = PosToUse.Position until not PosToUse.Parent
                 end
             end)
        end
    end)
    
    Weapon:Button("Change Target [Ghoul Race]",function()
        ChangePlayerToKill = true
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoUseSkill and PosToUse and Dis(PosToUse.Position) <= 10 then
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Melee" then
							    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						        wait(0.5)
					    	end
						end
				    end
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						        wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(0.5)
						    end
						end
					end
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Sword" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(0.5)
					    	end
						end
					end
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Gun" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
								game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    wait(.2)
							    game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							    game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						        wait(0.5)
							end
						end
					end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Sword 🗡")
    
    Weapon:Toggle("Auto Rengoku Sword",AutoRengoku,function(value)
        AutoRengoku = value
        StopTween(AutoRengoku)
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoRengoku and not GetInventory("Rengoku") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        repeat wait() TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875)) until Dis(Vector3.new(6571.1201171875, 299.23028564453, -6967.841796875)) < 6 or not AutoRengoku
                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoRengoku then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            Collide(v)
                                            FastAttack = true
                                            if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                TargetMagnet = v
                                                Magnet = true
                                                AutoClick = true
                                            end
                                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not AutoRengoku or v.Humanoid.Health <= 0 or not v.Parent
                                        Magnet = false
                                        FastAttack = false
                                        AutoClick = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(5787.12744140625, 104.92536163330078, -6592.59521484375)) until Dis(Vector3.new(5787.12744140625, 104.92536163330078, -6592.59521484375)) < 6 or not AutoRengoku or game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Quest 📃")
    Weapon:Toggle("Auto Bartilo Quest",AutoBartiloQuest,function(value)
        AutoBartiloQuest = value
        StopTween(AutoBartiloQuest)
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoBartiloQuest then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Swan Pirate" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoBartiloQuest then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                                Collide(v)
                                                FastAttack = true
                                                if Dis(v.HumanoidRootPart.Position) <= 30 then
                                                    TargetMagnet = v
                                                    Magnet = true
                                                    AutoClick = true
                                                end
                                            until not v.Parent or v.Humanoid.Health <= 0 or not AutoBartiloQuest or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            Magnet = false
                                            FastAttack = false
                                            AutoClick = false
                                        end
                                    end
                                end
                            else
                                repeat wait() TP(CFrame.new(932.624451, 156.106079, 1180.27466)) until Dis(Vector3.new(932.624451, 156.106079, 1180.27466)) < 6 or not AutoBartiloQuest or game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate")
                            end
                        else
                            repeat wait() TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) until Dis(CFrame.new(-456.28952, 73.0200958, 299.895966)) <= 5 or not AutoBartiloQuest
                            if Dis(Vector3.new(-456.28952, 73.0200958, 299.895966)) <= 10 and AutoBartiloQuest then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") or game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Jeremy" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoBartiloQuest then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoBartiloQuest
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                repeat wait() TP(CFrame.new(2203.76953, 448.966034, 752.731079)) until not AutoBartiloQuest or Dis(Vector3.new(2203.76953, 448.966034, 752.731079)) < 6 or game:GetService("Workspace").Enemies:FindFirstChild("Jeremy")
                            end
                        else
                            repeat wait() TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) until not AutoBartiloQuest or Dis(Vector3.new(-456.28952, 73.0200958, 299.895966)) < 6
                            if Dis(Vector3.new(-456.28952, 73.0200958, 299.895966)) <= 10 and AutoBartiloQuest then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 and game:GetService("Workspace").Map.Dressrosa.CellDoor:GetChildren()[1].CanCollide == true then
                        repeat TP(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1850.49329, 13.1789551, 1750.89685)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1858.87305, 19.3777466, 1712.01807)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1803.94324, 16.5789185, 1750.89685)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1858.55835, 16.8604317, 1724.79541)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1869.54224, 15.987854, 1681.00659)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1800.0979, 16.4978027, 1684.52368)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1819.26343, 14.795166, 1717.90625)) <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not AutoBartiloQuest or Dis(Vector3.new(-1813.51843, 14.8604736, 1724.79541)) <= 10
                    end
                end 
            end)
        end
    end)
    SelectSwanFruit = "Quake-Quake"
    Weapon:Dropdown("Select Fruit Swan Quest",{"Quake Fruit","Buddha Fruit","Love Fruit","Spider Fruit","Sound Fruit","Phoenix Fruit","Portal Fruit","Rumble Fruit","Pain Fruit","Blizzard Fruit","Gravity Fruit","Mammoth Fruit","T-Rex Fruit","Dough Fruit","Shadow Fruit","Venom Fruit","Control Fruit","Spirit Fruit","Dragon Fruit","Leopard Fruit","Kitsune Fruit"},function(value)
        CheckFruit(value)
        SelectSwanFruit = GetFruit
    end)
    
    Weapon:Toggle("Auto Don Swan",AutoDonSwan,function(value)
        AutoDonSwan = value
        StopTween(AutoDonSwan)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoDonSwan then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Don Swan" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoDonSwan then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                else
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                end
                                                Collide(v)
                                                SuperAttack = true
                                            until v.Humanoid.Health <= 0 or not v.Parent or not AutoDonSwan
                                            SuperAttack = false
                                        end
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 1 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",SelectSwanFruit) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                        end
                    end
                end
            end)
        end
    end)
    
    Weapon:Seperator("Legendary Sword 🗡")

        
    Weapon:Toggle("Auto Buy Legendary Katana",AutoBuyLegendaryKatana,function(value)
        AutoBuyLegendaryKatana = value
    end)
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoBuyLegendaryKatana then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
                end
            end)
        end
    end)

    Weapon:Button("Buy Legendary Katana",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
    end)
    
    Weapon:Seperator("Enchancement Color ☻️")
    local HakiColor = Weapon:Label("Enchancement Color : ???")
    local TypeHaki = Weapon:Label("Color Type : ???")
    spawn(function()
        while wait(1) do
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1") then
                    Haki1,Haki2 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","1")
                    HakiColor:Set("Enchancement Color : "..tostring(Haki1))
                    if Haki2 == 7500 then
                        TypeHaki:Set("Color Type : Legendary")
                    else
                        TypeHaki:Set("Color Type : Regular")
                    end
                else
                    HakiColor:Set("Enchancement Color : ???")
                    TypeHaki:Set("Color Type : ???")
                end
            end)
        end
    end)
    
    Weapon:Button("Buy Enchancement Color",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
    end)
    
    Weapon:Toggle("Auto Buy Enchancement Color",AutoBuyEnchancementColor,function(value)
       AutoBuyEnchancementColor = value
    end)
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoBuyEnchancementColor then
                   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2")
                end
            end)
        end
    end)
elseif World1 then
    Weapon:Seperator("Sword 🗡")
    
    Weapon:Toggle("Auto Saber",AutoSaber,function(value)
        AutoSaber = value
        StopTween(AutoSaber)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSaber and game:GetService("Players").LocalPlayer.Data.Level.Value >= 200 then
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 1 and (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Saber Expert" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoSaber then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                            else
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(v)
                                            SuperAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not AutoSaber
                                        SuperAttack = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478)) until Dis(CFrame.new(-1442.16553, 29.8788261, -28.3547478)) <= 5 or not AutoSabet or game:GetService("Workspace").Enemies:FindFirstChild("Saber Exper")
                        end
                    elseif game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 and game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        for i,v in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
                            if v:FindFirstChild("Button") and v.Button.BrickColor ~= BrickColor.new("Camo") then
                                TP(v.Button.CFrame)
                            end
                        end
                    elseif game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 1 and game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torch")) and game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            EquipWeapon("Torch")
                            repeat wait() TP(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587)) until Dis(CFrame.new(1114.61475, 5.04679728, 4350.22803)) <= 5 or not AutoSaber or game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 1
                        elseif game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 and not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torch")) then
                            repeat wait() TP(CFrame.new(-1610.05591, 12.0120544, 163.585754, -0.803700328, -5.06366327e-08, -0.595034242, -2.32499762e-08, 1, -5.36954303e-08, 0.595034242, -2.93205016e-08, -0.803700328)) until Dis(CFrame.new(-1610.05591, 12.0120544, 163.585754)) <= 5 or not AutoSaber or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Torch") or game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 1
                        elseif game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 1 then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup")))
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoSaber then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        if v.HumanoidRootPart:FindFirstChild("BodyPosition") then
                                                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,20))
                                                        else
                                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        end
                                                        Collide(v)
                                                        SuperAttack = true
                                                    until v.Humanoid.Health <= 0 or not v.Parent or not AutoSaber
                                                    SuperAttack = false
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-2848.59399, 7.4272871, 5342.44043)) until not AutoSaber or Dis(CFrame.new(-2848.59399, 7.4272871, 5342.44043)) <= 5 or game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader")
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 and game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Relic") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Relic") then
                                    EquipWeapon("Relic")
                                    repeat wait() TP(CFrame.new(-1405.18494, 29.8520012, 3.67132092, 0.844347835, -9.50542685e-08, 0.535795391, 1.31433396e-07, 1, -2.97151335e-08, -0.535795391, 9.5511318e-08, 0.844347835)) until Dis(CFrame.new(-1405.18494, 29.8520012, 3.67132092)) <= 5 or not AutoSaber or game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 1
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
end


if not World3 then
    Sea:Seperator("Only Third Sea❗")
else
    Sea:Seperator("Sea Event 🐬")
    
    Sea:Dropdown("Select Boat",{"Dinghy","PirateSloop","MarineSloop","PirateBrigade","MarineBrigade","PirateGrandBrigade","MarineGrandBrigade","Miracle","The Sentinel","Guardian","Lantern","Sleigh","Beast Hunter"},function(value)
        SelectBoat = value
    end)
    
    local DangerDropdown = Sea:Dropdown("Select Dangerous Level",{"Summon Kitsune Island","6","5","4","3","2","1"},function(value)
        SelectDangerousLevel = value
    end)
    
    Sea:Toggle("Auto Sea Event",AutoSeaEvent,function(value)
        AutoSeaEvent = value
        StopTween(AutoSeaEvent)
        game:GetService("Lighting").LightingLayers:Destroy()
    end)
    
    function GetBoat()
        for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if tostring(v:FindFirstChild("Owner").Value) == tostring(game:GetService("Players").LocalPlayer.Name) then
                return v
            end
        end
        return false
    end
    
    local SeaEventList = {"SeaBeasts","Enemies","SeaEvents"}
    
    function GetSeaEvent(Boat)
        for i,v in pairs(SeaEventList) do
            for i,v in pairs(game:GetService("Workspace"):FindFirstChild(v):GetChildren()) do
                if Dis(v.HumanoidRootPart.Position) <= 500 and Dis(Boat.VehicleSeat.Position) <= 500 then
                    return v
                end
            end
        end
        return false
    end
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSeaEvent then
                    if SelectDangerousLevel == "1" then
                        DangerousLevel = Vector3.new(-21770.298828125, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "2" then
                        DangerousLevel = Vector3.new(-25879.01171875, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "3" then
                        DangerousLevel = Vector3.new(-29848.03515625, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "4" then
                        DangerousLevel = Vector3.new(-33200.7265625, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "5" then
                        DangerousLevel = Vector3.new(-38010.1875, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "6" then
                        DangerousLevel = Vector3.new(-42987.9296875, -0.34796223044395447, 422.0)
                    elseif SelectDangerousLevel == "Summon Kitsune Island" then
                        DangerousLevel = Vector3.new(-42225.17578125, 0.34796223044395447, 422.0)
                    else
                        DangerousLevel = Vector3.new(-42987.9296875, -0.34796223044395447, 422.0)
                    end
                    local Boat = GetBoat()
                    if Boat then
                        if DangerousLevel then
                            if (DangerousLevel - Boat.VehicleSeat.Position).Magnitude > 300 then
                                if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == true then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                                else
                                    Boat.VehicleSeat.CFrame = CFrame.new(DangerousLevel)
                                end
                            elseif (DangerousLevel - Boat.VehicleSeat.Position).Magnitude <= 300 then
                                local SeaEventTarget = GetSeaEvent(Boat)
                                if SeaEventTarget then
                                    print(SeaEventTarget.Name)
                                    if SeaEventTarget:FindFirstChild("HumanoidRootPart") and SeaEventTarget:FindFirstChild("Humanoid") and SeaEventTarget:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(Weapon)
                                            if TPLowHealth and game:GetService("Players").LocalPlayer.Chacracter.Humanoid.Health <= 3000 then
                                                TP(SeaEventTarget.HumanoidRootPart.CFrame * CFrame.new(0,100,0))
                                            else
                                                TP(SeaEventTarget.HumanoidRootPart.CFrame * SetUp)
                                            end
                                            Collide(SeaEventTarget)
                                            FastAttack = true
                                        until not SeaEventTarget.Parent or not AutoSeaEvent or SeaEventTarget.Humanoid.Health <= 0
                                        FastAttack = false
                                    end
                                elseif SeaEventTarget == false then
                                    repeat wait() if (DangerousLevel - Boat.VehicleSeat.Position).Magnitude <= 300 and Dis(Boat.VehicleSeat.Position) > 5 then TP(Boat.VehicleSeat.CFrame) end until not Boat or Dis(Boat.VehicleSeat.Position) <= 5 or not AutoSeaEvent or (DangerousLevel - Boat.VehicleSeat.Position).Magnitude > 300
                                end
                            end
                        end
                    elseif Boat == false then
                        repeat wait() TP(CFrame.new(-16205.5908203125, 9.06057357788086, 439.144287109375)) until Dis(Vector3.new(-16205.5908203125, 9.06057357788086, 439.144287109375)) <= 5 or not AutoSeaEvent
                        if Dis(Vector3.new(-16205.5908203125, 9.06057357788086, 439.144287109375)) <= 5 and AutoSeaEvent then
                            if SelectBoat then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat",SelectBoat)
                            else
                                require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Please Choose A Boat<Color=/>"):Display()
                                wait(5)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Sea:Toggle("TP Y If Low Health",TPLowHealth,function(value)
        TPLowHealth = value
    end)
    
    Sea:Toggle("Through Rock",ThroughRocks,function(value)
        ThroughRocks = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if ThroughRocks then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v.Name == "SmallGroup" or v.Name == "SmallCluster" or v.Name == "MediumGroup" or v.Name == "MediumFlat" or v.Name == "Large" or v.Name == "Largest" then
                            for i2,v2 in pairs(v:GetChildren()) do
                                if v2:IsA("MeshPart") and ThroughRocks then
                                    v2.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Sea:Seperator("Kitsune Event 🦊")
    
    local Moon = Sea:Label("?")

    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                    Moon:Set("🌕: 100% Moon")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                    Moon:Set("🌖 : 75% Moon")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                    Moon:Set("🌗 : 50% Moon")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                    Moon:Set("🌘 : 25% Moon")
                elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                    Moon:Set("🌘: 15% Moon")
                else
                    FM:Set("❌️ : Wait For Moon")
                end
            end)
        end 
    end)
   
    local CheckKitsune = Sea:Label("🏯: Kitsune Island Not Found ❌️")
   
    spawn(function()
        while wait(.5) do
            pcall(function()
                if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                    CheckKitsune:Set("🏯: Kitsune Island Found ✅️")
                else
                    CheckKitsune:Set("🏯: Kitsune Island Not Found ❌️")
                end
            end)
        end
    end)
    
    Sea:Toggle("Teleport Kitsine Island",TeleportKitsuneIsland,function(value)
        TeleportKitsuneIsland = value
        StopTween(TeleportKitsuneIsland)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if TeleportKitsuneIsland and game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                    repeat wait() TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,-2,-12)) until Dis(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.Position) < 6 or not game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") or not TeleportKitsuneIsland
                end
            end)
        end
    end)
    
    Sea:Toggle("Collect Blue Ember",AutoCollectEmber,function(value)
        AutoCollectEmber = value
        StopTween(AutoCollectEmber)
    end)
    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoCollectEmber then
                    game:GetService("ReplicatedStorage").Modules.Net["RE/CollectBlueEmber"]:FireServer()
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoCollectEmber then
                    if AutoCollectEmber then
                       TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame - CFrame.new(100,0,0))
                    end
                    wait(5)
                    if AutoCollectEmber then
                       TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame - CFrame.new(-100,0,0))
                    end
                    wait(5)
                    if AutoCollectEmber then
                       TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame - CFrame.new(0,0,100))
                    end
                    wait(5)
                    if AutoCollectEmber then
                       TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,-100))
                    end
                    wait(5)
                end
            end)
        end
    end)
    
    Sea:Button("Collect Ember [Click]",function()
        game:GetService("ReplicatedStorage").Modules.Net["RE/CollectBlueEmber"]:FireServer()
    end)
    
    Sea:Button("Random Ember",function()
        game:GetService("ReplicatedStorage").Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
    end)
    
    Sea:Toggle("Auto Random Ember",AutoRandomEmber,function(value)
        AutoRandomEmber = value
    end)
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoRandomEmber then
                    game:GetService("ReplicatedStorage").Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
                end
            end)
        end
    end)
    
    Sea:Button("Start Kitsune Event",function()
        game:GetService("ReplicatedStorage").Modules.Net["RE/TouchKitsuneStatue"]:FireServer()
    end)
    
    Sea:Seperator("Mirage Island 🏝")

    local MirageLabel = Sea:Label("🏝 : Mirage Island Not Found ❌️")

    spawn(function()
        while wait(1) do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    MirageLabel:Set('🏝️: Mirage Island Found ✅️')
                else
                    MirageLabel:Set('🏝 : Mirage Island Not Found ❌️')
                end
            end)
        end
    end)

    Sea:Toggle("Teleport Mirage Island",TeleportMirage,function(value)
        TeleportMirage = value
        game:GetService("Lighting").LightingLayers:Destroy()
        StopTween(TeleportMirage)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if TeleportMirage and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    repeat wait()
                        TP(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                    until not TeleportMirage or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                end
            end)
        end
    end)
    
    Sea:Toggle("Teleport to Highest Point",TeleportHighestPoint,function(value)
        TeleportHighestPoint = value
        game:GetService("Lighting").LightingLayers:Destroy()
        StopTween(TeleportHighestPoint)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if TeleportHighestPoint and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for _,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
			            if v:IsA("MeshPart") and TeleportHighestPoint and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
				            if v.MeshId == "rbxassetid://6745037796" then
					            repeat wait() TP(v.CFrame * CFrame.new(0, 211.88, 0)) until Dis(v.CFrame * CFrame.new(0, 211.88, 0)) <= 5 or not TeleportHighestPoint or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
				            end
			            end
		            end
                end
            end)
        end
    end)

    Sea:Toggle("Find Advanced Fruit Dealer",FindAdvancedFruitDealer,function(value)
        FindAdvancedFruitDealer = value
        StopTween(FindAdvancedFruitDealer)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FindAdvancedFruitDealer and game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") and Dis(game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.Position) > 10 then
                    require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | NPC Found<Color=/>"):Display()
                    repeat wait() TP(game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.CFrame) until Dis(game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.Position) <= 30 or not FindAdvancedFruitDealer or not game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer")
                end
            end)
        end
    end)

    Sea:Toggle("TP To Gear",TeleportGear,function(value)
        TeleportGear = value
        StopTween(TeleportGear)
    end)
    
    spawn(function()
        while wait(.5) do
            pcall(function()
                if TeleportGear and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
				        if v:IsA("MeshPart") and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and TeleportGear then 
                            if v.Material == Enum.Material.Neon then  
                                require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Gear Found<Color=/>"):Display()
                                repeat wait() TP(v.CFrame) until Dis(v.Position) <= 5 or not TeleportGear or not v.Parent or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                            end
                        end
		            end
                end
            end)
        end
    end)
    
    Sea:Toggle("Auto Look Moon",AutoLookMoon,function(value)
        AutoLookMoon = value
        while AutoLookMoon do
            wait(.1)
            game:GetService("Workspace").Camera.CFrame = CFrame.lookAt(game:GetService("Workspace").Camera.CFrame.Position, game:GetService("Workspace").Camera.CFrame.Position + game:GetService("Lighting"):GetMoonDirection() - Vector3.new(0,0.1,0))
        end
    end)

    Sea:Button("Remove Fog",function()
        game:GetService("Lighting").LightingLayers:Destroy()
    end)
    
    Sea:Seperator("Sea Event 🐋")
    
    local SpyStatus = Sea:Label("Spy Status : ???")
    spawn(function()
        while wait(.5) do
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == -1 then
                    SpyStatus:Set("Spy Status : I Don't Know Anything Yet ❌️")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == 1 then
                    SpyStatus:Set("Spy Status : 0/4")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == 2 then
                    SpyStatus:Set("Spy Status : 1/4")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == 3 then
                    SpyStatus:Set("Spy Status : 2/4")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == 4 then
                    SpyStatus:Set("Spy Status : 3/4")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan","1") == 5 then
                    SpyStatus:Set("Spy Status : 4/4 ✅️")
                end
            end)
        end
    end)
end

function CheckFruit(FruitName)
     if FruitName == "Bomb Fruit" then GetFruit = "Bomb-Bomb"
     elseif FruitName == "Spike Fruit" then GetFruit = "Spike-Spike"
     elseif FruitName == "Chop Fruit" then GetFruit = "Chop-Chop"
     elseif FruitName == "Spring Fruit" then GetFruit = "Spring-Spring"
     elseif FruitName == "Rocket Fruit" then GetFruit = "Rocket-Rocket"
     elseif FruitName == "Spin Fruit" then GetFruit = "Spin-Spin"
     elseif FruitName == "Falcon Fruit" then GetFruit = "Falcon-Falcon"
     elseif FruitName == "Smoke Fruit" then GetFruit = "Smoke-Smoke"
     elseif FruitName == "Flame Fruit" then GetFruit = "Flame-Flame"
     elseif FruitName == "Ice Fruit" then GetFruit = "Ice-Ice"
     elseif FruitName == "Sand Fruit" then GetFruit = "Sand-Sand"
     elseif FruitName == "Dark Fruit" then GetFruit = "Dark-Dark"
     elseif FruitName == "Ghost Fruit" then GetFruit = "Ghost-Ghost"
     elseif FruitName == "Diamond Fruit" then GetFruit = "Diamond-Diamond"
     elseif FruitName == "Light Fruit" then GetFruit = "Light-Light"
     elseif FruitName == "Love Fruit" then GetFruit = "Love-Love"
     elseif FruitName == "Rubber Fruit" then GetFruit = "Rubber-Rubber"
     elseif FruitName == "Barrier Fruit" then GetFruit = "Barrier-Barrier"
     elseif FruitName == "Magma Fruit" then GetFruit = "Magma-Magma"
     elseif FruitName == "Portal Fruit" then GetFruit = "Portal-Portal"
     elseif FruitName == "Quake Fruit" then GetFruit = "Quake-Quake"
     elseif FruitName == "Buddha Fruit" then GetFruit = "Buddha-Buddha"
     elseif FruitName == "Spider Fruit" then GetFruit = "Spider-Spider"
     elseif FruitName == "Phoenix Fruit" then GetFruit = "Phoenix-Phoenix"
     elseif FruitName == "Rumble Fruit" then GetFruit = "Rumble-Rumble"
     elseif FruitName == "Pain Fruit" then GetFruit = "Pain-Pain"
     elseif FruitName == "Gravity Fruit" then GetFruit = "Gravity-Gravity"
     elseif FruitName == "Dough Fruit" then GetFruit = "Dough-Dough"
     elseif FruitName == "Venom Fruit" then GetFruit = "Venom-Venom"
     elseif FruitName == "Shadow Fruit" then GetFruit = "Shadow-Shadow"
     elseif FruitName == "Control Fruit" then GetFruit = "Control-Control"
     elseif FruitName == "Blizzard Fruit" then GetFruit = "Blizzard-Blizzard"
     elseif FruitName == "Mammoth Fruit" then GetFruit = "Mammoth-Mammoth"
     elseif FruitName == "Sound Fruit" then GetFruit = "Sound-Sound"
     elseif FruitName == "Spirit Fruit" then GetFruit = "Spirit-Spirit"
     elseif FruitName == "T-Rex Fruit" then GetFruit = "TRex-TRex"
     elseif FruitName == "Dragon Fruit" then GetFruit = "Dragon-Dragon"
     elseif FruitName == "Leopard Fruit" then GetFruit = "Leopard-Leopard"
     elseif FruitName == "Kitsune Fruit" then GetFruit = "Kitsune-Kitsune"
     end
end

DevilFruit:Seperator("Devil Fruit 🍓")

DevilFruit:Toggle("Auto Bring Fruit",AutoBringFruit,function(value)
    AutoBringFruit = value
    StopTween(AutoBringFruit)
end)

spawn(function()
    while wait() do
    	pcall(function()
	    	if AutoBringFruit then
		    	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			    	if string.find(v.Name, "Fruit") then
			    	    if game:GetService("Workspace"):FindFirstChild(v.Name) then
					        TP(v:FindFirstChild("Handle").CFrame)
					    end
				    end
			    end
		    end
        end)
    end
end)

DevilFruit:Toggle("Auto Store Fruit",StoreFruit,function(value)
    StoreFruit = value
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if StoreFruit then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    CheckFruit(tostring(v.Name))
			        if string.find(v.Name, "Fruit") then
                        local args = {
                            [1] = "StoreFruit",
                            [2] = GetFruit,
                            [3] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name))
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    CheckFruit(tostring(v.Name))
			        if string.find(v.Name, "Fruit") then
                        local args = {
                            [1] = "StoreFruit",
                            [2] = GetFruit,
                            [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(tostring(v.Name))
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        end)
    end
end)

DevilFruit:Toggle("Auto Drop Fruit",DropFruit,function(value)
    DropFruit = value
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if DropFruit then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			        if string.find(v.Name, "Fruit") then
			            EquipWeapon(tostring(v.Name))
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(tostring(v.Name)).EatRemote:InvokeServer("Drop")
                    end
                end
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			        if string.find(v.Name, "Fruit") then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(tostring(v.Name)).EatRemote:InvokeServer("Drop")
                    end
                end
            end
        end)
    end
end)

DevilFruit:Toggle("Auto Random Fruit",AutoRandomFruit,function(value)
    AutoRandomFruit = value
    while AutoRandomFruit do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
        wait()
    end
end)

DevilFruit:Button("Random Fruit",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)

DevilFruit:Seperator("Esp❗")

if World2 then
    DevilFruit:Toggle("Flower Esp",FlowerEsp,function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
end
    
if not World1 then
    DevilFruit:Toggle("Sea Beast ESP",SeaBeastsESP,function(value)
        SeaBeastsESP = value
        while SeaBeastsESP do wait()
            UpdateSeaBeastsESP() 
        end
    end)
end

DevilFruit:Toggle("Player ESP",ESPPlayer,function(value)
    ESPPlayer = value
    while ESPPlayer do wait()
        UpdatePlayerChams()
    end
end)
    
DevilFruit:Toggle("Chest ESP",ChestESP,function(value)
    ChestESP = value
    while ChestESP do wait()
        UpdateChestEsp() 
    end
end)
    
DevilFruit:Toggle("Devil Fruit ESP",true,function(value)
    DevilFruitESP = value
end)

spawn(function()
   while wait() do
       pcall(function()
           if DevilFruitESP then
               UpdateBfEsp() 
           end
       end)
   end
end)

P:Seperator("Player 👤")
local PlayerList = {}

for _,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        table.insert(PlayerList, v.Name)
    end
end

local Player = P:Dropdown("Select Player",PlayerList,function(value)
    SelectPlayer = value
end)

P:Button("Refesh Player List",function()
    Player:Clear()
    for _,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            Player:Add(v.Name)
        end
    end
end)

spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if AimbotSkill then
					    args[2] = AimbotPos
					    return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

P:Toggle("Aimbot Skill",AimbotSkill,function(value)
    AimbotSkill = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if AimbotSkill then
                if game:GetService("Players"):FindFirstChild(SelectPlayer) and game:GetService("Players"):FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game:GetService("Players"):FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game:GetService("Players"):FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
                    repeat task.wait() AimbotPos = game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position until not game:GetService("Players"):FindFirstChild(SelectPlayer) or not AimbotSkill
                end
            end
        end)
    end
end)

P:Toggle("Spectate Player",SpectatePlayer,function(value)
    SpectatePlayer = value
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(SelectPlayer).Character.Humanoid
    until not SpectatePlayer
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

P:Button("Player Hunter Quest",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
end)

Stat:Seperator("Stat ⭐️")

Stat:Toggle("Auto Melee Point",PointMelee,function(value)
    PointMelee = value
end)

Stat:Toggle("Auto Defense Point",PointDefense,function(value)
    PointDefense = value
end)

Stat:Toggle("Auto Sword Point",PointSword,function(value)
    PointSword = value
end)

Stat:Toggle("Auto Gun Point",PointGun,function(value)
    PointGun = value
end)

Stat:Toggle("Auto Devil Fruit Point",PointBF,function(value)
    PointBF = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointMelee then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointDefense then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointSword then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointGun then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointBF then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
                end
            end
        end)
    end
end)

Tele:Seperator("Island 🏖")
    if World1 then
        Tele:Dropdown("Select Island",{
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
            },function(value)
            SelectIsland = value
        end)
    end
    
    if World2 then
        Tele:Dropdown("Select Island",{
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
            },function(value)
            SelectIsland = value
        end)
    end
    
    if World3 then
        Tele:Dropdown("Select Island",{
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outport"
            },function(value)
            SelectIsland = value
        end)
    end
function GetPosIsland(NameIsland)
     if NameIsland == "WindMill" then
        return CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
     elseif NameIsland == "Marine" then
        return CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
     elseif NameIsland == "Middle Town" then
        return CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
     elseif NameIsland == "Jungle" then
        return CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
     elseif NameIsland == "Pirate Village" then
        return CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
     elseif NameIsland == "Desert" then
        return CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
     elseif NameIsland == "Snow Island" then
        return CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
     elseif NameIsland == "MarineFord" then
        return CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
     elseif NameIsland == "Colosseum" then
        return  CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
     elseif NameIsland == "Sky Island 1" then
        return CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
     elseif NameIsland == "Sky Island 2" then  
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
     elseif NameIsland == "Sky Island 3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
     elseif NameIsland == "Prison" then
        return  CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
     elseif NameIsland == "Magma Village" then
        return CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
     elseif NameIsland == "Under Water Island" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
     elseif NameIsland == "Fountain City" then
        return CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
     elseif NameIsland == "Shank Room" then
        return CFrame.new(-1442.16553, 29.8788261, -28.3547478)
     elseif NameIsland == "Mob Island" then
        return CFrame.new(-2850.20068, 7.39224768, 5354.99268)
     elseif NameIsland == "The Cafe" then
        return CFrame.new(-383.6108093261719, 73.02007293701172, 296.5516662597656)
     elseif NameIsland == "Frist Spot" then
        return CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
     elseif NameIsland == "Dark Area" then
        return CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
     elseif NameIsland == "Flamingo Mansion" then
        return CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
     elseif NameIsland == "Flamingo Room" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
     elseif NameIsland == "Green Zone" then
        return  CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
     elseif NameIsland == "Factory" then
        return CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
     elseif NameIsland == "Colossuim" then
        return  CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
     elseif NameIsland == "Zombie Island" then
        return CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
     elseif NameIsland == "Two Snow Mountain" then
        return CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
     elseif NameIsland == "Punk Hazard" then
        return CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
     elseif NameIsland == "Cursed Ship" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
     elseif NameIsland == "Ice Castle" then
        return CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
     elseif NameIsland == "Forgotten Island" then
        return CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
     elseif NameIsland == "Ussop Island" then
        return CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
     elseif NameIsland == "Mini Sky Island" then
        return CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
     elseif NameIsland == "Great Tree" then
        return CFrame.new(2159.84716796875, 26.428485870361328, -6563.24609375)
     elseif NameIsland == "Castle On The Sea" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5078.60546875, 314.5412902832031, -3151.4267578125))
     elseif NameIsland == "MiniSky" then
        return CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
     elseif NameIsland == "Port Town" then
        return CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
     elseif NameIsland == "Hydra Island" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5742.65087890625, 610.9649658203125, -269.2676696777344))
     elseif NameIsland == "Floating Turtle" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
     elseif NameIsland == "Mansion" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12550.7861328125, 337.16827392578125, -7565.8291015625))
     elseif NameIsland == "Haunted Castle" then
        return CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
     elseif NameIsland == "Ice Cream Island" then
        return CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
     elseif NameIsland == "Peanut Island" then
        return CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
     elseif NameIsland == "Cake Island" then
        return CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375)
     elseif NameIsland == "Cocoa Island" then
        return CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375)
     elseif NameIsland == "Candy Island" then
        return CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625)
     elseif NameIsland == "Tiki Outport" then
        return CFrame.new(-16220.1484375, 9.0863618850708, 440.4098815917969)
     end
end
    Tele:Toggle("Teleport Island",TeleportIsland,function(value)
        TeleportIsland = value
        if TeleportIsland then
            repeat wait()
                if SelectIsland and GetPosIsland(SelectIsland) then
                    TP(GetPosIsland(SelectIsland))
                end
            until not TeleportIsland
        end
        StopTween(TeleportIsland)
    end)
    
    Tele:Button("Bypass TP [Risk]",function()
        if SelectIsland and GetPosIsland(SelectIsland) then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = GetPosIsland(SelectIsland)
            game:GetService("Players").LocalPlayer.Character.Head:Destroy()
        end
    end)

Tele:Seperator("World 🌍")

if World2 or World3 then
    Tele:Button("Go To First Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
end

if World1 or World3 then
    Tele:Button("Go To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
end

if World1 or World2 then
    Tele:Button("Go To Third Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
end

--Setting--
Setting:Seperator("Setting ⚙️")

SetUp = CFrame.new(0,28,0)
Setting:Button("Auto Spawn Point",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end)

Setting:Toggle("Auto Turn Haki",AutoTurnHaki,function(value)
    AutoTurnHaki = value
end)

    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoTurnHaki and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end)
        end
    end)

Setting:Toggle("Auto Turn Observation Haki",true,function(value)
    AutoKen = value
end)

spawn(function()
   while wait(.5) do
       pcall(function()
           if AutoKen then
               game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
           end
       end)
   end
end)

Setting:Toggle("Auto Activate Ability Race",AutoTurnAbility,function(value)
    AutoTurnAbility = value
end)

    spawn(function()
        while wait(.5) do
            pcall(function()
                if AutoTurnAbility then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end)
        end
    end)

Setting:Toggle("Auto Use Awakening Race",AutoTurnAwarkening,function(value)
    AutoTurnAwarkening = value
end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoTurnAwarkening and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed") and game:GetService("Players").LocalPlayer.Character.RaceTransformed.Value == false and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") then
                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening").RemoteFunction:InvokeServer(true)
                end
            end)
        end
    end)

DelayAttack = 0.75
Setting:Dropdown("Select Delay Attack",{0,0.25,0.5,0.75,1},function(value)
    DelayAttack = value
end)

Setting:Toggle("Auto Fast Attack",FastAttack,function(value)
    FastAttack = value
end)

Setting:Toggle("Auto Super Attack",RealSuperAttack,function(value)
   RealSuperAttack = value
end)

Setting:Toggle("Disable Attack Animation",true,function(value)
    DisableAttackAnimation = value
end)

Setting:Toggle("Boost Attack [Uncomfortable]",true,function(value)
    EnableClick = value
end)

Setting:Toggle("Auto Click",AutoClick,function(value)
    AutoClick = value
    EnableClick = value
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if AutoClick and EnableClick then
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end
        end)
    end)
end)

Setting:Toggle("Auto Hide Damage",true,function(value)
    HideDamage = value
    game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = not HideDamage
end)

Setting:Toggle("No Clip",NoClip,function(value)
    NoClip = value
end)

Setting:Toggle("Auto Rejoin Server",AutoRejoinServer,function(value)
    AutoRejoinServer = value
end)

spawn(function()
    while wait() do
	    pcall(function()
	        if AutoRejoinServer then
		        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
			        if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
			            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			        end
		        end)
	        end
	    end)
	end
end)


Setting:Toggle("Anti AFK",true,function(value)
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

Setting:Toggle("Remove Fog",RemoveFog,function(value)
   RemoveFog = value
   if RemoveFog then
        while wait() do
            game.Lighting.FogEnd = 9e9
        end
   else
        game.Lighting.FogEnd = 2500
   end
end)

Setting:Button("FPS Boost",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/thuannpt/Fps-boost/main/README.md"))()
end)

Shop:Seperator("Race 🎭")

Shop:Button("Buy Race Cyborg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer","Buy")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Shop:Button("Buy Race Ghoul",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","BuyCheck",4)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Change",4)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Shop:Seperator("Melee 💪")

MeleeList = {
    "Black Leg",
    "Electro",
    "Fishman Karate",
    "Dragon Claw",
    "Superhuman",
    "Death Step",
    "Sharkman Karate",
    "Electric Claw",
    "Dragon Talon",
    "Godhuman",
    "Sanguine Art"
}

Shop:Dropdown("Select Melee",MeleeList,function(value)
    MeleeSelect = value
end)

Shop:Button("Buy Melee",function()
    if MeleeSelect == "Black Leg" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    elseif MeleeSelect == "Electro" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    elseif MeleeSelect == "Fishman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    elseif MeleeSelect == "Dragon Claw" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    elseif MeleeSelect == "Superhuman" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    elseif MeleeSelect == "Death Step" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    elseif MeleeSelect == "Sharkman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    elseif MeleeSelect == "Electric Claw" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    elseif MeleeSelect == "Dragon Talon" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    elseif MeleeSelect == "Godhuman" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    elseif MeleeSelect == "Sanguine Art" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
end)

Shop:Seperator("Abilities ⚡")

Shop:Dropdown("Select Abilities",{"Buso Haki","Geppo","Soru","Observation Haki"},function(value)
    SelectAbilities = value
end)

Shop:Button("Buy Abilities",function(value)
    if SelectAbilities == "Buso Haki" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    elseif SelectAbilities == "Geppo" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    elseif SelectAbilities == "Soru" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    elseif SelectAbilities == "Observation Haki" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end
end)

Shop:Seperator("Stats ⭐️")

Shop:Button("Stats Refund [2.500F]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

Shop:Button("Race Reroll [3.000F]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

Misc:Seperator("Server ⚠️")

Misc:Button("Rejoin Server",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)

Misc:Button("Change Server",function()
    Hop()
end)

Misc:Seperator("Change Role 🎭")

Misc:Button("Marine",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Misc:Button("Pirate",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Misc:Seperator("Job ID 📂")

Misc:Label("Job ID : "..tostring(game.JobId))

Misc:Button("Copy Code Server",function()
    setclipboard("game:GetService(\"ReplicatedStorage\").__ServerBrowser:InvokeServer(\"teleport\", \""..tostring(game.JobId).."\")")
end)

Misc:Seperator("Code 🎁")

local CodeList = {
    "NEWTROLL",
    "fudd10",
    "fudd10_V2",
    "BigNews",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "JCWK",
    "StarcodeHEO",
    "MagicBUS",
    "KittGaming",
    "Sub2CaptainMaui",
    "Sub2OfficialNoobie",
    "TheGreatAce",
    "Sub2NoobMaster123",
    "Sub2Daigrock",
    "Axiore",
    "StrawHatMaine",
    "TantaiGaming",
    "Bluxxy",
    "SUB2GAMERROBOT_EXP1",
    "KITT_RESET",
    "Sub2UncleKizaru",
    "SUB2GAMERROBOT_RESET1"
}

Misc:Dropdown("Chọn Code",CodeList,function(value)
    SelectCode = value
end)

Misc:Button("Redeem Code",function()
    if SelectCode ~= nil then
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(SelectCode)
    end
end)

Misc:Button("Redeem All Code",function()
    for i,v in pairs(CodeList) do
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
    end
end)

Misc:Seperator("Open 🪧")

Misc:Button("Devil Fruit Shop",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

Misc:Button("Title Manager",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

Misc:Button("Haki Color Manager",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

Misc:Button("Awakening Skills Manager",function()
    game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)

Misc:Seperator("Misc 🗑")

Misc:Dropdown("Select Stage",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
    SelectStateHaki = value
end)
    
Misc:Button("Chuyển Đổi Dạng Haki",function()
    if SelectStateHaki == "State 0" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
    elseif SelectStateHaki == "State 1" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
    elseif SelectStateHaki == "State 2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
    elseif SelectStateHaki == "State 3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
    elseif SelectStateHaki == "State 4" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
    elseif SelectStateHaki == "State 5" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
    end
end)
if World3 then
    Misc:Toggle("Unlock All Portal",UnlockPortal,function(value)
        UnlockPortal = value
    end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if UnlockPortal then
                    if Dis(Vector3.new(-5084.8447265625, 316.48101806641, -3145.3752441406)) <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if Dis(Vector3.new(-12464.596679688, 376.30590820312, -7567.2626953125)) <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if Dis(Vector3.new(-5095.33984375, 316.48101806641, -3168.3134765625)) <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if Dis(Vector3.new(5741.869140625, 611.94750976562, -282.61154174805)) <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
end

Misc:Button("Unlock Max Camera",function()
    game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
end)

Misc:Seperator("Ability ⚡️")

Misc:Toggle("Infinity Energy",InfinityEnergy,function(value)
    InfinityEnergy = value
end)
spawn(function()
    while wait(.1) do
        if InfinityEnergy and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
            OldEnergy = game:GetService("Players").LocalPlayer.Character.Energy.Value
            repeat wait() game:GetService("Players").LocalPlayer.Character.Energy.Value = OldEnergy until game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 or not InfinityEnergy
        end
    end
end)

Misc:Toggle("Infinity Soru",InfinitySoru,function(value)
    InfinitySoru = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if InfinitySoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                for i,v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soru") then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                            for _,v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat wait(.1)
                                        v2.LastUse = 0
                                    until not InfinitySoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Misc:Toggle("Infinity Jump",true,function(value)
    game:GetService("UserInputService").JumpRequest:connect(function()
	    if value then
		    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
	    end
    end)
end)

Misc:Toggle("Infinity Ability",true,function(value)
    InfAbility = value
    if not InfAbility then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end)
    
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)

Misc:Toggle("Super Surfing",SuperSurfing,function(value)
    SuperSurfing = value
    while wait() do
        if SuperSurfing then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not SuperSurfing
                            end
                        end
                    end
                end
            end
        end
    end
end)


Misc:Toggle("Super Sky Jump",SuperSkyJump,function(value)
    SuperSkyJump = value
    while wait() do
        if SuperSkyJump then
            for i,v in next,getgc() do
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Skyjump then
                    for i2,v2 in pairs(getupvalues(v)) do
                        if typeof(v2) == "table" and i2 == 8 then
                            repeat wait(.1)
                                v2.LastUse = 0
                            until game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 or not SuperSkyJump
                        end
                    end
                end
            end
        end
    end
end)

if game.workspace:FindFirstChild("WaterWalk") then
    game.workspace:FindFirstChild("WaterWalk"):Destroy()
end
platform = Instance.new("Part")
platform.Name = "WaterWalk"
platform.Size = Vector3.new(math.huge, 1, math.huge)
platform.Transparency = 1
platform.Anchored = true
platform.Parent = game.workspace
Misc:Toggle("Walk On Water",true,function(value)
    WalkWater = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
			end
		end)
	end
end)
--tộc v4--
if not World3 then
    Race:Label("Only Third Sea ❗")
else
Race:Seperator("Race V4 🤯")
local FM = Race:Label("?")

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FM:Set("🌕: 100% Moon")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FM:Set("🌖 : 75% Moon")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FM:Set("🌗 : 50% Moon")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FM:Set("🌘 : 25% Moon")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FM:Set("🌘: 15% Moon")
            else
                FM:Set("❌️ : Wait For Moon")
            end
        end)
    end 
end)

function GetFloorTime()
    return math.floor(game:GetService("Lighting").ClockTime)
end

function FullMoonCheck()
    local Time = game:GetService("Lighting").ClockTime
    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and Time <= 5 then
        return tostring(GetFloorTime()) .. " ( Will End Moon In " .. tostring(math.floor(5 - Time)) .. " Minutes )"
    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and (Time > 5 and Time < 12) then
        return tostring(GetFloorTime()) .. " ( Fake Moon )"
    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and (Time > 12 and Time < 18) then
        return tostring(GetFloorTime()) .. " ( Will Full Moon In " .. tostring(math.floor(18 - Time)) .. " Minutes )"
    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" and (Time > 18 and Time <= 24) then
        return tostring(GetFloorTime()) .. " ( Will End Moon In " .. tostring(math.floor(24 + 6 - Time)) .. " Minutes )"
    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" and Time < 12 then
        return tostring(GetFloorTime()) .. " ( Will Full Moon In " .. tostring(math.floor(18 - Time)) .. " Minutes )"
    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" and Time > 12 then
        return tostring(GetFloorTime()).." ( Will Full Moon In "..tostring(math.floor(18 + 12 - Time)) .." Minutes )"
    end
    return "Bad Moon"
end



function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You Don't Have Race V4"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 or v229 == 3 then
        return "Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 5 then
        return "You're Full of Gears"
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    elseif v229 == 8 then
        return "Upgrades completed: " .. v228 - 5 .. "/5, Need Trains More"
    elseif v229 == 0 then
        return "Ready For Trial"
    else
        return "You Don't Have Race V4"
    end
end
function GetTime()
    if game:GetService("Lighting").ClockTime >= 18 or game:GetService("Lighting").ClockTime < 5 then
        return "Night"
    else
        return "Day"
    end
    return "Error"
end

local RaceStatus = Race:Label("Race Status : ???")
local TimeStatus = Race:Label("Time Status : ???")
local FullMoonStatus = Race:Label("Full Moon Status : ???")

spawn(function()
    while wait() do
        pcall(function()
            RaceStatus:Set("Race Status : "..CheckAcientOneStatus())
            TimeStatus:Set("Time Status : "..GetTime())
            FullMoonStatus:Set("Full Moon Status : "..FullMoonCheck())
        end)
    end
end)

local PlayersList = {}
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        table.insert(PlayersList,v.Name)
    end
end

local PlayerDropdown = Race:Dropdown("Select Player",PlayersList,function(value)
    SelectPlayerTrial = value
end)

Race:Button("Refresh",function()
    PlayerDropdown:Clear()
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            PlayerDropdown:Add(v.Name)
        end
    end
end)

Race:Toggle("Auto Follow Ability Race",AutoFollowAbilityRace,function(value)
    AutoFollowAbilityRace = value
end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoFollowAbilityRace then
                    if SelectPlayerTrial then
                        if game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Last Resort") or game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Energy Core") or game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Agility") or game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Heightened Senses") or game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Heavenly Blood") or game:GetService("Players"):FindFirstChild(SelectPlayerTrial).Character.HumanoidRootPart:FindFirstChild("Water Body") then
                            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                        end
                    else
                        require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Please Select A Player<Color=/>"):Display()
                    end
                end
            end)
        end
    end)

Race:Button("Go To Temple",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875))
end)

Race:Toggle("Auto Sealed King",AutoSealedKing,function(value)
    AutoSealedKing = value
    StopTween(AutoSealedKing)
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoSealedKing then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 1 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Begin")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 2 then
                    if Dis(CFrame.new(2952.8408203125, 2281.979248046875, -7216.93701171875)) <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Teleport")
                    else
                        if Dis(Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)) <= 500 then
                            repeat wait() TP(CFrame.new(28607.935546875, 14896.5078125, 105.07181549072266))until Dis(CFrame.new(28605.802734375, 14896.5078125, 105.57373046875)) <= 5 or not AutoSealedKing
                            if Dis(CFrame.new(28605.802734375, 14896.5078125, 105.57373046875)) <= 5 and AutoSealedKing then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","TeleportBack")
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875))
                        end
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 3 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Continue")
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 4 then
                    require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Completed, Please Turn Off This Function<Color=/>"):Display()
                    wait(5)
                end
            end
        end)
    end
end)

Race:Toggle("Reset If Trial Success",AutoReset,function(value)
    AutoReset = value
    while AutoReset do
        wait()
        if Dis(Vector3.new(28720.033203125, 14907.943359375, -57.29161834716797)) <= 250 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
            game:GetService("Players").LocalPlayer.Character.Head:Destroy()
        end
    end
end)

    spawn(function()
        while wait() do
            pcall(function()
                if AutoReset and Dis(Vector3.new(28720.033203125, 14907.943359375, -57.29161834716797)) <= 250 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") then
                    game:GetService("Players").LocalPlayer.Character.Head:Destroy()
                end
            end)
        end
    end)

Race:Toggle("Teleport Race Door",TeleportRaceDoor,function(value)
    TeleportRaceDoor = value
    StopTween(value)
end)

spawn(function()
    while wait() do
        pcall(function()
            if TeleportRaceDoor then
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y > 1000 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                        TP(CFrame.new(29237.234375, 14890.6318359375, -206.39141845703125))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                        TP(CFrame.new(28673.52734375, 14890.333984375, 454.8033447265625))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                        TP(CFrame.new(28968.255859375, 14919.28125, 234.32421875))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                        TP(CFrame.new(28491.94921875, 14895.6337890625, -422.38092041015625))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                        TP(CFrame.new(28223.69921875, 14890.6328125, -211.42984008789062))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                        TP(CFrame.new(29019.796875, 14890.6328125, -379.8318786621094))
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875))
                end
            end
        end)
    end
end)

Race:Toggle("Auto Trial Race V4",AutoTrial,function(value)
    AutoTrial = value
    StopTween(AutoTrial)
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoTrial then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
				    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							    if Dis(v.HumanoidRootPart.Position) <= 300 then
								    repeat task.wait()
									    v.Humanoid.Health = 0
									    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								    until not AutoTrial or not v.Parent or v.Humanoid.Health <= 0
							    end
						    end
					    end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name == "snowisland_Cylinder.081" then
						    if Dis(v.CFrame) <= 1000 then
							    TP(v.CFrame* CFrame.new(0,0,0))
							end
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name == "HumanoidRootPart" and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
							TP(v.CFrame)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
									    wait(0.5)
									end
								end
							end
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
									    wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,118,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(0.5)
									end
								end
							end
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(0.5)
									end
								end
							end
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
										game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            wait(.2)
							            game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							            game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
									    wait(0.5)
									end
								end
							end
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
				    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					    TP(CFrame.new(28654, 14898.7832, -30))
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
				    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						        if Dis(v.HumanoidRootPart.Position) <= 300 then
						            repeat task.wait()
									    v.Humanoid.Health = 0
									    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
						            until v.Humanoid.Health <= 0 or not AutoTrial or not v.Parent
						        end
							end
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
				    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
					    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						    if v.Name == "StartPoint" then
						        if Dis(v.CFrame) <= 1000 then
							        TP(v.CFrame* CFrame.new(0,10,0))
							    end
					  	    end
				   	    end
					end
				end
			end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if AutoTrial and Dis(Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)) <= 10 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                StopTween(false)
            end
        end)
    end
end)

Race:Toggle("Auto Train",AutoTrain,function(value)
    AutoTrain = value
    StopTween(AutoTrain)
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoTrain and game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                RaceInfo1, RaceInfo2, RaceInfo3 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoTrain and game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                if RaceInfo1 ~= 0 then
                    if RaceInfo1 == 2 or RaceInfo1 == 4 or RaceInfo1 == 7 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed").Value == true then
                        repeat wait() TP(CFrame.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) until game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed").Value == false or not AutoTrain
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoTrain and RaceInfo1 ~= 0 and game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed").Value == false or v229 ~= 5 then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        Collide(v)
                                        FastAttack = true
                                        if Dis(v.HumanoidRootPart.Position) <= 30 then
                                            TargetMagnet = v
                                            Magnet = true
                                            AutoClick = true
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening").RemoteFunction:InvokeServer(true)
                                        end
                                    until v.Humanoid.Health <= 0 or not AutoTrain or not v.Parent or RaceInfo1 == 2 or RaceInfo1 == 4 or RaceInfo1 == 7 or RaceInfo1 == 0 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceTransformed").Value == true or v229 ~= 5
                                    FastAttack = false
                                    Magnet = false
                                    AutoClick = false
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) until Dis(Vector3.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) < 6 or not Autotrain
                    end
                else
                    require(game.ReplicatedStorage.Notification).new("<Color=Red>Huy Hub | Train Success<Color=/>"):Display()
                    wait(5)
                end
            end
        end)
    end
end)

Race:Button("Buy Gear",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy")
end)

Race:Button("TP To Clock",function()
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y < 1000 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875))
    end
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	    if v:IsA("BasePart") then
		    v.CanCollide = false
	    end
    end
    TP(CFrame.new(29544.076171875, 15069.2001953125, -86.61145782470703))
end)
end
if not World1 then
Raid:Seperator("Raid 🧨")

local RaidSelect = {}

RaidsModule = require(game:GetService("ReplicatedStorage").Raids)
for i,v in pairs(RaidsModule.raids) do
	table.insert(RaidSelect,v)
end
for i,v in pairs(RaidsModule.advancedRaids) do
	table.insert(RaidSelect,v)
end

Raid:Dropdown("Select Raid",RaidSelect,function(value)
    RaidSelected = value
end)

local TimeRaid = Raid:Label("Waiting For Raid ⏱️")
    
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
            else
                TimeRaid:Set("Waiting For Raid ⏱️")
            end
        end)
    end
end)

Raid:Button("Buy Chip Selected",function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
        if RaidSelected then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", RaidSelected)
        else
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", "Flame")
        end
    end
end)

Raid:Button("Start Raid",function()
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end
end)

Raid:Toggle("Auto Next Island",AutoNextIsland,function(value)
    AutoNextIsland = value
    StopTween(AutoNextIsland)
end)
    
spawn(function()
    while wait() do
        pcall(function()
            if AutoNextIsland then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,50,0))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,50,0))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,50,0))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,50,0))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,50,0))
                    end
                end
            end
        end)
    end
end)

Raid:Toggle("Kill Aura",KillAura,function(value)
    KillAura = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if KillAura then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                v.Humanoid.Health = 0
                            until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)

Raid:Toggle("Auto Awakener",AutoAwakener,function(value)
    AutoAwakener = value
end)
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if AutoAwakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end)
        end
    end)
end