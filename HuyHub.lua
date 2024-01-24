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
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 400 or Lv <= 449 then
					NameQuest = "FishmanQuest"
					LevelQuest = 2
					NameMon = "Fishman Commando"
					CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
					CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					end
				elseif Lv == 450 or Lv <= 474 then
					NameQuest = "SkyExp1Quest"
					LevelQuest = 1
					NameMon = "God's Guard"
					CFrameQuest = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
					CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
				elseif Lv == 475 or Lv <= 524 then
					NameQuest = "SkyExp1Quest"
					LevelQuest = 2
					NameMon = "Shanda"
					CFrameQuest = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
					CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
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
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1275 or Lv <= 1299 then
					NameQuest = "ShipQuest1"
					LevelQuest = 2
					NameMon = "Ship Engineer"
					CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
					CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1300 or Lv <= 1324 then
					NameQuest = "ShipQuest2"
					LevelQuest = 1
					NameMon = "Ship Steward"
					CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1325 or Lv <= 1349 then
					NameQuest = "ShipQuest2"
					LevelQuest = 2
					NameMon = "Ship Officer"
					CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
					CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				elseif Lv == 1350 or Lv <= 1374 then
					NameQuest = "FrostQuest"
					LevelQuest = 1
					NameMon = "Arctic Warrior"
					CFrameQuest = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
					CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
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
					CFrameQuest = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
					CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
				elseif Lv >= 1450 then
					NameQuest = "ForgottenQuest"
					LevelQuest = 2
					NameMon = "Water Fighter"
					CFrameQuest = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
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
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
			elseif SelectedBoss == "The Saw" then
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854)
			elseif SelectedBoss == "Greybeard" then
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif SelectedBoss == "The Gorilla King" then
				NameQuestBoss = "JungleQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			elseif SelectedBoss == "Bobby" then
				NameQuestBoss = "BuggyQuest1"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
			elseif SelectedBoss == "Yeti" then
				NameQuestBoss = "SnowQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
			elseif SelectedBoss == "Mob Leader" then
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif SelectedBoss == "Vice Admiral" then
				NameQuestBoss = "MarineQuest2"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
			elseif SelectedBoss == "Warden" then
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 1
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Chief Warden" then
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 2
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Swan" then
				NameQuestBoss = "ImpelQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5190.27880859375, 3.5629642009735107, 687.6782836914062)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			elseif SelectedBoss == "Magma Admiral" then
				NameQuestBoss = "MagmaQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
			elseif SelectedBoss == "Fishman Lord" then
				NameQuestBoss = "FishmanQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif SelectedBoss == "Wysper" then
				NameQuestBoss = "SkyExp1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
				if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
			elseif SelectedBoss == "Thunder God" then
				NameQuestBoss = "SkyExp2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
			elseif SelectedBoss == "Cyborg" then
				NameQuestBoss = "FountainQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			elseif SelectedBoss == "Diamond" then
				NameQuestBoss = "Area1Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
			elseif SelectedBoss == "Jeremy" then
				NameQuestBoss = "Area2Quest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
			elseif SelectedBoss == "Fajita" then
				NameQuestBoss = "MarineQuest3"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
			elseif SelectedBoss == "Don Swan" then
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
			elseif SelectedBoss == "Smoke Admiral" then
				NameQuestBoss = "IceSideQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
			elseif SelectedBoss == "Cursed Captain" then
				if (Vector3.new(886.28179931641, 40.47790145874, 32800.83203125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		        end
			elseif SelectedBoss == "Darkbeard" then
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777)
			elseif SelectedBoss == "Order" then
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584)
			elseif SelectedBoss == "Awakened Ice Admiral" then
				NameQuestBoss = "FrostQuest"
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521)
			elseif SelectedBoss == "Tide Keeper" then
				NameQuestBoss = "ForgottenQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072)
			elseif SelectedBoss == "Stone" then
				NameQuestBoss = "PiratePortQuest"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
			elseif SelectedBoss == "Island Empress" then
				NameQuestBoss = "AmazonQuest2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
			elseif SelectedBoss == "Kilo Admiral" then
				NameQuestBoss = "MarineTreeIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
			elseif SelectedBoss == "Captain Elephant" then
				NameQuestBoss = "DeepForestIsland"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
			elseif SelectedBoss == "Beautiful Pirate" then
				NameQuestBoss = "DeepForestIsland2"             
				LevelQuestBoss = 3
				CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
			elseif SelectedBoss == "rip_indra True Form" then
				if (Vector3.new(-5121.33056640625, 314.5412902832031, -2961.544189453125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
		            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5093.7294921875, 314.5412902832031, -3131.57080078125))
		        end
			elseif SelectedBoss == "Longma" then
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
				if (Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				end
			elseif SelectedBoss == "Soul Reaper" then
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
			elseif SelectedBoss == "Cake Queen" then
				NameQuestBoss = "IceCreamIslandQuest"             
				LevelQuestBoss = 3
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
        if Pos.Position.Z <= 30000 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z > 30000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
    end
    Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == true then
        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
    end)
    tween:Play()
    if Distance <= 300 then
        tween:Cancel()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween then
        tween:Cancel()
    end
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
						CombatFrameworkR.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
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
	    while task.wait(.1) do
	        local ac = CombatFrameworkR.activeController
	        if ac and ac.equipped then
	            if SuperAttack then
	                AttackFunction()
	                if tick() - cooldownfastattack > 3.5 then task.wait() cooldownfastattack = tick() end
	            elseif FastAttack then
	                AttackFunction()
	    	        if tick() - cooldownfastattack > 3.5 then wait(1) cooldownfastattack = tick() end
	    	    end
	        end
    	end
    end)()

local Library = Update:Window("Huy Hub ")
local Main = Library:Tab("Main","rbxassetid://11446825283")
local Setting = Library:Tab("Setting","rbxassetid://11446835336")
local Weapon = Library:Tab("Item","rbxassetid://11446859498")
local Race = Library:Tab("Race V4","rbxassetid://11446900930")
local Stat = Library:Tab("Stats","rbxassetid://11447069304")
local P = Library:Tab("Combat","rbxassetid://11446900930")
local Tele = Library:Tab("Teleport","rbxassetid://11446920523")
local Raid = Library:Tab("Raid","rbxassetid://11446957539")
local DevilFruit = Library:Tab("Fruit + ESP","rbxassetid://11446965348")
local Shop = Library:Tab("Shop","rbxassetid://6031265976")
local Misc = Library:Tab("Misc","rbxassetid://11447063791")

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if Magnet and v.Name == TargetName and (v.HumanoidRootPart.Position - TargetPos.Position).magnitude <= 700 then
					v.HumanoidRootPart.CFrame = TargetPos
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
	    end)
    end)
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
            if AutoBuddy or AutoCavander or AutoTwinHook or AutoFarmCocoa or AutoEliteHunter or AutoElectricClaw or AutoHallowScythe or FarmChest or AutoBringFruit or NoClip or AutoFarmLevel or AutoNearestFarm or AutoSecondSea or AutoThirdSea or AutoFarmBoss or AutoFarmAllBoss or TeleportToMirage or TPToAdvancedFruitDealer or AutoCakePrince or AutoFarmBone or FarmDragonScale or AutoPirateRaid or TPToKitsune or AutoSeaEvent or AutoDragonTalon or AutoFactory or AutoDarkBeard or AutoRaceV2 or AutoRengoku or AutoBartiloQuest or AutoDonSwan or AutoNextIsland or TeleportToIsland then
		        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
	                if v:IsA("BasePart") then
				    	v.CanCollide = false
			    	end
		    	end
		    end
		end)
	end)
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
		    if AutoBuddy or AutoCavander or AutoTwinHook or AutoFarmCocoa or AutoEliteHunter or AutoElectricClaw or AutoHallowScythe or FarmChest or AutoBringFruit or AutoFarmLevel or AutoNearestFarm or AutoSecondSea or AutoThirdSea or AutoFarmBoss or AutoFarmAllBoss or TeleportToMirage or TPToAdvancedFruitDealer or AutoCakePrince or AutoFarmBone or FarmDragonScale or AutoPirateRaid or TPToKitsune or AutoSeaEvent or AutoDragonTalon or AutoFactory or AutoDarkBeard or AutoRaceV2 or AutoRengoku or AutoBartiloQuest or AutoDonSwan or AutoNextIsland or TeleportToIsland then
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

WeaponType = {
	"Melee",
	"Sword",
	"Devil Fruit"
}

Main:Dropdown("Select Weapon",WeaponType,function(value)
    SelectWeapon = value
end)

spawn(function()
	while wait(1) do
		pcall(function()
		    for i ,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
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
			    elseif SelectWeapon == "Devil Fruit" then
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
                    Magnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        wait()
                        TP(CFrameQuest)
                    until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmLevel
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmLevel then
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(NameMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoFarmLevel then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or NameMon == "Sun-kissed Warrior" then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
					                        TP(v.HumanoidRootPart.CFrame * SetUp)
					                        TargetPos = v.HumanoidRootPart.CFrame
					                        TargetName = v.Name
                                            FastAttack = true
                                            Magnet = true
                                        until v:FindFirstChild("Humanoid").Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not AutoFarmLevel or not v.Parent
                                        Magnet = false
                                        FastAttack = false
                                    end
                                end
                            end
                        end
                    else
                        CheckQuestLevel()
                        repeat wait() TP(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmLevel
                    end
                end
            end)
        end
    end
end)

Main:Toggle("Auto Farm Nearest",AutoNearestFarm,function(value)
    AutoNearestFarm = value
    StopTween(AutoNearestFarm)
end)

spawn(function()
    pcall(function()
        while wait() do
            if AutoNearestFarm then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoNearestFarm and not string.find(v:FindFirstChild("Humanoid").DisplayName, "Boss") then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                TargetName = v.Name
                                TargetPos = v.HumanoidRootPart.CFrame
                                FastAttack = true
                                Magnet = true
                            until v:FindFirstChild("Humanoid").Health <= 0 or not AutoNearestFarm or not v.Parent
                            FastAttack = false
                            Magnet = false
                        end
                    end
                end
            end
        end
    end)
end)

if World1 then
    Main:Seperator("Main Quest ✈️")
    
    Main:Toggle("Auto Second Sea",AutoSecondSea,function(value)
        AutoSecondSea = value
        StopTween(AutoSecondSea)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoSecondSea then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 1 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            repeat wait()
                                EquipWeapon("Key")
                                repeat wait() TP(CFrame.new(1348.312744140625, 37.349327087402344, -1326.2479248046875)) until (Vector3.new(1348.312744140625, 37.349327087402344, -1326.2479248046875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoSecondSea
                                Look(game:GetService("Workspace").Map.Ice.Door)
                            until not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") or game:GetService("Workspace").Map.Ice.Door.Transparency == 1 or not AutoSecondSea
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                local BossIce = game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral")
                                if BossIce:FindFirstChild("HumanoidRootPart") and BossIce:FindFirstChild("Humanoid") and BossIce:FindFirstChild("Humanoid").Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        BossIce.HumanoidRootPart.CFrame = CFrame.new(BossIce.HumanoidRootPart.Position)
                                        TP(BossIce.HumanoidRootPart.CFrame * SetUp)
                                        FastAttack = true
                                    until BossIce:FindFirstChild("Humanoid").Health <= 0 or not BossIce.Parent or not AutoSecondSea
                                    FastAttack = false
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                repeat wait() TP(CFrame.new(1306.806884765625, 30.175724029541016, -1353.4013671875)) until (Vector3.new(1306.806884765625, 30.175724029541016, -1353.4013671875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoSecondSea
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end
        end)
    end)
elseif World2 then
    Main:Seperator("Main Quest ✈️")
    Main:Toggle("Auto Third Sea",AutoThirdSea,function(value)
        AutoThirdSea = value
        StopTween(AutoThirdSea)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if AutoThirdSea then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                            TP(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                                local Rip = game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")
                                if Rip:FindFirstChild("HumanoidRootPart") and Rip:FindFirstChild("Humanoid") and Rip:FindFirstChild("Humanoid").Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(Weapon)
                                        Rip.HumanoidRootPart.CFrame = CFrame.new(Rip.HumanoidRootPart.Position)
                                        if Rip.Energy.Value ~= 100 then
                                            TP(Rip.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                        else
                                            TP(Rip.HumanoidRootPart.CFrame * SetUp)
                                        end
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                        FastAttack = true
                                    until not AutoThirdSea or Rip:FindFirstChild("Humanoid").Health <= 0 or not Rip.Parent
                                    FastAttack = false
                                end
                            end
                        end
                    end
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
            end
        end)
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
	TableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","The Saw"}
elseif World2 then
	TableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Awakened Ice Admiral","Tide Keeper","Cursed Captain","Darkbeard","Order"}
elseif World3 then
	TableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","Longma","Cake Queen","rip_indra True Form","Soul Reaper"}
end

Main:Dropdown("Select Boss",TableBoss,function(value)
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
                if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
                    CheckBossQuest(SelectBoss)
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, SelectBoss) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and SelectBoss ~= "Don Swan" and SelectBoss ~= "Darkbeard" and SelectBoss ~= "Order" and SelectBoss ~= "Greybeard" and SelectBoss ~= "The Saw" and SelectBoss ~= "rip_indra True Form" and SelectBoss ~= "Soul Reaper" and SelectBoss ~= "Longma" and SelectBoss ~= "Mob Leader" and BossQuest then
                        if SelectBoss == "Beautiful Pirate" and (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				        end
                        repeat wait()
                            TP(CFrameQuestBoss)
                        until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmBoss or not BossQuest
                        if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmBoss and BossQuest then
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,LevelQuestBoss)
                            wait(1)
                        end
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        local Boss = game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss)
                        if Boss:FindFirstChild("Humanoid") and Boss:FindFirstChild("HumanoidRootPart") and Boss:FindFirstChild("Humanoid").Health > 0 then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                Boss.HumanoidRootPart.CFrame = CFrame.new(Boss.HumanoidRootPart.Position)
                                if Boss.Energy.Value ~= 100 then
                                    TP(Boss.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                else
                                    TP(Boss.HumanoidRootPart.CFrame * SetUp)
                                end
                                FastAttack = true
                            until not AutoFarmBoss or not Boss.Parent or Boss:FindFirstChild("Humanoid").Health <= 0
                            FastAttack = false
                        end
                    else
                        CheckBossQuest(SelectBoss)
                        if SelectBoss == "Beautiful Pirate" and (Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				        end
                        repeat wait() TP(CFrameBoss) until (CFrameBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmBoss
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
                for i,v in pairs(TableBoss) do
                    if AutoFarmAllBoss then
                        if game:GetService("Workspace").Enemies:FindFirstChild(v) or game:GetService("ReplicatedStorage"):FindFirstChild(v) then
                            CheckBossQuest(v)
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v) then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and v ~= "Don Swan" and v ~= "Darkbeard" and v ~= "Order" and v ~= "Greybeard" and v ~= "The Saw" and v ~= "rip_indra True Form" and v ~= "Soul Reaper" and v ~= "Longma" and v ~= "Mob Leader" and BossQuest then
                                if SelectBoss == "Beautiful Pirate" and (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				                end
                                repeat wait()
                                    TP(CFrameQuestBoss)
                                until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not AutoFarmAllBoss or not BossQuest
                                if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestBoss.Position).Magnitude < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and AutoFarmAllBoss and BossQuest then
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuestBoss,LevelQuestBoss)
                                    wait(1)
                                end
                            end
                            if game:GetService("Workspace").Enemies:FindFirstChild(v) then
                                local Boss = game:GetService("Workspace").Enemies:FindFirstChild(v)
                                if Boss:FindFirstChild("Humanoid") and Boss:FindFirstChild("HumanoidRootPart") and Boss:FindFirstChild("Humanoid").Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        Boss.HumanoidRootPart.CFrame = CFrame.new(Boss.HumanoidRootPart.Position)
                                        if Boss.Energy.Value ~= 100 then
                                            TP(Boss.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                        else
                                            TP(Boss.HumanoidRootPart.CFrame * SetUp)
                                        end
                                        FastAttack = true
                                    until not AutoFarmAllBoss or not Boss.Parent or Boss:FindFirstChild("Humanoid").Health <= 0
                                    FastAttack = false
                                end
                            elseif not BypassBoss then
                                CheckBossQuest(v)
                                if SelectBoss == "Beautiful Pirate" and (Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				                end
                                repeat wait() TP(CFrameBoss) until (CFrameBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmAllBoss
                            elseif BypassLongma then
                                if v ~= "Longma" then
                                    CheckBossQuest(v)
                                    if SelectBoss == "Beautiful Pirate" and (Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				                    end
                                    repeat wait() TP(CFrameBoss) until (CFrameBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmAllBoss
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Main:Toggle("Boss Quest",true,function(value)
    BossQuest = value
end)
if World3 then
    Main:Toggle("Bypass Longma",BypassLongma,function(value)
        BypassLongma = value
    end)
end

Main:Seperator("Chest 📦")

Main:Toggle("Auto Farm Chest",FarmChest,function(value)
    FarmChest = value
    StopTween(FarmChest)
end)

spawn(function()
    pcall(function()
        while wait() do
            if FarmChest then
                DisChest = {200,400,600,800,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000,11000,12000,13000,14000,15000,16000,17000,18000,19000,20000}
                for i,v in pairs(DisChest) do
                    if FarmChest then
                        for i2,v2 in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v2.Name == "Chest1" or v2.Name == "Chest2" or v2.Name == "Chest3" then
                                if (v2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= v and FarmChest then
                                    repeat wait()
                                        TP(v2.CFrame * CFrame.new(0,2.5,2))
                                        if (v2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                            game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                                        end
                                    until not v2.Parent or not FarmChest
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end)

Main:Toggle("Auto Farm Chest 2",FarmChest2,function(value)
    FarmChest2 = value
    StopTween(FarmChest2)
end)

spawn(function()
    pcall(function()
        while wait() do
            if FarmChest2 then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and FarmChest2 then
                            repeat wait()
                                TP(v.CFrame * CFrame.new(0,2.5,2))
                                if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                    game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                                end
                            until not v.Parent or not FarmChest2
                        end
                    end
                end
                ChestMax = true
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20000 and FarmChest2 and ChestMax then
                            repeat wait()
                                TP(v.CFrame * CFrame.new(0,2.5,2))
                                if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                    game:GetService"Players".LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState("Jumping")
                                end
                            until not v.Parent or not FarmChest2
                            ChestMax = false
                        end
                    end
                end
            end
        end
    end)
end)

if World3 then
Main:Seperator("Mirage Island 🏝")

local MirageLabel = Main:Label("🏝 : Mirage Island Not Found ❌️")

spawn(function()
    pcall(function()
        while wait(1) do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MirageLabel:Set('🏝️: Mirage Island Found ✅️')
            else
                MirageLabel:Set('🏝 : Mirage Island Not Found ❌️')
            end
        end
    end)
end)

Main:Toggle("TP To Mirage Island",TeleportToMirage,function(value)
    TeleportToMirage = value
    repeat wait()
        TP(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
    until not TeleportToMirage or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    StopTween(TeleportToMirage)
end)

Main:Toggle("Find Advanced Fruit Dealer",FindAdvancedFruitDealer,function(value)
    FindAdvancedFruitDealer = value
    while FindAdvancedFruitDealer do
        if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") and (game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Huy Hub";
                Text = "Found NPC";
                Duration = 5;
            })
            repeat wait() TP(game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.CFrame) until (game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not FindAdvancedFruitDealer or not game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer")
        end
        wait()
    end
    StopTween(FindAdvancedFruitDealer)
end)

Main:Button("Remove Fog + Sky",function()
    game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
end)

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
    pcall(function()
        while wait(.5) do
            if SummonKata or AutoCakePrince then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
            end
        end
    end)
end)

Main:Toggle("Auto Cake Prince",AutoCakePrince,function(value)
    AutoCakePrince = value
    StopTween(AutoCakePrince)
end)

Main:Toggle("Summon Cake Prince",false,function(value)
     SummonKata = value
end)

spawn(function()
    pcall(function()
        while wait() do
            if AutoCakePrince then
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if (Vector3.new(-1995.837158203125, 4532.998046875, -14981.3525390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until (Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoCakePrince
                        wait(1)
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            local CakePrince = game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince")
                            if CakePrince:FindFirstChild("HumanoidRootPart") and CakePrince:FindFirstChild("Humanoid") and CakePrince:FindFirstChild("Humanoid").Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    CakePrince.HumanoidRootPart.CFrame = CFrame.new(CakePrince.HumanoidRootPart.Position)
                                    if CakePrince.Energy.Value ~= 100 then
                                        TP(CakePrince.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                    else
                                        TP(CakePrince.HumanoidRootPart.CFrame * SetUp)
                                    end
                                    SuperAttack = true
                                until CakePrince:FindFirstChild("Humanoid").Health <= 0 or not AutoCakePrince or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
                                SuperAttack = false
                                wait(5)
                            end
                        else
                            repeat wait() TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125)) until (Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoCakePrince
                        end
                    end
                else
                    if (Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 300 then
                        repeat wait() TP(CFrame.new(-1946.752685546875, 251.5355987548828, -12407.5146484375)) until (Vector3.new(-1946.752685546875, 251.5355987548828, -12407.5146484375) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoCakePrince
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Head Baker" or v.Name == "Baking Staff" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoCakePrince then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                    TargetPos = v.HumanoidRootPart.CFrame
                                    TargetName = v.Name
                                    FastAttack = true
                                    Magnet = true
                                until v:FindFirstChild("Humanoid").Health <= 0 or not AutoCakePrince or not v.Parent or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")
                                Magnet = false
                                FastAttack = false
                            end
                        end
                    end
                end
            end
        end
    end)
end)

Main:Seperator("Bone 🦴")

local CheckBone = Main:Label("Bone : 0")

spawn(function()
    pcall(function()
        while wait(.5) do
            CheckBone:Set("Bone : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
        end
    end)
end)

Main:Toggle("Auto Farm Bone",AutoFarmBone,function(value)
    AutoFarmBone = value
    StopTween(AutoFarmBone)
end)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmBone then
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoFarmBone then
                               repeat task.wait()
                                   EquipWeapon(Weapon)
                                   AutoHaki()
                                   v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                   TP(v.HumanoidRootPart.CFrame * SetUp)
                                   TargetName = v.Name
                                   TargetPos = v.HumanoidRootPart.CFrame
                                   Magnet = true
                                   FastAttack = true
                               until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not AutoFarmBone
                               Magnet = false
                               FastAttack = false
                               wait(1)
                           end
                        end
                    end
                else
                    repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until (Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmBone
                end
            end
        end
    end)
end)

Main:Toggle("Auto Random Bone",RandomBone,function(value)
    RandomBone = value
    while RandomBone do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        wait()
    end
end)
end
Main:Seperator("Material 🪨")
if World1 then
elseif World2 then
elseif World3 then
    Main:Toggle("Farm Dragon Scale",FarmDragonScale,function(value)
        FarmDragonScale = value
        StopTween(FarmDragonScale)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if FarmDragonScale then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dragon Crew Archer" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and FarmDragonScale then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        TargetPos = v.HumanoidRootPart.CFrame
                                        TargetName = v.Name
                                        Magnet = true
                                        FastAttack = true
                                    until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not FarmDragonScale
                                    FastAttack = false
                                    Magnet = false
                                end
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(6720.99169921875, 433.4623107910156, 115.74989318847656)) until (Vector3.new(6720.99169921875, 433.4623107910156, 115.74989318847656) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not FarmDragonScale or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer")
                    end
                end
            end
        end)
    end)
    
    Main:Toggle("Auto Farm Cocoa",AutoFarmCocoa,function(value)
        AutoFarmCocoa = value
        StopTween(AutoFarmCocoa)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoFarmCocoa then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoFarmCocoa then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                        FastAttack = true
                                        TargetName = v.Name
                                        TargetPos = v.HumanoidRootPart.CFrame
                                        Magnet = true
                                    until v:FindFirstChild("Humanoid").Health <= 0 or not AutoFarmCocoa or not v.Parent
                                    FastAttack = false
                                    Magnet = false
                                    wait(1)
                                end 
                            end
                        end
                    else
                        repeat wait() TP(CFrame.new(210.93252563476562, 126.59194946289062, -12605.1748046875)) until (Vector3.new(210.93252563476562, 126.59194946289062, -12605.1748046875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFarmCocoa
                    end
                end
            end
        end)
    end)
end
--Weapon--
if World3 then
    Weapon:Seperator("Third Sea Event 🎉")
    Weapon:Toggle("Auto Pirate Raid",AutoPirateRaid,function(value)
        AutoPirateRaid = value
        StopTween(AutoPirateRaid)
    end)
    
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
		    pcall(function()
	    	    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				     if AutoPirateRaid and PirateMagnet and (v.HumanoidRootPart.Position - PiratePos.Position).magnitude <= 700 then
					      v.HumanoidRootPart.CFrame = PiratePos
					      if v.Humanoid:FindFirstChild("Animator") then
						      v.Humanoid.Animator:Destroy()
					      end
					      sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius",  math.huge)
			    	 end
			    end
	        end)
        end)
    end)
   
    spawn(function()
        pcall(function()
            while wait() do
                if AutoPirateRaid then
                     if (Vector3.new(-5121.33056640625, 314.5412902832031, -2961.544189453125) -  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5093.7294921875, 314.5412902832031, -3131.57080078125))
                     else
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                             if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoPirateRaid then
                                     repeat task.wait()
                                         EquipWeapon(Weapon)
                                         AutoHaki()
                                         v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                         TP(v.HumanoidRootPart.CFrame * SetUp)
                                         PiratePos = v.HumanoidRootPart.CFrame
                                         PirateMagnet = true
                                         FastAttack = true
                                     until v:FindFirstChild("Humanoid").Health <= 0 or not AutoPirateRaid or not v.Parent
                                     PirateMagnet = false
                                     FastAttack = false
                                 end
                             end
                         end
                     end
                end
            end
        end)
    end)
   
    Weapon:Seperator("Kitsune Event 🦊")
   
    local CheckKitsune = Weapon:Label("🏯: Kitsune Island Not Found ❌️")
   
    spawn(function()
        pcall(function()
            while wait(.5) do
                if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                    CheckKitsune:Set("🏯: Kitsune Island Found ✅️")
                else
                    CheckKitsune:Set("🏯: Kitsune Island Not Found ❌️")
                end
            end
        end)
    end)
   
    Weapon:Toggle("TP To Kitsine Island",TPToKitsune,function(value)
        TPToKitsune = value
        while TPToKitsune do
            wait()
            if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                repeat wait() TP(game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,-2,-12)) until (game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland").ShrineActive.NeonShrinePart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") or not TPToKitsune
            end
        end
        StopTween(TPToKitsune)
    end)
    
    Weapon:Toggle("Collect Blue Ember",AutoCollectEmber,function(value)
        AutoCollectEmber = value
        StopTween(AutoCollectEmber)
    end)
    function CollectEmber()
        pcall(function()
            game:GetService("ReplicatedStorage").Modules.Net["RE/CollectBlueEmber"]:FireServer()
        end)
    end
    spawn(function()
        pcall(function()
            while wait(.5) do
                if AutoCollectEmber then
                    CollectEmber()
                end
            end
        end)
    end)
    
    Weapon:Button("Random Ember",function()
        game:GetService("ReplicatedStorage").Modules.Net["RF/KitsuneStatuePray"]:InvokeServer()
    end)
    
    Weapon:Button("Start Kitsune Event",function()
        game:GetService("ReplicatedStorage").Modules.Net["RE/TouchKitsuneStatue"]:FireServer()
    end)
    
    Weapon:Seperator("Sea Event 🐬")
    
    Weapon:Toggle("Auto Sea Event",AutoSeaEvent,function(value)
        AutoSeaEvent = value
        StopTween(AutoSeaEvent)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoSeaEvent then
                    for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                        if tostring(v:FindFirstChild("Owner").Value) == tostring(game:GetService("Players").LocalPlayer.Name) and AutoSeaEvent then
                            if (Vector3.new(-41315.00390625, -0.34796223044395447, 5254.54931640625) - v:FindFirstChild("VehicleSeat").CFrame.Position).Magnitude <= 500 then
                                repeat wait() TP(v:FindFirstChild("VehicleSeat").CFrame) until (v:FindFirstChild("VehicleSeat").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoSeaEvent
                            else
                                v:FindFirstChild("VehicleSeat").CFrame = CFrame.new(-41315.00390625, -0.34796223044395447, 5254.54931640625, -0.0445573404, -3.3989962e-09, 0.999006808, -1.30833726e-08, 1, 2.81883561e-09, -0.999006808, -1.29447795e-08, -0.0445573404)
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Through Rock",ThroughRocks,function(value)
        ThroughRocks = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if ThroughRocks then
                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v.Name == "SmallGroup" or v.Name == "SmallCluster" or v.Name == "MediumGroup" or v.Name == "MediumFlat" or v.Name == "Large" or v.Name == "Largest" then
                            for i2,v2 in pairs(v:GetChildren()) do
                                if v2:IsA("MeshPart") then
                                    v2.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Seperator("Melee 💪")
    
    Weapon:Toggle("Auto Electric Claw",AutoElectricClaw,function(value)
        AutoElectricClaw = value
        StopTween(AutoElectricClaw)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoElectricClaw then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 0 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == "..." then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                            local MasMelee = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")
                            if MasMelee.Level.Value >= 400 then
                                if (Vector3.new(-10371.4717, 330.764496, -10131.4199) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                    wait(1)
                                    if AutoElectricClaw and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start") ~= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12453.896484375, 375.3892822265625, -7574.470703125))
                                    end
                                    wait(1)
                                    repeat wait() TP(CFrame.new(-10371.4717, 330.764496, -10131.4199)) until (Vector3.new(-10371.4717, 330.764496, -10131.4199) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoElectricClaw
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                else
                                    repeat wait() TP(CFrame.new(-10371.4717, 330.764496, -10131.4199)) until (Vector3.new(-10371.4717, 330.764496, -10131.4199) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoElectricClaw
                                end
                            elseif MasMelee.Level.Value < 400 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoElectricClaw then
                                                repeat task.wait()
                                                    EquipWeapon(Weapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    TargetName = v.Name
                                                    TargetPos = v.HumanoidRootPart.CFrame
                                                    Magnet = true
                                                    FastAttack = true
                                                until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not AutoElectricClaw or MasMelee.Level.Value >= 400
                                                Magnet = false
                                                FastAttack = false
                                                wait(1)
                                            end
                                        end
                                    end
                                else
                                    repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until (Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoElectricClaw
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Dragon Talon",AutoDragonTalon,function(value)
        AutoDragonTalon = value
        StopTween(AutoDragonTalon)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoDragonTalon then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == "Set your heart ablaze." or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 0 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            local MasMelee = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw")
                            if MasMelee.Level.Value >= 400 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoDragonTalon then
                                                    repeat task.wait()
                                                        EquipWeapon(Weapon)
                                                        AutoHaki()
                                                        v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                                        TP(v.HumanoidRootPart.CFrame * SetUp)
                                                        TargetName = v.Name
                                                        TargetPos = v.HumanoidRootPart.CFrame
                                                        Magnet = true
                                                        FastAttack = true
                                                    until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not AutoDragonTalon or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence")
                                                    Magnet = false
                                                    FastAttack = false
                                                    wait(1)
                                                end
                                            end
                                        end
                                    else
                                        repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until (Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoDragonTalon
                                    end
                                end
                            elseif MasMelee.Level.Value < 400 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoDragonTalon then
                                                repeat task.wait()
                                                    EquipWeapon(Weapon)
                                                    AutoHaki()
                                                    v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fire Essence") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                                    end
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    TargetName = v.Name
                                                    TargetPos = v.HumanoidRootPart.CFrame
                                                    Magnet = true
                                                    FastAttack = true
                                                until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not AutoDragonTalon
                                                Magnet = false
                                                FastAttack = false
                                                wait(1)
                                            end
                                        end
                                    end
                                else
                                    repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until (Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoDragonTalon
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Seperator("Quest 📃")
    
    local EliteStatus = Weapon:Label("Elite Not Spawn ❌")
    local EliteProgress = Weapon:Label("Status : 0")
    spawn(function()
        pcall(function()
            while wait(.5) do
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    EliteStatus:Set("Elite Spawn ✅️")
                else
                    EliteStatus:Set("Elite Not Spawn ❌️")
                end
                EliteProgress:Set("Status : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
        end)
    end)
    
    Weapon:Toggle("Auto Elite Hunter",AutoEliteHunter,function(value)
        AutoEliteHunter = value
        StopTween(AutoEliteHunter)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoEliteHunter then
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                        local EliteName = (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")).Name
                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, EliteName) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild(EliteName) then
                            local EliteTarget = game:GetService("Workspace").Enemies:FindFirstChild(EliteName)
                            if EliteTarget:FindFirstChild("HumanoidRootPart") and EliteTarget:FindFirstChild("Humanoid") and EliteTarget:FindFirstChild("Humanoid").Health > 0 then
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    EliteTarget.HumanoidRootPart.CFrame = CFrame.new(EliteTarget.HumanoidRootPart.Position)
                                    TP(EliteTarget.HumanoidRootPart.CFrame * SetUp)
                                    FastAttack = true
                                until not EliteTarget.Parent or not AutoEliteHunter or EliteTarget:FindFirstChild("Humanoid").Health <= 0
                                FastAttack = false
                            end
                        else
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild(EliteName):FindFirstChild("HumanoidRootPart").CFrame * SetUp)
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Seperator("Sword 🗡")
    
    Weapon:Toggle("Auto Twin Hook",AutoTwinHook,function(value)
        AutoTwinHook = value
        StopTween(AutoTwinHook)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoTwinHook then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") or game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                repeat wait() TP(CFrame.new(-13232.765625, 332.3781433105469, -7627.4033203125)) until (Vector3.new(-13232.765625, 332.3781433105469, -7627.4033203125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoTwinHook
                                if (Vector3.new(-13232.765625, 332.3781433105469, -7627.4033203125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 and AutoTwinHook then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DeepForestIsland",3)
                                end
                            end
                            local CaptainElephant = game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant")
                            if CaptainElephant:FindFirstChild("HumanoidRootPart") and CaptainElephant:FindFirstChild("Humanoid") and CaptainElephant:FindFirstChild("Humanoid").Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    CaptainElephant.HumanoidRootPart.CFrame = CFrame.new(CaptainElephant.HumanoidRootPart.Position)
                                    TP(CaptainElephant.HumanoidRootPart.CFrame * SetUp)
                                    FastAttack = true
                                until not CaptainElephant.Parent or not AutoTwinHook or CaptainElephant:FindFirstChild("Humanoid").Health <= 0
                                FastAttack = false
                            end
                        else
                            if (Vector3.new(-13221, 325, -8405) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                            end
                            repeat wait() TP(CFrame.new(-13221, 325, -8405)) until (Vector3.new(-13221, 325, -8405) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoTwinHook
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Cavander",AutoCavander,function(value)
        AutoCavander = value
        StopTween(AutoCavander)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoCavander then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") or game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                if (Vector3.new(-12686, 391, -9902) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
				                end
                                repeat wait() TP(CFrame.new(-12686, 391, -9902)) until (Vector3.new(-13232.765625, 332.3781433105469, -7627.4033203125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoCavander
                                if (Vector3.new(-12686, 391, -9902) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 and AutoCavander then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DeepForestIsland2",3)
                                end
                            end
                            local BeautifulPirate = game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate")
                            if BeautifulPirate:FindFirstChild("HumanoidRootPart") and BeautifulPirate:FindFirstChild("Humanoid") and BeautifulPirate:FindFirstChild("Humanoid").Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    BeautifulPirate.HumanoidRootPart.CFrame = CFrame.new(BeautifulPirate.HumanoidRootPart.Position)
                                    TP(BeautifulPirate.HumanoidRootPart.CFrame * SetUp)
                                    FastAttack = true
                                until not BeautifulPirate.Parent or not AutoCavander or BeautifulPirate:FindFirstChild("Humanoid").Health <= 0
                                FastAttack = false
                            end
                        else
                            if (Vector3.new(5182, 23, -20) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
				            end
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Buddy Sword",AutoBuddy,function(value)
        AutoBuddy = value
        StopTween(AutoBuddy)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoBuddy then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cake Queen") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                repeat wait() TP(CFrame.new(-821.267456, 65.9448776, -10964.3994)) until (Vector3.new(-821.267456, 65.9448776, -10964.3994) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoBuddy
                                if (Vector3.new(-821.267456, 65.9448776, -10964.3994) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 and AutoBuddy then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","IceCreamIslandQuest",3)
                                end
                            end
                            local CakeQueen = game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen")
                            if CakeQueen:FindFirstChild("HumanoidRootPart") and CakeQueen:FindFirstChild("Humanoid") and CakeQueen:FindFirstChild("Humanoid").Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    CakeQueen.HumanoidRootPart.CFrame = CFrame.new(CakeQueen.HumanoidRootPart.Position)
                                    TP(CakeQueen.HumanoidRootPart.CFrame * SetUp)
                                    FastAttack = true
                                until not CakeQueen.Parent or not AutoBuddy or CakeQueen:FindFirstChild("Humanoid").Health <= 0
                                FastAttack = false
                            end
                        else
                            repeat wait() TP(CFrame.new(-715.467102, 381.69104, -11019.8896)) until (Vector3.new(-715.467102, 381.69104, -11019.8896) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoBuddy
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Hallow Scythe",AutoHallowScythe,function(value)
        AutoHallowScythe = value
        StopTween(AutoHallowScythe)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoHallowScythe then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            local SoulReaper = game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                            if SoulReaper:FindFirstChild("HumanoidRootPart") and SoulReaper:FindFirstChild("Humanoid") and SoulReaper:FindFirstChild("Humanoid").Health > 0 then
                                repeat wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    SoulReaper.HumanoidRootPart.CFrame = CFrame.new(SoulReaper.HumanoidRootPart.Position)
                                    if SoulReaper.Energy.Value ~= 100 then
                                        TP(SoulReaper.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                    else
                                        TP(SoulReaper.HumanoidRootPart.CFrame * SetUp)
                                    end
                                    SuperAttack = true
                                until SoulReaper:FindFirstChild("Humanoid").Health <= 0 or not AutoHallowScythe or not SoulReaper.Parent
                                SuperAttack = false
                            end
                        else
                            repeat wait() TP(CFrame.new(-9521.013671875, 316.34521484375, 6664.80078125)) until (Vector3.new(-9521.013671875, 316.34521484375, 6664.80078125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoHallowScythe
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        EquipWeapon("Hallow Essence")
                        repeat wait() TP(CFrame.new(-8933.2255859375, 144.14825439453125, 6062.67138671875)) until (Vector3.new(-8933.2255859375, 144.14825439453125, 6062.67138671875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoHallowScythe
                    elseif AutoHallowScythe and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and AutoHallowScythe and not (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                                            TargetName = v.Name
                                            TargetPos = v.HumanoidRootPart.CFrame
                                            Magnet = true
                                            FastAttack = true
                                        until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not AutoHallowScythe or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper")
                                        Magnet = false
                                        FastAttack = false
                                        wait(1)
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)) until (Vector3.new(-9515.3720703125, 164.00624084473, 5786.0610351562) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoHallowScythe
                        end
                    end
                end
            end
        end)
    end)
    
elseif World2 then
    Weapon:Seperator("Second Sea Event 🎉")
    Weapon:Toggle("Auto Factory",AutoFactory,function(value)
        AutoFactory = value
        StopTween(AutoFactory)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoFactory then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Core") or game:GetService("ReplicatedStorage"):FindFirstChild("Core") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                SuperAttack = true
                            until not game:GetService("Workspace").Enemies:FindFirstChild("Core") or not AutoFactory
                            SuperAttack = false
                        else
                            repeat wait() TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)) until (Vector3.new(424.12698364258, 211.16171264648, -427.54049682617) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoFactory
                        end
                    end
                end
            end
        end)
    end)
    Weapon:Seperator("Dark Beard 🌑")
    
    Weapon:Toggle("Auto Darkbeard",AutoDarkBeard,function(value)
        AutoDarkBeard = value
        StopTween(AutoDarkBeard)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
               if AutoDarkBeard then
                   if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                       if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                           local DarkBeard = game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                           if DarkBeard:FindFirstChild("HumanoidRootPart") and DarkBeard:FindFirstChild("Humanoid") and DarkBeard:FindFirstChild("Humanoid").Health > 0 then
                               repeat task.wait()
                                   EquipWeapon(Weapon)
                                   AutoHaki()
                                   DarkBeard.HumanoidRootPart.CFrame = CFrame.new(DarkBeard.HumanoidRootPart.Position)
                                   if DarkBeard.Energy.Value ~= 100 then
                                       TP(DarkBeard.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                   else
                                       TP(DarkBeard.HumanoidRootPart.CFrame * SetUp)
                                   end
                                   FastAttack = true
                               until DarkBeard:FindFirstChild("Humanoid").Health <= 0 or not AutoDarkBeard or not DarkBeard.Parent
                               FastAttack = false
                           end
                       else
                           repeat wait() TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)) until (Vector3.new(3780.0302734375, 22.652164459229, -3498.5859375) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoDarkBeard or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                       end
                   end
               end
            end
        end)
    end)
    Weapon:Seperator("Race 🧜")
    Weapon:Toggle("Upgrade Race V2",AutoRaceV2,function(value)
        AutoRaceV2 = value
        StopTween(AutoRaceV2)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if AutoRaceV2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        if (Vector3.new(-2777.236328125, 72.99190521240234, -3571.5791015625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
                            repeat wait() TP(CFrame.new(-2777.236328125, 72.99190521240234, -3571.5791015625)) until (Vector3.new(-2777.236328125, 72.99190521240234, -3571.5791015625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRaceV2
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2") == "Come back when you find them." then
                            if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace"):FindFirstChild("Flower1").Transparency == 0 then
                                    repeat wait() TP(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame) until (game:GetService("Workspace"):FindFirstChild("Flower1").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRaceV2
                                end
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                repeat wait() TP(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame) until (game:GetService("Workspace"):FindFirstChild("Flower2").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRaceV2
                            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and AutoRaceV2 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(Weapon)
                                                    v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                                    TP(v.HumanoidRootPart.CFrame * SetUp)
                                                    TargetName = v.Name
                                                    TargetPos = v.HumanoidRootPart.CFrame
                                                    Magnet = true
                                                    FastAttack = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not AutoRaceV2 or v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent
                                                Magnet = false
                                                FastAttack = false
                                            end
                                        end
                                    end
                                else
                                    FastAttack = false
                                    Magnet = false
                                    repeat wait() TP(CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)) until (Vector3.new(-5536.4970703125, 101.08577728271, -835.59075927734) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRaceV2
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Seperator("Sword 🗡")
    
    Weapon:Toggle("Auto Rengoku Sword",AutoRengoku,function(value)
        AutoRengoku = value
        StopTween(AutoRengoku)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        repeat wait() TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875)) until (Vector3.new(6571.1201171875, 299.23028564453, -6967.841796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRengoku
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        repeat wait() TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875)) until (Vector3.new(6571.1201171875, 299.23028564453, -6967.841796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRengoku
                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoRengoku then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                            TP(v.HumanoidRootPart.CFrame * SetUp)
                                            TargetName = v.Name
                                            TargetPos = v.HumanoidRootPart.CFrame
                                            Magnet = true
                                            FastAttack = true
                                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not AutoRengoku or v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent
                                        Magnet = false
                                        FastAttack = false
                                    end
                                end
                            end
                        else
                            repeat wait() TP(CFrame.new(5787.12744140625, 104.92536163330078, -6592.59521484375)) until (Vector3.new(5787.12744140625, 104.92536163330078, -6592.59521484375) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoRengoku or game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Seperator("Quest 📃")
    Weapon:Toggle("Auto Bartilo Quest",AutoBartiloQuest,function(value)
        AutoBartiloQuest = value
        StopTween(AutoBartiloQuest)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if AutoBartiloQuest then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Swan Pirate" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoBartilo then
                                            repeat task.wait()
                                                EquipWeapon(Weapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                                                TP(v.HumanoidRootPart.CFrame * SetUp)
                                                FastAttack = true
                                                TargetName = v.Name			
                                                TargetPos = v.HumanoidRootPart.CFrame
                                                Magnet = true
                                            until not v.Parent or v:FindFirstChild("Humanoid").Health <= 0 or not AutoBartiloQuest or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            Magnet = false
                                            FastAttack = false
                                        end
                                    end
                                end
                            else
                                repeat wait() TP(CFrame.new(932.624451, 156.106079, 1180.27466)) until (Vector3.new(932.624451, 156.106079, 1180.27466) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoBartiloQuest or game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate")
                            end
                        else
                            TP(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait(1)
                            if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10 and AutoBartiloQuest then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") or game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                local Jeremy = game:GetService("Workspace").Enemies:FindFirstChild("Jeremy")
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    Jeremy.HumanoidRootPart.CFrame = CFrame.new(Jeremy.HumanoidRootPart.Position)
                                    if Jeremy.Energy.Value ~= 100 then
                                        TP(Jeremy.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                    else
                                        TP(Jeremy.HumanoidRootPart.CFrame * SetUp)
                                    end
                                    FastAttack = true
                                until not Jeremy.Parent or Jeremy:FindFirstChild("Humanoid").Health <= 0 or not AutoBartiloQuest
                                FastAttack = false
                            else
                                repeat wait() TP(CFrame.new(2203.76953, 448.966034, 752.731079)) until not AutoBartiloQuest or (Vector3.new(2203.76953, 448.966034, 752.731079) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or game:GetService("Workspace").Enemies:FindFirstChild("Jeremy")
                            end
                        else
                            repeat wait() TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) until not AutoBartiloQuest or (Vector3.new(-456.28952, 73.0200958, 299.895966) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6
                            wait(1)
                            if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10 and AutoBartilo then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 and game:GetService("Workspace").Map.Dressrosa.CellDoor:GetChildren()[1].CanCollide == true then
                        repeat TP(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)
    
    Weapon:Toggle("Auto Don't Swan",AutoDonSwan,function(value)
        AutoDonSwan = value
        StopTween(AutoDonSwan)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if AutoDonSwan then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                                local DonSwan = game:GetService("Workspace").Enemies:FindFirstChild("Don Swan")
                                if DonSwan:FindFirstChild("HumanoidRootPart") and DonSwan:FindFirstChild("Humanoid") and DonSwan:FindFirstChild("Humanoid").Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        if DonSwan.Energy.Value ~= 100 then
                                            TP(DonSwan.HumanoidRootPart.CFrame * CFrame.new(20,20,20))
                                        else
                                            TP(DonSwan.HumanoidRootPart.CFrame * SetUp)
                                        end
                                        FastAttack = true
                                    until DonSwan:FindFirstChild("Humanoid").Health <= 0 or not AutoDonSwan or not DonSwan.Parent
                                    FastAttack = false
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 1 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Quake-Quake") == true then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                        end
                    end
                end
            end
        end)
    end)
end
--Fruit--
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
     elseif FruitName == "Dragon Fruit" then GetFruit = "Dragon-Dragon"
     elseif FruitName == "Leopard Fruit" then GetFruit = "Leopard-Leopard"
     elseif FruitName == "Kitsune Fruit" then GetFruit = "Kitsune-Kitsune"
     end
end

DevilFruit:Seperator("Devil Fruit 🍓")

DevilFruit:Toggle("TP To Fruit",AutoBringFruit,function(value)
    AutoBringFruit = value
    StopTween(AutoBringFruit)
end)

spawn(function()
    pcall(function()
    	while wait() do
	    	if AutoBringFruit then
		    	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			    	if string.find(v.Name, "Fruit") then
			    	    if game:GetService("Workspace"):FindFirstChild(v.Name) then
					        TP(v:FindFirstChild("Handle").CFrame)
					    end
				    end
			    end
		    end
        end
    end)
end)

DevilFruit:Toggle("Auto Store Fruit",StoreFruit,function(value)
    StoreFruit = value
end)

spawn(function()
    pcall(function()
        while wait(.5) do
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
        end
    end)
end)

DevilFruit:Toggle("Auto Drop Fruit",DropFruit,function(value)
    DropFruit = value
end)

spawn(function()
    pcall(function()
        while wait(.5) do
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
        end
    end)
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
    
DevilFruit:Toggle("Devil Fruit ESP",DevilFruitESP,function(value)
    DevilFruitESP = value
    while DevilFruitESP do wait()
        UpdateBfEsp() 
    end
end)

--Player--
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
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointMelee then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointDefense then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointSword then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointGun then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if PointBF then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
                end
            end
        end
    end)
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
    
    Tele:Toggle("Teleport To Island",TeleportToIsland,function(value)
        TeleportToIsland = value
        if TeleportToIsland then
            repeat wait()
                if SelectIsland == "WindMill" then
                    TP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif SelectIsland == "Marine" then
                    TP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif SelectIsland == "Middle Town" then
                    TP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif SelectIsland == "Jungle" then
                    TP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif SelectIsland == "Pirate Village" then
                    TP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif SelectIsland == "Desert" then
                    TP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif SelectIsland == "Snow Island" then
                    TP(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif SelectIsland == "MarineFord" then
                    TP(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif SelectIsland == "Colosseum" then
                    TP( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif SelectIsland == "Sky Island 1" then
                    TP(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif SelectIsland == "Prison" then
                    TP( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif SelectIsland == "Magma Village" then
                    TP(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif SelectIsland == "Fountain City" then
                    TP(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif SelectIsland == "Shank Room" then
                    TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif SelectIsland == "Mob Island" then
                    TP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif SelectIsland == "The Cafe" then
                    TP(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif SelectIsland == "Frist Spot" then
                    TP(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif SelectIsland == "Dark Area" then
                    TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif SelectIsland == "Flamingo Mansion" then
                    TP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif SelectIsland == "Flamingo Room" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
                elseif SelectIsland == "Green Zone" then
                    TP( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif SelectIsland == "Factory" then
                    TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif SelectIsland == "Colossuim" then
                    TP( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif SelectIsland == "Zombie Island" then
                    TP(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif SelectIsland == "Two Snow Mountain" then
                    TP(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif SelectIsland == "Punk Hazard" then
                    TP(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif SelectIsland == "Cursed Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif SelectIsland == "Ice Castle" then
                    TP(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif SelectIsland == "Forgotten Island" then
                    TP(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif SelectIsland == "Ussop Island" then
                    TP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif SelectIsland == "Mini Sky Island" then
                    TP(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif SelectIsland == "Great Tree" then
                    TP(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif SelectIsland == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5078.60546875, 314.5412902832031, -3151.4267578125))
                elseif SelectIsland == "MiniSky" then
                    TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif SelectIsland == "Port Town" then
                    TP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif SelectIsland == "Hydra Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875))
                elseif SelectIsland == "Floating Turtle" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875))
                elseif SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif SelectIsland == "Haunted Castle" then
                    TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif SelectIsland == "Ice Cream Island" then
                    TP(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif SelectIsland == "Peanut Island" then
                    TP(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif SelectIsland == "Cake Island" then
                    TP(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif SelectIsland == "Cocoa Island" then
                    TP(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif SelectIsland == "Candy Island" then
                    TP(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif SelectIsland == "Tiki Outport" then
                    TP(CFrame.new(-16220.1484375, 9.0863618850708, 440.4098815917969))
                end
            until not TeleportToIsland
        end
        StopTween(TeleportToIsland)
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

local PositionFarm = {"Behind","Above"}
SetUp = CFrame.new(0,28,0)
Setting:Dropdown("Method Farm",PositionFarm,function(value)
    if value == "Behind" then
        SetUp = CFrame.new(0,15,15)
    elseif value == "Above" then
        SetUp = CFrame.new(0,28,0)
    end
end)
Setting:Toggle("Auto Spawn Point",AutoSpawnPoint,function(value)
    AutoSpawnPoint = value
    while AutoSpawnPoint do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        wait(1)
    end
end)
Setting:Toggle("Auto Turn Haki",AutoTurnHaki,function(value)
    AutoTurnHaki = value
    while AutoTurnHaki do
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") and AutoTurnHaki then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
        wait(.5)
    end
end)

Setting:Toggle("Auto Turn Observation Haki",AutoKen,function(value)
    AutoKen = value
    while AutoKen do
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
        wait(.5)
    end
end)

Setting:Toggle("Auto Turn V3 Skill",AutoTurnV3,function(value)
    AutoTurnV3 = value
    while AutoTurnV3 do
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
        wait(.5)
    end
end)

Setting:Toggle("Auto Turn V4 Skill",AutoTurnV4,function(value)
    AutoTurnV4 = value
    while AutoTurnV4 do
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        wait(.5)
    end
end)

Setting:Toggle("Auto Hide Damage",true,function(value)
    HideDamage = value
    if HideDamage then
        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
    else
        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
    end
end)

Setting:Toggle("No Clip",NoClip,function(value)
    NoClip = value
end)

Setting:Toggle("Auto Rejoin Server",AutoRejoinServer,function(value)
    AutoRejoinServer = value
end)

spawn(function()
    pcall(function()
	    while wait() do
	        if AutoRejoinServer then
		        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
			        if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
			            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			        end
		        end)
	        end
	    end
	end)
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
--shop--
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
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    elseif MeleeSelect == "Sanguine Art" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
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

if World2 then
Shop:Seperator("Legendary Sword 🗡")

Shop:Button("Buy True Triple Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","2")
end)
end

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
        while wait() do
            pcall(function()
                if UnlockPortal then
                    if (Vector3.new(-5084.8447265625, 316.48101806641, -3145.3752441406) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (Vector3.new(-12464.596679688, 376.30590820312, -7567.2626953125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Vector3.new(-5095.33984375, 316.48101806641, -3168.3134765625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (Vector3.new(5741.869140625, 611.94750976562, -282.61154174805) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
end

Misc:Button("Unlock Max Camera",function()
    game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
end)

Misc:Seperator("Ability ⚡️")

Misc:Toggle("Infinity Energy",InfinityEnergy,function(value)
    InfinityEnergy = value
end)
spawn(function()
    while wait(.1) do
        if InfinityEnergy then
            wait(0.3)
            game:GetService("Players").LocalPlayer.Character.Energy.Changed:connect(function()
                if InfinityEnergy then
                    game:GetService("Players").LocalPlayer.Character.Energy.Value = 100000
                end 
            end)
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
    if not value then
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
                            until not value
                            end
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
                FM:Set("Long Time To Full Moon")
            end
        end)
    end
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
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
            else
                TimeRaid:Set("Waiting For Raid ⏱️")
            end
        end
    end)
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
    pcall(function()
        while wait() do
            if AutoNextIsland then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        repeat wait() TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,50,0)) until (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoNextIsland
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        repeat wait() TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,50,0)) until (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoNextIsland
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        repeat wait() TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,50,0)) until (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoNextIsland
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        repeat wait() TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,50,0)) until (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoNextIsland
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        repeat wait() TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,50,0)) until (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 6 or not AutoNextIsland
                    end
                end
            end
        end
    end)
end)

Raid:Toggle("Kill Aura",KillAura,function(value)
    KillAura = value
end)

spawn(function()
    pcall(function() 
        while wait() do
            if KillAura then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 then
                            repeat wait()
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                v.Humanoid.Health = 0
                            until not KillAura or not v.Parent or v:FindFirstChild("Humanoid").Health <= 0
                        end
                    end
                end
            end
        end
    end)
end)

Raid:Toggle("Auto Awakener",AutoAwakener,function(value)
    AutoAwakener = value
end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if AutoAwakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
end