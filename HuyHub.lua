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

function TPD(Target)
    if World1 then
        if Target.Position.Y <= 4500 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y > 4500 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif Target.Position.X <= 50000 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X > 50000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.6884765625, 6.736950397491455, -1926.214111328125))
		end
    elseif World2 then
        if Target.Position.Z <= 30000 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z > 30000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		end
    end
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
				elseif Lv == 250 or Lv <= 299 then 
					NameQuest = "ColosseumQuest"
					LevelQuest = 1
					NameMon = "Toga Warrior"
					CFrameQuest = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
					CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
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
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
				elseif Lv == 550 or Lv <= 624 then 
					NameQuest = "SkyExp2Quest"
					LevelQuest = 2
					NameMon = "Royal Soldier"
					CFrameQuest = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
					CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
					if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
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
				elseif Lv == 775 or Lv <= 874 then 
					NameQuest = "Area2Quest"
					LevelQuest = 1
					NameMon = "Swan Pirate"
					CFrameQuest = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
					CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
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
					NameQuest = "HauntedQuest1"
					LevelQuest = 1
					NameMon = "Reborn Skeleton"
					CFrameQuest = CFrame.new(-9480.80762, 142.130661, 5566.37305)
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
					NameQuest = "PeanutQuest1"
					LevelQuest = 1
					NameMon = "Peanut Scout"
					CFrameQuest = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
				elseif Lv >= 2100 and Lv <= 2124 then 
					NameQuest = "PeanutQuest2"
					LevelQuest = 2
					NameMon = "Peanut President"
					CFrameQuest = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
					CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
				elseif Lv >= 2125 and Lv <= 2149 then 
					NameQuest = "IceCreamQuest1"
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
					NameMon = "Cake Guard"
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
				elseif Lv >= 2450 and Lv <= 2474 then 
					NameQuest = "TikiQuest1"
					LevelQuest = 1
					NameMon = "Isle Outlaw"
					CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
					CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
                elseif Lv >= 2475 and Lv <= 2499 then 
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
				if CFrameMon then
		            TPD(CFrameMon)
	            end
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
        _G.Clip = false
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
local Main = Library:Tab("Trang Chính","rbxassetid://11446825283")
local Setting = Library:Tab("Cài Đặt","rbxassetid://11446835336")
local Weapon = Library:Tab("Vật Phẩm","rbxassetid://11446859498")
local Race = Library:Tab("Tộc V4","rbxassetid://11446900930")
local Stat = Library:Tab("Chỉ Số","rbxassetid://11447069304")
local P = Library:Tab("Người Chơi","rbxassetid://11446900930")
local Tele = Library:Tab("Dịch Chuyển","rbxassetid://11446920523")
local Dungeon = Library:Tab("Raid","rbxassetid://11446957539")
local DevilFruit = Library:Tab("Trái Blox-Esp","rbxassetid://11446965348")
local Shop = Library:Tab("Mua Sắm","rbxassetid://6031265976")
local Misc = Library:Tab("Linh Tinh","rbxassetid://11447063791")

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
		    if FarmFactory or Sea2 or PirateRaid or FarmBone or NearFarm or Mirage or FarmKata or FarmLevel or TeleTween or BringFruit or UpRaceV2 or NoClip then
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
		  	if FarmFactory or Sea2 or PirateRaid or FarmBone or NearFarm or Mirage or FarmKata or FarmLevel or TeleTween or BringFruit or UpRaceV2 then
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

Main:Seperator("Cài Đặt Cơ Bản")

WeaponType = {
	"Cận Chiến",
	"Kiếm",
	"Súng",
	"Trái Blox"
}

Main:Dropdown("Chọn Vũ Khí",WeaponType,function(value)
    SelectWeapon = value
end)

spawn(function()
	while wait(1) do
		pcall(function()
		    for i ,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			    if SelectWeapon == "Cận Chiến" or SelectWeapon == nil then
					if v.ToolTip == "Melee" then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
			    elseif SelectWeapon == "Kiếm" then
					if v.ToolTip == "Sword" then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
			    elseif SelectWeapon == "Trái Blox" then
					if v.ToolTip == "Blox Fruit" then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
						    Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

Main:Seperator("Chức Năng Chính")

Main:Toggle("Farm Level",false,function(value)
    FarmLevel = value
    StopTween(value)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if FarmLevel and LevelMagnet and v.Name == NameMon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = PosMon
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
    while wait() do
        if FarmLevel then
            pcall(function()
                CheckQuestLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    LevelMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        wait()
                        TPD(CFrameQuest)
                        TP(CFrameQuest)
                    until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 6 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not FarmLevel
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 6 and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(NameMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and FarmLevel then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(Weapon)
                                            AutoHaki()
					                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
					                        PosMon = v.HumanoidRootPart.CFrame
                                            FastAttack = true
                                            LevelMagnet = true
                                        until v:FindFirstChild("Humanoid").Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not FarmLevel or not v.Parent
                                        LevelMagnet = false
                                        FastAttack = false
                                    end
                                end
                            end
                        end
                    else
                        TPD(CFrameMon)
                        TP(CFrameMon)
                    end
                end
            end)
        end
    end
end)

if World1 then
    Main:Seperator("Sea 2")
    
    Main:Toggle("Qua Sea 2",false,function(value)
        Sea2 = value
        StopTween(value)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if Sea2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 1 then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            repeat wait()
                                EquipWeapon("Key")
                                TPD(CFrame.new(1348.312744140625, 37.349327087402344, -1326.2479248046875))
                                TP(CFrame.new(1348.312744140625, 37.349327087402344, -1326.2479248046875))
                                Look(game:GetService("Workspace").Map.Ice.Door)
                            until not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") or game:GetService("Workspace").Map.Ice.Door.Transparency == 1 or not Sea2
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                                local BossIce = game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral")
                                if BossIce:FindFirstChild("HumanoidRootPart") and BossIce:FindFirstChild("Humanoid") and BossIce:FindFirstChild("Humanoid").Health > 0 then
                                    repeat wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(BossIce.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                        FastAttack = true
                                    until BossIce:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not Sea2
                                    FastAttack = false
                                end
                            else
                                TPD(CFrame.new(1305.9105224609375, 29.890796661376953, -1373.1566162109375))
                                TP(CFrame.new(1305.9105224609375, 29.890796661376953, -1373.1566162109375))
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end
        end)
    end)
end

Main:Seperator("Kẹo")

local CandyEvent = Main:Label("Sự Kiện Tiếp Theo Sau : 00:00:00")

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Countdown:GetChildren()[1].TextLabel.Text == "STARTING!" then
                CandyEvent:Set("Sự Kiện Đang Diễn Ra")
            else
                CandyEvent:Set("Sự Kiện Tiếp Theo Sau "..game:GetService("Workspace").Countdown:GetChildren()[1].TextLabel.Text)
            end
        end
    end)
end)

local CandyCheck = Main:Label("Kẹo Hiện Có : 0")

spawn(function()
    pcall(function()
        while wait(.5) do
            CandyCheck:Set("Kẹo Hiện Có : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Check"))
        end
    end)
end)

Main:Toggle("Farm Gần [Kẹo]",false,function(value)
    NearFarm = value
    StopTween(value)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if NearFarm and NearMagnet and v.Name == NearName and (v.HumanoidRootPart.Position - NearPos.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = NearPos
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
            if NearFarm then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and NearFarm then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                NearName = v.Name
                                NearPos = v.HumanoidRootPart.CFrame
                                FastAttack = true
                                NearMagnet = true
                            until v:FindFirstChild("Humanoid").Health <= 0 or not NearFarm or not v.Parent
                            FastAttack = false
                            NearMagnet = false
                        end
                    end
                end
            end
        end
    end)
end)

if World3 then
Main:Seperator("Đảo Bí Ẩn")

local MirageLabel = Main:Label("Đảo Bí Ẩn")

spawn(function()
    pcall(function()
        while wait(1) do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MirageLabel:Set('🏝️: ✅️Đã Có Đảo Bí Ẩn')
            else
                MirageLabel:Set('🏝: ❌️Không Có Đảo Bí Ẩn')
            end
        end
    end)
end)

Main:Toggle("TP Đến Đảo Bí Ẩn",false,function(value)
    Mirage = value
    repeat wait()
        TP(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
    until not Mirage or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    StopTween(value)
end)

Main:Toggle("TP Đến Advanced Fruit Dealer",false,function(value)
    AdvancedDealer = value
    while AdvancedDealer do
        if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
            TP(game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer").HumanoidRootPart.CFrame)
        end
        wait()
    end
    StopTween(value)
end)

Main:Button("Xóa Xương Mù",function()
    game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
end)

Main:Seperator("Katakuri")

local RemainingMob = Main:Label("Đánh Bại Thêm : 500")

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                RemainingMob:Set("Đánh Bại Thêm : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                RemainingMob:Set("Đánh Bại Thêm : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                RemainingMob:Set("Đánh Bại Thêm : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                RemainingMob:Set("Boss Đã Được Triệu Hồi")
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait(.5) do
            if SummonKata or FarmKata then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
            end
        end
    end)
end)

Main:Toggle("Farm Katakuri",false,function(value)
    FarmKata = value
    StopTween(value)
end)

Main:Toggle("Tự Triệu Hồi Kata",false,function(value)
     SummonKata = value
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if FarmKata and KataMagnet and v.Name == KataName and (v.HumanoidRootPart.Position - KataPos.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = KataPos
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
            if FarmKata then
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if (Vector3.new(-1995.837158203125, 4532.998046875, -14981.3525390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125))
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                            local CakePrince = game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince")
                            if CakePrince:FindFirstChild("HumanoidRootPart") and CakePrince:FindFirstChild("Humanoid") and CakePrince:FindFirstChild("Humanoid").Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    TP(CakePrince.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                    SuperAttack = true
                                until CakePrince:FindFirstChild("Humanoid").Health <= 0 or not FarmKata
                                SuperAttack = false
                            end
                        else
                            TP(CFrame.new(-2153.50732421875, 70.00881958007812, -12405.11328125))
                        end
                    end
                else
                    if (Vector3.new(-2153.50732421875, 70.00881958007812, -12405.11328125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 300 then
                        TP(CFrame.new(-1946.752685546875, 251.5355987548828, -12407.5146484375))
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Head Baker" or v.Name == "Baking Staff" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and FarmKata then
                                repeat task.wait()
                                    EquipWeapon(Weapon)
                                    AutoHaki()
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                    KataPos = v.HumanoidRootPart.CFrame
                                    KataName = v.Name
                                    FastAttack = true
                                    KataMagnet = true
                                until v:FindFirstChild("Humanoid").Health <= 0 or not FarmKata or not v.Parent or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince")
                                KataMagnet = false
                                FastAttack = false
                                wait(1)
                            end
                        end
                    end
                end
            end
        end
    end)
end)

Main:Seperator("Xương")

local CheckBone = Main:Label("Xương Hiện Có : 0")

spawn(function()
    pcall(function()
        while wait(.5) do
            CheckBone:Set("Xương Hiện Có : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
        end
    end)
end)

Main:Toggle("Farm Xương",false,function(value)
    FarmBone = value
    StopTween(value)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if FarmBone and BoneMagnet and v.Name == BoneName and (v.HumanoidRootPart.Position - BonePos.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = BonePos
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
            if FarmBone then
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and FarmBone then
                               repeat task.wait()
                                   EquipWeapon(Weapon)
                                   AutoHaki()
                                   TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                   BoneName = v.Name
                                   BonePos = v.HumanoidRootPart.CFrame
                                   BoneMagnet = true
                                   FastAttack = true
                               until v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent or not FarmBone
                               BoneMagnet = false
                               FastAttack = false
                               wait(1)
                           end
                        end
                    end
                else
                    TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                end
            end
        end
    end)
end)

Main:Toggle("Random Xương",false,function(value)
    RandomBone = value
    while RandomBone do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        wait()
    end
end)

Main:Button("Thử Vận May [Ban Đêm]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
end)
end
--Weapon--
Weapon:Seperator("Sự Kiện")

if World3 then
    Weapon:Toggle("Đánh Hải Tặc",false,function(value)
        PirateRaid = value
        StopTween(value)
    end)
    
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
		    pcall(function()
	    	    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				     if PirateRaid and PirateMagnet and v.Name == PirateName and (v.HumanoidRootPart.Position - PiratePos.Position).magnitude <= 500 then
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
                if PirateRaid then
                     if (Vector3.new(-5121.33056640625, 314.5412902832031, -2961.544189453125) -  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5093.7294921875, 314.5412902832031, -3131.57080078125))
                         wait(3)
                         TP(CFrame.new(-5121.33056640625, 314.5412902832031, -2961.544189453125))
                     else
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                             if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
                                 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and PirateRaid then
                                     repeat task.wait()
                                         EquipWeapon(Weapon)
                                         AutoHaki()
                                         TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                         PirateName = v.Name
                                         PiratePos = v.HumanoidRootPart.CFrame
                                         PirateMagnet = true
                                         FastAttack = true
                                     until v:FindFirstChild("Humanoid").Health <= 0 or not PirateRaid or not v.Parent
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
   
    Weapon:Seperator("Sự Kiện Kitsune")
   
    local CheckKitsune = Weapon:Label("🏯: ❌️ Không Có Đảo Kitsune")
   
    spawn(function()
        pcall(function()
            while wait(.5) do
                if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                    CheckKitsune:Set("🏯: ✅️ Đã Có Đảo Kitsune")
                else
                    CheckKitsune:Set("🏯: ❌️ Không Có Đảo Kitsune")
                end
            end
        end)
    end)
   
    Weapon:Toggle("TP Đến Đảo Kitsune",false,function(value)
        TPKitsune = value
        StopTween(value)
    end)
   
    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
                    TP(game:GetService("Workspace").Map.KitsuneIsland.Position)
                end
            end
        end)
    end)
end
if World2 then

    Weapon:Toggle("Đánh Nhà Máy",false,function(value)
        FarmFactory = value
        StopTween(value)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if FarmFactory then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Core") or game:GetService("ReplicatedStorage"):FindFirstChild("Core") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            repeat task.wait()
                                EquipWeapon(Weapon)
                                AutoHaki()
                                TPD(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                                SuperAttack = true
                            until not game:GetService("Workspace").Enemies:FindFirstChild("Core") or not FarmFactory
                            SuperAttack = false
                        else
                            TPD(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                            TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Đánh Râu Đen",false,function(value)
        BlackBeard = value
        StopTween(value)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
               if BlackBeard then
                   if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                       if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                           local DarkBeard = game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                           if DarkBeard:FindFirstChild("HumanoidRootPart") and DarkBeard:FindFirstChild("Humanoid") and DarkBeard:FindFirstChild("Humanoid").Health > 0 then
                               repeat task.wait()
                                   EquipWeapon(Weapon)
                                   AutoHaki()
                                   TPD(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                   TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                   FastAttack = true
                               until DarkBeard:FindFirstChild("Humanoid").Health <= 0 or not BlackBeard or not DarkBeard.Parent
                               FastAttack = false
                           end
                       else
                           TPD(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                           TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                       end
                   end
               end
            end
        end)
    end)
    
Weapon:Toggle("Up Tộc V2",false,function(value)
    UpRaceV2 = value
    StopTween(value)
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if UpRaceV2 and ZombieMagnet and v.Name == "Zombie" and (v.HumanoidRootPart.Position - ZombiePos.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = ZombiePos
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
            if UpRaceV2 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                    if (Vector3.new(-2777.236328125, 72.99190521240234, -3571.5791015625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5 then
                        TPD(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                        TP(CFrame.new(-2777.236328125, 72.99190521240234, -3571.5791015625))
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2") == "Come back when you find them." then
                        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                            if game:GetService("Workspace"):FindFirstChild("Flower1").Transparency == 0 then
                                TPD(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                                TP(game:GetService("Workspace"):FindFirstChild("Flower1").CFrame)
                            else
                                game.StarterGui:SetCore("SendNotification", {
    	                            Title = "Thông Báo", 
    	                            Text = "Chưa Có Hoa" ,
		                            Duration = 5
	                            })
	                            wait(5)
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                            TPD(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
                            TP(game:GetService("Workspace"):FindFirstChild("Flower2").CFrame)
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Zombie" then
                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and UpRaceV2 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(Weapon)
                                                ZombiePos = v.HumanoidRootPart.CFrame
                                                ZombieMagnet = true
                                                FastAttack = true
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 28, 0))
                                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not UpRaceV2 or v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent
                                            ZombieMagnet = false
                                            FastAttack = false
                                        end
                                    end
                                end
                            else
                                FastAttack = false
                                MagnetZombie = false
                                TPD(CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734))     
                                TP(CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734))                                
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

Weapon:Toggle("Lấy Rengoku",false,function(value)
    AutoRengoku = value
    StopTween(value)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
	    	for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if AutoRengoku and RengokuMagnet and v.Name == RengokuName and (v.HumanoidRootPart.Position - RengokuPos.Position).magnitude <= 500 then
					v.HumanoidRootPart.CFrame = RengokuPos
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
            if AutoRengoku then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    TPD(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    TPD(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and AutoRengoku then
                                    repeat task.wait()
                                        EquipWeapon(Weapon)
                                        AutoHaki()
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,28,0))
                                        RengokuName = v.Name
                                        RengokuPos = v.HumanoidRootPart.CFrame
                                        RengokuMagnet = true
                                        FastAttack = true
                                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not AutoRengoku or v:FindFirstChild("Humanoid").Health <= 0 or not v.Parent
                                    RengokuMagnet = false
                                    FastAttack = false
                                end
                            end
                        end
                    else
                        TPD(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                        TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
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
     elseif FruitName == "Leopard Fruit" then GetFruit = "Leopard-Leopard" end
end

DevilFruit:Seperator("Trái Blox")

DevilFruit:Toggle("Nhặt Trái Blox",false,function(value)
    BringFruit = value
    StopTween(value)
end)

spawn(function()
    pcall(function()
    	while wait() do
	    	if BringFruit then
		    	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			    	if string.find(v.Name, "Fruit") then
			    	    TPD(v.Handle.CFrame)
			    	    if game:GetService("Workspace"):FindFirstChild(v.Name) then
					        TP(v.Handle.CFrame)
					    end
				    end
			    end
		    end
        end
    end)
end)

DevilFruit:Toggle("Lưu Trữ Trái Blox",false,function(value)
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

DevilFruit:Toggle("Vứt Trái Blox",false,function(value)
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
            end
        end
    end)
end)

DevilFruit:Toggle("Tự Random Fruit",false,function(value)
    RandomFruit = value
end)

spawn(function()
    pcall(function()
        while wait(1) do
           if RandomFruit then
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
           end
        end
    end)
end)

DevilFruit:Button("Random Fruit",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)

DevilFruit:Seperator("Định Vị")

if World2 then
    DevilFruit:Toggle("Định Vị Hoa",false,function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
end
    
if not World1 then
    DevilFruit:Toggle("Định Vị Quái Thú Biển",false,function(value)
        SeaBeastsESP = value
        while SeaBeastsESP do wait()
            UpdateSeaBeastsESP() 
        end
    end)
end

DevilFruit:Toggle("Định Vị Người Chơi",false,function(value)
    ESPPlayer = value
    while ESPPlayer do wait()
        UpdatePlayerChams()
    end
end)
    
DevilFruit:Toggle("Định Vị Rương",false,function(value)
    ChestESP = value
    while ChestESP do wait()
        UpdateChestEsp() 
    end
end)
    
DevilFruit:Toggle("Định Vị Trái Blox",false,function(value)
    DevilFruitESP = value
    while DevilFruitESP do wait()
        UpdateBfEsp() 
    end
end)

--Player--
local PlayerList = {}

for _,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
        table.insert(PlayerList, v.Name)
    end
end

local Player = P:Dropdown("Chọn Người Chơi",PlayerList,function(value)
    SelectPlayer = value
end)

P:Button("Làm Mới",function()
    Player:Clear()
    for _,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            Player:Add(v.Name)
        end
    end
end)

P:Seperator("Chiến Đấu")
P:Toggle("Ghim Tâm",false,function(value)
    AimPlayer = value
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if AimPlayer and game:GetService("Workspace").Characters:FindFirstChild(SelectPlayer) then
                local Target = game:GetService("Workspace").Characters:FindFirstChild(SelectPlayer).HumanoidRootPart.Position - Vector3.new(0,3,0)
                game:GetService("Workspace").Camera.CFrame = CFrame.new(game:GetService("Workspace").Camera.CFrame.Position, Target)
            end
        end
    end)
end)

--stat--

Stat:Seperator("Chỉ Số")

Stat:Toggle("Nâng Melee",false,function(value)
    AddPoint = "Melee"
end)

Stat:Toggle("Nâng Máu",false,function(value)
    AddPoint = "Defense"
end)

Stat:Toggle("Nâng Kiếm",false,function(value)
    AddPoint = "Sword"
end)

Stat:Toggle("Nâng Súng",false,function(value)
    AddPoint = "Gun"
end)

Stat:Toggle("Nâng Trái Blox",false,function(value)
    AddPoint = "Demon Fruit"
end)

spawn(function()
    pcall(function()
        while wait(.5) do
            if game:GetService("Players").LocalPlayer.Data.Points.value > 0 then
                if AddPoint == "Melee" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
                end
                if AddPoint == "Defense" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
                end
                if AddPoint == "Sword" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
                end
                if AddPoint == "Gun" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
                end
                if AddPoint == "Demon Fruit" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
                end
            end
        end
    end)
end)

--Tele--

Tele:Seperator("Đảo")
if World1 then
    Tele:Dropdown("Chọn Đảo",{
        "Đảo Cối Xay",
        "Đảo Hải Quân",
        "Thị Trấn Trung Tâm",
        "Đảo Khỉ",
        "Đảo Hải Tặc",
        "Sa Mạc",
        "Đảo Tuyết",
        "Tổng Bộ",
        "Đấu Trường La Mã",
        "Đảo Trên Không 1",
        "Đảo Trên Không 2",
        "Đảo Trên Không 3",
        "Nhà Tù",
        "Đảo Dung Nham",
        "Đảo Dưới Nước",
        "Thành Phố Công Nghiệp",
        "Phòng Của Shank",
        "Đảo Của Mob"
    },function(value)
        SelectIsland = value
    end)
end
    
if World2 then
    Tele:Dropdown("Chọn Đảo",{
        "Quán Cafe",
        "Cảng 1",
        "Đảo Râu Đen",
        "Dinh Thự Của Flamingo",
        "Phòng Của Flamingo",
        "Vườn Thực Vật",
        "Nhà Máy",
        "Đấu Trường",
        "Đảo Thây Ma",
        "Núi Đôi",
        "Đảo Hỏa - Băng",
        "Thuyền Ma",
        "Lâu Đài Băng",
        "Đảo Lãng Quên",
        "Đảo Ussop",
        "Đảo Trên Không Mini",
        "Đảo Kẹo [Sea 2]"
    },function(value)
        SelectIsland = value
    end)
end
    
if World3 then
    Tele:Dropdown("Chọn Đảo",{
        "Dinh Thự",
        "Cảng Thị Trấn",
        "Cây Đại Thụ",
        "Pháo Đài Trên Biển",
        "MiniSky", 
        "Đảo Phụ Nữ",
        "Đảo Rùa",
        "Lâu Đài Bóng Tối",
        "Đảo Kem",
        "Đảo Đậu Phộng",
        "Đảo Bánh",
        "Đảo Kẹo",
        "Đảo Tiki"
    },function(value)
        SelectIsland = value
    end)
end
    
Tele:Toggle("Đi Tới Đảo",false,function(value)
    TeleTween = value
    repeat wait()
         if SelectIsland == "Đảo Cối Xay" then
            TPD(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            TP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif SelectIsland == "Đảo Hải Quân" then
            TPD(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            TP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif SelectIsland == "Thị Trấn Trung Tâm" then
            TPD(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            TP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif SelectIsland == "Đảo Khỉ" then
            TPD(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            TP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif SelectIsland == "Đảo Hải Tặc" then
            TPD(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            TP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif SelectIsland == "Sa Mạc" then
            TPD(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            TP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif SelectIsland == "Đảo Tuyết" then
            TPD(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            TP(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif SelectIsland == "Tổng Bộ" then
            TPD(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            TP(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif SelectIsland == "Đấu Trường La Mã" then
            TPD( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            TP( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif SelectIsland == "Đảo Trên Trời 1" then
            TPD(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            TP(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif SelectIsland == "Đảo Trên Trời 2" then  
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif SelectIsland == "Đảo Trên Trời 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        elseif SelectIsland == "Nhà Tù" then
            TPD( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            TP( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif SelectIsland == "Đảo Dung Nham" then
            TPD(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            TP(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif SelectIsland == "Đảo Dưới Nước" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif SelectIsland == "Thành Phố Công Nghiệp" then
            TPD(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            TP(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif SelectIsland == "Phòng Của Shank" then
            TPD(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif SelectIsland == "Đảo Của Mob" then
            TPD(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            TP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif SelectIsland == "Quán Cafe" then
            TPD(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            TP(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif SelectIsland == "Cảng" then
            TPD(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            TP(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif SelectIsland == "Đảo Râu Đen" then
            TPD(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif SelectIsland == "Dinh Thự Của Flamingo" then
            TPD(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
            TP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif SelectIsland == "Phòng Của Flamingo" then
            TPD(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
            TP(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif SelectIsland == "Vườn Thực Vật" then
            TPD( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            TP( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif SelectIsland == "Nhà Máy" then
            TPD(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif SelectIsland == "Đấu Trường" then
            TPD( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            TP( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif SelectIsland == "Đảo Thây Ma" then
            TPD(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            TP(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif SelectIsland == "Núi Đôi" then
            TPD(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            TP(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif SelectIsland == "Đảo Hỏa - Băng" then
            TPD(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            TP(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif SelectIsland == "Thuyền Ma" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        elseif SelectIsland == "Lâu Đài Băng" then
            TPD(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            TP(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif SelectIsland == "Đảo Lãng Quên" then
            TPD(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            TP(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif SelectIsland == "Đảo Ussop" then
            TPD(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            TP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif SelectIsland == "Đảo Kẹo [Sea 2]" then
            TPD(CFrame.new(-5275.51171875, 14.802701950073242, 1532.5760498046875))
            TP(CFrame.new(-5275.51171875, 14.802701950073242, 1532.5760498046875))
        elseif SelectIsland == "Cây Đại Thụ" then
            TP(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif SelectIsland == "Pháo Đài Trên Biển" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5078.60546875, 314.5412902832031, -3151.4267578125))
        elseif SelectIsland == "Cảng Thị Trấn" then
            TP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
        elseif SelectIsland == "Đảo Phụ Nữ" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5743.56787109375, 610.4497680664062, -271.4884338378906))
        elseif SelectIsland == "Đảo Rùa" then
            TP(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif SelectIsland == "Dinh Thự" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
        elseif SelectIsland == "Lâu Đài Bóng Tối" then
            TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
        elseif SelectIsland == "Đảo Kem" then
            TP(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
        elseif SelectIsland == "Đảo Đậu Phộng" then
            TP(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
        elseif SelectIsland == "Đảo Bánh" then
            TP(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
	    elseif SelectIsland == "Đảo Kẹo" then
            TP(CFrame.new(-1078.265869140625, 14.640422821044922, -14466.9013671875))
        elseif SelectIsland == "Đảo Tiki" then
            TP(CFrame.new(-16220.1484375, 9.0863618850708, 440.4098815917969))
        end
    until not TeleTween
    StopTween(value)
end)

Tele:Seperator("Thế Giới")

if World2 or World3 then
    Tele:Button("Về Sea 1",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
end

if World1 or World3 then
    Tele:Button("Về Sea 2",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
end

if World1 or World2 then
    Tele:Button("Về Sea 3",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)
end

--Setting--
Setting:Seperator("Cài Đặt")

Setting:Toggle("Tự Bật Haki",true,function(value)
    AutoBuso = value
end)

spawn(function()
    pcall(function()
        while wait(.5) do
             if AutoBuso then
                 AutoHaki()
             end
        end
    end)
end)

Setting:Toggle("Tự Bật Ken",false,function(value)
    AutoKen = value
end)

spawn(function()
    pcall(function()
        while wait(.5) do
            if AutoKen then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end
        end
    end)
end)

Setting:Toggle("Tự Bật Tộc V3",false,function(value)
    AutoV3 = value
end)

spawn(function()
    pcall(function()
        while wait(.5) do
            if AutoV3 then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

Setting:Toggle("Tự Bật V4",false,function(value)
    TurnV4 = value
end)

spawn(function()
    pcall(function()
        while wait(3) do
            if TurnV4 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
            end
        end
    end)
end)

Setting:Toggle("Không Hiện Damage",false,function(value)
    if value then
        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
    else
        game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = tr
    end
end)

Setting:Toggle("Xuyên Tường",false,function(value)
    NoClip = value
end)

Setting:Toggle("Tự Vào Lại Server",false,function(value)
    AutoRejoin = value
end)

spawn(function()
    pcall(function()
	    while wait() do
	        if AutoRejoin then
		        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
			        if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
			            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			        end
		        end)
	        end
	    end
	end)
end)


Setting:Toggle("Chống AFK",true,function(value)
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)

Setting:Toggle("Xóa Sương Mù",false,function(value)
   if value then
        while wait() do
            game.Lighting.FogEnd = 9e9
        end
   else
        game.Lighting.FogEnd = 2500
   end
end)
--shop--
Shop:Seperator("Tộc")

Shop:Button("Mua Tộc Cyborg",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer","Buy")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Shop:Button("Mua Tộc Quỷ",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","BuyCheck",4)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Change",4)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Shop:Seperator("Melee")

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

Shop:Dropdown("Chọn Melee",MeleeList,function(value)
    MeleeSelect = value
end)

Shop:Button("Mua Melee",function()
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

Shop:Seperator("Chỉ Số")

Shop:Button("Hoàn Trả Chỉ Số [2.500F]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

Shop:Button("Đổi Tộc [3.000F]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

Shop:Seperator("Kẹo")

Shop:Button("X2 Exp [50 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",1,1)
end)

Shop:Button("Đặt Lại Điểm [75 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",1,2)
end)

Shop:Button("Đổi Tộc [100 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",1,3)
end)
Shop:Button("200F [50 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",2,1)
end)

Shop:Button("500F [100 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",2,2)
end)

Shop:Button("Đổi Mũ Yêu Tinh [250 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",3,1)
end)

Shop:Button("Đổi Mũ Santa [500 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",3,2)
end)

Shop:Button("Đổi Xe Trượt Tuyết [1000 Kẹo]",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Buy",3,3)
end)

--Misc--
Misc:Seperator("Máy Chủ")

Misc:Button("Vào Lại Server",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end)

Misc:Button("Chuyển Server",function()
    Hop()
end)

Misc:Seperator("Chọn Phe")

Misc:Button("Chọn Phe Hải Quân",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Misc:Button("Chọn Phe Hải Tặc",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
end)

Misc:Seperator("Job ID")

Misc:Label("Job ID Hiện Tại : "..tostring(game.JobId))

Misc:Button("Sao Chép Mã Tham Gia",function()
    setclipboard("game:GetService(\"ReplicatedStorage\").__ServerBrowser:InvokeServer(\"teleport\", \""..tostring(game.JobId).."\")")
end)

Misc:Seperator("Yêu Cầu Ui")

Misc:Button("Shop Trái Blox",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

Misc:Button("Quản Lý Danh Hiệu",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

Misc:Button("Quản Lý Màu Haki",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

Misc:Button("Quản Lý Thức Tỉnh",function()
    game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)

Misc:Seperator("Linh Tinh")

Misc:Dropdown("Chọn Dạng Haki",{"Dạng 0","Dạng 1","Dạng 2","Dạng 3","Dạng 4","Dạng 5"},function(value)
    SelectStateHaki = value
end)
    
Misc:Button("Chuyển Đổi Dạng Haki",function()
    if SelectStateHaki == "Dạng 0" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
    elseif SelectStateHaki == "Dạng 1" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
    elseif SelectStateHaki == "Dạng 2" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
    elseif SelectStateHaki == "Dạng 3" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
    elseif SelectStateHaki == "Dạng 4" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
    elseif SelectStateHaki == "Dạng 5" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
    end
end)
if World3 then
    Misc:Toggle("Mở Phá Cổng",false,function(value)
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

Misc:Button("Thu Phóng Tối Đa",function()
    game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
end)

Misc:Seperator("Giác Quan")

Misc:Toggle("Vô Hạn Năng Lượng",false,function(value)
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

Misc:Toggle("Vô Hạn Soru",false,function(value)
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

Misc:Toggle("Vô Hạn Nhảy",true,function(value)
    game:GetService("UserInputService").JumpRequest:connect(function()
	    if value then
		    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
	    end
    end) 
end)

Misc:Toggle("Chạy Nhanh",true,function(value)
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

Misc:Toggle("Lước Siêu Nhanh",false,function(value)
    while wait() do
        if value then
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
Misc:Toggle("Đi Trên Nước",true,function(value)
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
    Race:Label("Chỉ Áp Dụng Cho Sea 3")
else
Race:Seperator("Tộc")
local FM = Race:Label("Mặt Trăng")

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FM:Set("🌕: Trăng Tròn 100%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FM:Set("🌖 : Trăng Tròn 75%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FM:Set("🌗 : Trăng Tròn 50%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FM:Set("🌘 : Trăng Tròn 25%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FM:Set("🌘: Trăng Tròn 15%")
            else
                FM:Set("Rất Lâu Sẽ Trăng Tròn")
            end
        end)
    end
end)
end