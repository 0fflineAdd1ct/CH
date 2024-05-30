--CodeHub Library, by coder382, dont skid!



game.CoreGui.TopBarApp.TopBarFrame.LeftFrame.Layout.VerticalAlignment = Enum.VerticalAlignment.Bottom



local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")



if game.CoreGui:FindFirstChild("CHLibrary") then

	game.CoreGui:FindFirstChild("CHLibrary"):Destroy()

end



local Library = {}

function Library:CreateWindow(TitleText)

	local imageID = "rbxassetid://17267108755"

	local guiVis = false

	local hiddenPos = UDim2.new(0.5, 0, -1, 0)



	local TabsOpen = false



	local CHLibrary = Instance.new("ScreenGui")

	local Main_1 = Instance.new("Frame")

	local UIStroke_99 = Instance.new("UIStroke")

	local UICorner_1 = Instance.new("UICorner")

	local TopBar_1 = Instance.new("Frame")

	local UICorner_2 = Instance.new("UICorner")

	local TopBarExt_1 = Instance.new("Frame")

	local Title_1 = Instance.new("TextLabel")

	local TabHolderBtn_1 = Instance.new("ImageButton")

	local CloseBtn_1 = Instance.new("ImageButton")

	local SearchBtn_1 = Instance.new("ImageButton")

	local Line_1 = Instance.new("Frame")

	local SearchBox_1 = Instance.new("TextBox")

	local ElementsHolder_1 = Instance.new("Frame")

	local TabHolder_1 = Instance.new("Frame")

	local UICorner_13 = Instance.new("UICorner")

	local Line_2 = Instance.new("Frame")

	local TabHolderExt_1 = Instance.new("Frame")

	local TabHolderExt_2 = Instance.new("Frame")

	local Tabs_1 = Instance.new("ScrollingFrame")

	local UIPadding_7 = Instance.new("UIPadding")

	local UIListLayout_2 = Instance.new("UIListLayout")



	local parentFrame = game.CoreGui.TopBarApp.TopBarFrame.LeftFrame

	local existingFrame = parentFrame:FindFirstChild("ToggleGUIFrame")



	if existingFrame then

		existingFrame:Destroy()

	end



	local frame = Instance.new("Frame")

	frame.Name = "ToggleGUIFrame"

	frame.Size = UDim2.new(0, 32, 0, 32)

	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	frame.BackgroundTransparency = 0.5

	frame.BorderSizePixel = 0

	frame.Parent = parentFrame



	local uiCorner = Instance.new("UICorner")

	uiCorner.CornerRadius = UDim.new(0, 9)

	uiCorner.Parent = frame



	local iconBtn = Instance.new("ImageButton")

	iconBtn.Size = UDim2.new(0, 32, 0, 32)

	iconBtn.BackgroundTransparency = 1

	iconBtn.Image = imageID

	iconBtn.Parent = frame



	iconBtn.MouseButton1Click:Connect(function()

		if guiVis then

			Main_1:TweenPosition(hiddenPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)

			frame.BackgroundTransparency = 0.5

		else

			Main_1:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)

			frame.BackgroundTransparency = 0.35

		end

		guiVis = not guiVis

	end)





	CHLibrary.Name = "CHLibrary"

	CHLibrary.Parent = game.CoreGui

	CHLibrary.Enabled = true



	Main_1.Name = "Main"

	Main_1.Parent = CHLibrary

	Main_1.AnchorPoint = Vector2.new(0.5, 0.5)

	Main_1.BackgroundColor3 = Color3.fromRGB(32,32,32)

	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)

	Main_1.BorderSizePixel = 0

	Main_1.Position = UDim2.new(0.5, 0, -1, 0)

	Main_1.Size = UDim2.new(0, 363,0, 229)

	Main_1.Active = true

	Main_1.Draggable = true



           UIStroke_99.Parent = Main_1

			UIStroke_99.Color = Color3.fromRGB(76,76,76)

			UIStroke_99.Thickness = 1

			
	UICorner_1.Parent = Main_1



	TopBar_1.Name = "TopBar"

	TopBar_1.Parent = Main_1

	TopBar_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)

	TopBar_1.BorderSizePixel = 0

	TopBar_1.Size = UDim2.new(0, 363,0, 28)



	UICorner_2.Parent = TopBar_1



	TopBarExt_1.Name = "TopBarExt"

	TopBarExt_1.Parent = TopBar_1

	TopBarExt_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

	TopBarExt_1.BorderColor3 = Color3.fromRGB(0,0,0)

	TopBarExt_1.BorderSizePixel = 0

	TopBarExt_1.Position = UDim2.new(0, 0,0.785714269, 0)

	TopBarExt_1.Size = UDim2.new(0, 363,0, 6)



	Title_1.Name = "Title"

	Title_1.Parent = TopBar_1

	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

	Title_1.BackgroundTransparency = 1

	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)

	Title_1.BorderSizePixel = 0

	Title_1.Position = UDim2.new(0.0909090936, 0,0, 0)

	Title_1.Size = UDim2.new(0, 181,0, 28)

	Title_1.Font = Enum.Font.Gotham

	Title_1.Text = TitleText

	Title_1.TextColor3 = Color3.fromRGB(199,199,199)

	Title_1.TextSize = 14

	Title_1.TextXAlignment = Enum.TextXAlignment.Left



	local targetMenuColorOn = Color3.fromRGB(159, 159, 159)

	local targetMenuColorOff = Color3.fromRGB(199,199,199) 



	TabHolderBtn_1.Name = "TabHolderBtn"

	TabHolderBtn_1.Parent = TopBar_1

	TabHolderBtn_1.Active = true

	TabHolderBtn_1.BackgroundColor3 = Color3.fromRGB(199,199,199)

	TabHolderBtn_1.BackgroundTransparency = 1

	TabHolderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

	TabHolderBtn_1.BorderSizePixel = 0

	TabHolderBtn_1.Position = UDim2.new(0.0192837473, 0,0.178571433, 0)

	TabHolderBtn_1.Size = UDim2.new(0, 18,0, 18)

	TabHolderBtn_1.Image = "rbxassetid://17167622917"

	TabHolderBtn_1.ImageColor3 = Color3.fromRGB(199,199,199)



	local tweenInfo = TweenInfo.new(0.2)



	local tweenmon = TweenService:Create(TabHolderBtn_1, tweenInfo, {ImageColor3 = targetMenuColorOn})

	local tweenmoff = TweenService:Create(TabHolderBtn_1, tweenInfo, {ImageColor3 = targetMenuColorOff})



	TabHolderBtn_1.MouseButton1Click:Connect(function()

		TabsOpen = not TabsOpen

		local targetSize = TabsOpen and UDim2.new(0, 119, 0, 199) or UDim2.new(0, 0, 0, 199)

		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)



		local tween = TweenService:Create(TabHolder_1, tweenInfo, {Size = targetSize})

		tween:Play()

		Tabs_1.Visible = TabsOpen

		Line_2.Visible = TabsOpen

		if TabsOpen then

			tweenmon:Play()

		else

			tweenmoff:Play()

		end

	end)



	Line_1.Name = "Line"

	Line_1.Parent = TopBar_1

	Line_1.BackgroundColor3 = Color3.fromRGB(76,76,76)

	Line_1.BorderColor3 = Color3.fromRGB(0,0,0)

	Line_1.BorderSizePixel = 0

	Line_1.Position = UDim2.new(0, 0,1, 0)

	Line_1.Size = UDim2.new(0, 363,0, 1)



	ElementsHolder_1.Name = "ElementsHolder"

	ElementsHolder_1.Parent = Main_1

	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

	ElementsHolder_1.BackgroundTransparency = 1

	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

	ElementsHolder_1.BorderSizePixel = 0

	ElementsHolder_1.Position = UDim2.new(0.0192837473, 0,0.148471609, 0)

	ElementsHolder_1.Size = UDim2.new(0, 349,0, 187)

	ElementsHolder_1.ClipsDescendants = true



	TabHolder_1.Name = "TabHolder"

	TabHolder_1.Parent = Main_1

	TabHolder_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

	TabHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

	TabHolder_1.BorderSizePixel = 0

	TabHolder_1.Position = UDim2.new(0, 0,0.131004363, 0)

	TabHolder_1.Size = UDim2.new(0, 0,0, 199)

	TabHolder_1.Visible = true



	UICorner_13.Parent = TabHolder_1



	Line_2.Name = "Line"

	Line_2.Parent = TabHolder_1

	Line_2.BackgroundColor3 = Color3.fromRGB(76,76,76)

	Line_2.BorderColor3 = Color3.fromRGB(0,0,0)

	Line_2.BorderSizePixel = 0

	Line_2.Position = UDim2.new(1, 0,0, 0)

	Line_2.Size = UDim2.new(0, 1,0, 199)

	Line_2.Visible = false



	Tabs_1.Name = "Tabs"

	Tabs_1.Parent = TabHolder_1

	Tabs_1.Active = true

	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

	Tabs_1.BackgroundTransparency = 1

	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)

	Tabs_1.BorderSizePixel = 0

	Tabs_1.Position = UDim2.new(0.0252100844, 0,0, 0)

	Tabs_1.Size = UDim2.new(0, 113,0, 194)

	Tabs_1.ClipsDescendants = true

	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y

	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"

	Tabs_1.CanvasPosition = Vector2.new(0, 0)

	Tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)

	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never

	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None

	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

	Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(21,21,21)

	Tabs_1.ScrollBarImageTransparency = 0

	Tabs_1.ScrollBarThickness = 6

	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y

	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"

	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None

	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	Tabs_1.Visible = false



	UIPadding_7.Parent = Tabs_1

	UIPadding_7.PaddingBottom = UDim.new(0,2)

	UIPadding_7.PaddingLeft = UDim.new(0,5)

	UIPadding_7.PaddingTop = UDim.new(0,2)



	UIListLayout_2.Parent = Tabs_1

	UIListLayout_2.Padding = UDim.new(0,2)

	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder



	local Tabs = {}

	local first = true

	local currentTab = nil

	function Tabs:CreateTab(TabText)

		local targetTabColorOn = Color3.fromRGB(199,199,199)

		local targetTabColorOff = Color3.fromRGB(138, 138, 138)



		local TabBtn_1 = Instance.new("TextButton")

		local Elements_1 = Instance.new("Frame")

		local Items_1 = Instance.new("ScrollingFrame")

		local UIListLayout_1 = Instance.new("UIListLayout")

		local UIPadding_2 = Instance.new("UIPadding")



		TabBtn_1.Name = "TabBtn"

		TabBtn_1.Parent = Tabs_1

		TabBtn_1.Active = true

		TabBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

		TabBtn_1.BackgroundTransparency = 1

		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

		TabBtn_1.BorderSizePixel = 0

		TabBtn_1.Size = UDim2.new(0, 99,0, 20)

		TabBtn_1.Font = Enum.Font.Gotham

		TabBtn_1.Text = TabText

		TabBtn_1.TextColor3 = Color3.fromRGB(138, 138, 138)

		TabBtn_1.TextSize = 13

		TabBtn_1.TextXAlignment = Enum.TextXAlignment.Left



		Elements_1.Name = "Elements"

		Elements_1.Parent = ElementsHolder_1

		Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

		Elements_1.BackgroundTransparency = 1

		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)

		Elements_1.BorderSizePixel = 0

		Elements_1.Size = UDim2.new(0, 349,0, 187)



		Items_1.Name = "Items"

		Items_1.Parent = Elements_1

		Items_1.Active = true

		Items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

		Items_1.BackgroundTransparency = 1

		Items_1.BorderColor3 = Color3.fromRGB(0,0,0)

		Items_1.BorderSizePixel = 0

		Items_1.Size = UDim2.new(0, 349,0, 187)

		Items_1.ClipsDescendants = true

		Items_1.AutomaticCanvasSize = Enum.AutomaticSize.Y

		Items_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"

		Items_1.CanvasPosition = Vector2.new(0, 0)

		Items_1.CanvasSize = UDim2.new(0, 0,0.5, 0)

		Items_1.ElasticBehavior = Enum.ElasticBehavior.Never

		Items_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None

		Items_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

		Items_1.ScrollBarImageColor3 = Color3.fromRGB(67,67,67)

		Items_1.ScrollBarImageTransparency = 0

		Items_1.ScrollBarThickness = 5

		Items_1.ScrollingDirection = Enum.ScrollingDirection.Y

		Items_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"

		Items_1.VerticalScrollBarInset = Enum.ScrollBarInset.None

		Items_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		Items_1.ScrollingEnabled = true


		UIListLayout_1.Parent = Items_1

		UIListLayout_1.Padding = UDim.new(0,6)

		UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder



		UIPadding_2.Parent = Items_1

		UIPadding_2.PaddingBottom = UDim.new(0,5)

		UIPadding_2.PaddingLeft = UDim.new(0,5)

		UIPadding_2.PaddingTop = UDim.new(0,5)



		local tweenInfo = TweenInfo.new(0.2)



		local tweenton = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOn})

		local tweentoff = TweenService:Create(TabBtn_1, tweenInfo, {TextColor3 = targetTabColorOff})



		if first then

			first = false

			Elements_1.Visible = true

			currentTab = TabBtn_1

			tweenton:Play()

		else

			Elements_1.Visible = false

		end



		TabBtn_1.MouseButton1Click:Connect(function()

			if currentTab then

				tweentoff:Play()

			end

			tweenton:Play()

			if currentTab and currentTab ~= TabBtn_1 then

				currentTab.TextColor3 = targetTabColorOff

			end

			currentTab = TabBtn_1

			for i, v in next, ElementsHolder_1:GetChildren() do

				v.Visible = false

			end



			Elements_1.Visible = true

		end)



		local Elements = {}

		function Elements:CreateSection(SectionText)

			local Section_1 = Instance.new("Frame")

			local SectionText_1 = Instance.new("TextLabel")

			local UIPadding_6 = Instance.new("UIPadding")



			Section_1.Name = "Section"

			Section_1.Parent = Items_1

			Section_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Section_1.BackgroundTransparency = 1

			Section_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Section_1.BorderSizePixel = 0

			Section_1.Position = UDim2.new(0, 0,0.395480216, 0)

			Section_1.Size = UDim2.new(0, 331,0, 25)



			SectionText_1.Name = "SectionText"

			SectionText_1.Parent = Section_1

			SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			SectionText_1.BackgroundTransparency = 1

			SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SectionText_1.BorderSizePixel = 0

			SectionText_1.Size = UDim2.new(0, 331,0, 25)

			SectionText_1.Font = Enum.Font.Gotham

			SectionText_1.Text = SectionText

			SectionText_1.TextColor3 = Color3.fromRGB(199,199,199)

			SectionText_1.TextSize = 13

			SectionText_1.TextXAlignment = Enum.TextXAlignment.Left



			UIPadding_6.Parent = SectionText_1

			UIPadding_6.PaddingLeft = UDim.new(0,2)	

		end

		function Elements:CreateButton(ButtonText, Callback)	

			Callback = Callback or function()

			end



			local targetButtonColorOn = Color3.fromRGB(55,55,55)

			local targetButtonColorOff = Color3.fromRGB(49,49,49) 



			local Button_1 = Instance.new("Frame")

			local UICorner_7 = Instance.new("UICorner")

			local UIStroke_5 = Instance.new("UIStroke")

			local ButtonBtn_1 = Instance.new("TextButton")



			Button_1.Name = "Button"

			Button_1.Parent = Items_1

			Button_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Button_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Button_1.BorderSizePixel = 0

			Button_1.Position = UDim2.new(0, 0,0.395480216, 0)

			Button_1.Size = UDim2.new(0, 331,0, 25)



			UICorner_7.Parent = Button_1

			UICorner_7.CornerRadius = UDim.new(0,6)



			UIStroke_5.Parent = Button_1

			UIStroke_5.Color = Color3.fromRGB(76,76,76)

			UIStroke_5.Thickness = 1



			ButtonBtn_1.Name = "ButtonBtn"

			ButtonBtn_1.Parent = Button_1

			ButtonBtn_1.Active = true

			ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			ButtonBtn_1.BackgroundTransparency = 1

			ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

			ButtonBtn_1.BorderSizePixel = 0

			ButtonBtn_1.Size = UDim2.new(0, 331,0, 25)

			ButtonBtn_1.Font = Enum.Font.Gotham

			ButtonBtn_1.Text = ButtonText

			ButtonBtn_1.TextColor3 = Color3.fromRGB(199,199,199)

			ButtonBtn_1.TextSize = 14



			local tweenInfo = TweenInfo.new(0.2)



			local tweenbon = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})

			local tweenboff = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})



			ButtonBtn_1.MouseButton1Click:Connect(function()

				tweenbon:Play()

				wait(0.1)

				tweenboff:Play()

				Callback()

			end)

		end

		function Elements:CreateToggle(ToggleText, Callback)

			Callback = Callback or function()

			end



			local toggled = false

			local debounce = false



			local targetButtonColorOnb = Color3.fromRGB(55,55,55)

			local targetButtonColorOffb = Color3.fromRGB(49,49,49) 



			local targetButtonColorOn = Color3.fromRGB(199,199,199)

			local targetButtonColorOff = Color3.fromRGB(95,95,95) 



			local Toggle_2 = Instance.new("Frame")

			local UICorner_5 = Instance.new("UICorner")

			local UIStroke_3 = Instance.new("UIStroke")

			local ToggleText_2 = Instance.new("TextLabel")

			local UIPadding_3 = Instance.new("UIPadding")

			local Toggler_2 = Instance.new("Frame")

			local UICorner_6 = Instance.new("UICorner")

			local UIStroke_4 = Instance.new("UIStroke")

			local TogglerBtn_2 = Instance.new("TextButton")

			local UIGradient_2 = Instance.new("UIGradient")



			Toggle_2.Name = "Toggle"

			Toggle_2.Parent = Items_1

			Toggle_2.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Toggle_2.BorderColor3 = Color3.fromRGB(0,0,0)

			Toggle_2.BorderSizePixel = 0

			Toggle_2.Size = UDim2.new(0, 331,0, 29)



			UICorner_5.Parent = Toggle_2

			UICorner_5.CornerRadius = UDim.new(0,6)



			UIStroke_3.Parent = Toggle_2

			UIStroke_3.Color = Color3.fromRGB(76,76,76)

			UIStroke_3.Thickness = 1



			ToggleText_2.Name = "ToggleText"

			ToggleText_2.Parent = Toggle_2

			ToggleText_2.BackgroundColor3 = Color3.fromRGB(255,255,255)

			ToggleText_2.BackgroundTransparency = 1

			ToggleText_2.BorderColor3 = Color3.fromRGB(0,0,0)

			ToggleText_2.BorderSizePixel = 0

			ToggleText_2.Size = UDim2.new(0, 276,0, 29)

			ToggleText_2.Font = Enum.Font.Gotham

			ToggleText_2.Text = ToggleText

			ToggleText_2.TextColor3 = Color3.fromRGB(199,199,199)

			ToggleText_2.TextSize = 14

			ToggleText_2.TextXAlignment = Enum.TextXAlignment.Left



			UIPadding_3.Parent = ToggleText_2

			UIPadding_3.PaddingLeft = UDim.new(0,8)



			Toggler_2.Name = "Toggler"

			Toggler_2.Parent = Toggle_2

			Toggler_2.BackgroundColor3 = Color3.fromRGB(95,95,95)

			Toggler_2.BorderColor3 = Color3.fromRGB(0,0,0)

			Toggler_2.BorderSizePixel = 0

			Toggler_2.Position = UDim2.new(0.924471319, 0,0.137931034, 0)

			Toggler_2.Size = UDim2.new(0, 20,0, 20)



			UICorner_6.Parent = Toggler_2

			UICorner_6.CornerRadius = UDim.new(0,6)



			UIStroke_4.Parent = Toggler_2

			UIStroke_4.Color = Color3.fromRGB(76,76,76)

			UIStroke_4.Thickness = 1



			TogglerBtn_2.Name = "TogglerBtn"

			TogglerBtn_2.Parent = Toggler_2

			TogglerBtn_2.Active = true

			TogglerBtn_2.BackgroundColor3 = Color3.fromRGB(255,255,255)

			TogglerBtn_2.BackgroundTransparency = 1

			TogglerBtn_2.BorderColor3 = Color3.fromRGB(0,0,0)

			TogglerBtn_2.BorderSizePixel = 0

			TogglerBtn_2.Size = UDim2.new(0, 20,0, 20)

			TogglerBtn_2.Font = Enum.Font.SourceSans

			TogglerBtn_2.Text = ""

			TogglerBtn_2.TextSize = 14



			UIGradient_2.Parent = Toggler_2

			UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(213, 213, 213)), ColorSequenceKeypoint.new(1, Color3.fromRGB(154, 154, 154))}

			UIGradient_2.Rotation = 55



			local tweenInfo = TweenInfo.new(0.2)



			local tweenbon = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetButtonColorOn})

			local tweenboff = TweenService:Create(Toggler_2, tweenInfo, {BackgroundColor3 = targetButtonColorOff})



			local tweenbonb = TweenService:Create(Toggle_2, tweenInfo, {BackgroundColor3 = targetButtonColorOnb})

			local tweenboffb = TweenService:Create(Toggle_2, tweenInfo, {BackgroundColor3 = targetButtonColorOffb})



			TogglerBtn_2.MouseButton1Click:Connect(function()

				if debounce == false then

					if toggled == false then

						debounce = true

						tweenbonb:Play()

						tweenbon:Play()

						debounce = false

						toggled = true

						pcall(Callback, toggled)

					elseif toggled == true then

						debounce = true

						tweenboffb:Play()

						tweenboff:Play()

						debounce = false

						toggled = false

						pcall(Callback, toggled)

					end

				end

			end)

		end

		function Elements:CreateSlider(SliderText, min, max, Callback)



			local targetSliderColorOn = Color3.fromRGB(55,55,55)

			local targetSliderColorOff = Color3.fromRGB(49,49,49) 



			local Slider_1 = Instance.new("Frame")

			local UICorner_8 = Instance.new("UICorner")

			local UIStroke_6 = Instance.new("UIStroke")

			local SliderText_1 = Instance.new("TextLabel")

			local UIPadding_4 = Instance.new("UIPadding")

			local SliderHolder_1 = Instance.new("Frame")

			local UICorner_9 = Instance.new("UICorner")

			local UIStroke_7 = Instance.new("UIStroke")

			local SliderBtn_1 = Instance.new("TextButton")

			local SliderInner_1 = Instance.new("Frame")

			local UICorner_10 = Instance.new("UICorner")

			local SliderValue_1 = Instance.new("TextLabel")



			Slider_1.Name = "Slider"

			Slider_1.Parent = Items_1

			Slider_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Slider_1.BorderSizePixel = 0

			Slider_1.Size = UDim2.new(0, 331,0, 29)



			UICorner_8.Parent = Slider_1

			UICorner_8.CornerRadius = UDim.new(0,6)



			UIStroke_6.Parent = Slider_1

			UIStroke_6.Color = Color3.fromRGB(76,76,76)

			UIStroke_6.Thickness = 1



			SliderText_1.Name = "SliderText"

			SliderText_1.Parent = Slider_1

			SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			SliderText_1.BackgroundTransparency = 1

			SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SliderText_1.BorderSizePixel = 0

			SliderText_1.Size = UDim2.new(0, 152,0, 29)

			SliderText_1.Font = Enum.Font.Gotham

			SliderText_1.Text = SliderText

			SliderText_1.TextColor3 = Color3.fromRGB(199,199,199)

			SliderText_1.TextSize = 14

			SliderText_1.TextXAlignment = Enum.TextXAlignment.Left



			UIPadding_4.Parent = SliderText_1

			UIPadding_4.PaddingLeft = UDim.new(0,8)



			SliderHolder_1.Name = "SliderHolder"

			SliderHolder_1.Parent = Slider_1

			SliderHolder_1.BackgroundColor3 = Color3.fromRGB(32,32,32)

			SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SliderHolder_1.BorderSizePixel = 0

			SliderHolder_1.Position = UDim2.new(0.555891216, 0,0.37931034, 0)

			SliderHolder_1.Size = UDim2.new(0, 142,0, 6)



			UICorner_9.Parent = SliderHolder_1

			UICorner_9.CornerRadius = UDim.new(0,6)



			UIStroke_7.Parent = SliderHolder_1

			UIStroke_7.Color = Color3.fromRGB(76,76,76)

			UIStroke_7.Thickness = 1



			SliderBtn_1.Name = "SliderBtn"

			SliderBtn_1.Parent = SliderHolder_1

			SliderBtn_1.Active = true

			SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			SliderBtn_1.BackgroundTransparency = 1

			SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SliderBtn_1.BorderSizePixel = 0

			SliderBtn_1.Size = UDim2.new(0, 142,0, 6)

			SliderBtn_1.Font = Enum.Font.SourceSans

			SliderBtn_1.Text = ""

			SliderBtn_1.TextSize = 14



			SliderInner_1.Name = "SliderInner"

			SliderInner_1.Parent = SliderBtn_1

			SliderInner_1.BackgroundColor3 = Color3.fromRGB(60,60,60)

			SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SliderInner_1.BorderSizePixel = 0

			SliderInner_1.Size = UDim2.new(0, 0,0, 6)



			UICorner_10.Parent = SliderInner_1

			UICorner_10.CornerRadius = UDim.new(0,6)



			SliderValue_1.Name = "SliderValue"

			SliderValue_1.Parent = Slider_1

			SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			SliderValue_1.BackgroundTransparency = 1

			SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SliderValue_1.BorderSizePixel = 0

			SliderValue_1.Position = UDim2.new(0.395770401, 0,0, 0)

			SliderValue_1.Size = UDim2.new(0, 41,0, 29)

			SliderValue_1.Font = Enum.Font.Gotham

			SliderValue_1.Text = min

			SliderValue_1.TextColor3 = Color3.fromRGB(199,199,199)

			SliderValue_1.TextSize = 12

			SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right



			local tweenInfo = TweenInfo.new(0.2)



			local tweenslon = TweenService:Create(Slider_1, tweenInfo, {BackgroundColor3 = targetSliderColorOn})

			local tweensloff = TweenService:Create(Slider_1, tweenInfo, {BackgroundColor3 = targetSliderColorOff})



			local isDragging = false



			SliderBtn_1.InputBegan:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then

					isDragging = true

					tweenslon:Play()

				end

			end)



			game:GetService("UserInputService").InputEnded:Connect(function(input)

				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then

					isDragging = false

					tweensloff:Play()

				end

			end)



			game:GetService("RunService").RenderStepped:Connect(function()

				if isDragging then

					local mousePosition = game:GetService("UserInputService"):GetMouseLocation()

					local sliderPosition = SliderBtn_1.AbsolutePosition

					local sliderWidth = SliderBtn_1.AbsoluteSize.X

					local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)

					SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)



					-- Calculate and display value label

					local value = fillWidth / sliderWidth

					local displayValue = min + (max - min) * value

					SliderValue_1.Text = tostring(math.floor(displayValue + 0.5))

					Callback(displayValue)

				end

			end)



		end

		function Elements:CreateBox(BoxText, Callback)



			local targetBoxColorOn = Color3.fromRGB(55,55,55)

			local targetBoxColorOff = Color3.fromRGB(49,49,49) 



			local Box_1 = Instance.new("Frame")

			local UICorner_11 = Instance.new("UICorner")

			local UIStroke_8 = Instance.new("UIStroke")

			local BoxText_1 = Instance.new("TextLabel")

			local UIPadding_5 = Instance.new("UIPadding")

			local BoxHolder_1 = Instance.new("Frame")

			local UICorner_12 = Instance.new("UICorner")

			local UIStroke_9 = Instance.new("UIStroke")

			local TextBox_1 = Instance.new("TextBox")



			Box_1.Name = "Box"

			Box_1.Parent = Items_1

			Box_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Box_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Box_1.BorderSizePixel = 0

			Box_1.Size = UDim2.new(0, 331,0, 29)



			UICorner_11.Parent = Box_1

			UICorner_11.CornerRadius = UDim.new(0,6)



			UIStroke_8.Parent = Box_1

			UIStroke_8.Color = Color3.fromRGB(76,76,76)

			UIStroke_8.Thickness = 1



			BoxText_1.Name = "BoxText"

			BoxText_1.Parent = Box_1

			BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			BoxText_1.BackgroundTransparency = 1

			BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)

			BoxText_1.BorderSizePixel = 0

			BoxText_1.Size = UDim2.new(0, 228,0, 29)

			BoxText_1.Font = Enum.Font.Gotham

			BoxText_1.Text = BoxText

			BoxText_1.TextColor3 = Color3.fromRGB(199,199,199)

			BoxText_1.TextSize = 14

			BoxText_1.TextXAlignment = Enum.TextXAlignment.Left



			UIPadding_5.Parent = BoxText_1

			UIPadding_5.PaddingLeft = UDim.new(0,8)



			BoxHolder_1.Name = "BoxHolder"

			BoxHolder_1.Parent = Box_1

			BoxHolder_1.BackgroundColor3 = Color3.fromRGB(32,32,32)

			BoxHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

			BoxHolder_1.BorderSizePixel = 0

			BoxHolder_1.Position = UDim2.new(0.725075543, 0,0.137931034, 0)

			BoxHolder_1.Size = UDim2.new(0, 86,0, 20)



			UICorner_12.Parent = BoxHolder_1

			UICorner_12.CornerRadius = UDim.new(0,6)



			UIStroke_9.Parent = BoxHolder_1

			UIStroke_9.Color = Color3.fromRGB(76,76,76)

			UIStroke_9.Thickness = 1



			TextBox_1.Parent = BoxHolder_1

			TextBox_1.Active = true

			TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			TextBox_1.BackgroundTransparency = 1

			TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)

			TextBox_1.BorderSizePixel = 0

			TextBox_1.CursorPosition = -1

			TextBox_1.Size = UDim2.new(0, 86,0, 20)

			TextBox_1.Font = Enum.Font.Gotham

			TextBox_1.PlaceholderColor3 = Color3.fromRGB(199,199,199)

			TextBox_1.PlaceholderText = "..."

			TextBox_1.Text = ""

			TextBox_1.TextColor3 = Color3.fromRGB(199,199,199)

			TextBox_1.TextSize = 12



			local tweenInfo = TweenInfo.new(0.2)



			local tweenboxon = TweenService:Create(Box_1, tweenInfo, {BackgroundColor3 = targetBoxColorOn})

			local tweenboxoff = TweenService:Create(Box_1, tweenInfo, {BackgroundColor3 = targetBoxColorOff})



			TextBox_1.FocusLost:Connect(function()

				Callback(TextBox_1.Text)

				tweenboxoff:Play()

			end)

			TextBox_1.Focused:Connect(function()

				tweenboxon:Play()			

			end)

		end

		function Elements:CreateDropdown(DropdownText, options, Callback)

			local Dropdown_1 = Instance.new("Frame")

			Dropdown_1.Name = "Dropdown"

			Dropdown_1.Parent = Items_1

			Dropdown_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			Dropdown_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Dropdown_1.BorderSizePixel = 0

			Dropdown_1.Position = UDim2.new(0, 0, 0.401129931, 0)

			Dropdown_1.Size = UDim2.new(0, 331, 0, 29)



			local UICorner_11 = Instance.new("UICorner")

			UICorner_11.Parent = Dropdown_1

			UICorner_11.CornerRadius = UDim.new(0,6)



			local UIStroke_10 = Instance.new("UIStroke")

			UIStroke_10.Parent = Dropdown_1

			UIStroke_10.Color = Color3.fromRGB(76,76,76)

			UIStroke_10.Thickness = 1



			local A_DropdownMainHolder_1 = Instance.new("Frame")

			A_DropdownMainHolder_1.Name = "A_DropdownMainHolder"

			A_DropdownMainHolder_1.Parent = Dropdown_1

			A_DropdownMainHolder_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			A_DropdownMainHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

			A_DropdownMainHolder_1.BorderSizePixel = 0

			A_DropdownMainHolder_1.Position = UDim2.new(-0.0755287036, 0, 0, 0)

			A_DropdownMainHolder_1.Size = UDim2.new(0, 331, 0, 29)



			local UICorner_12 = Instance.new("UICorner")

			UICorner_12.Parent = A_DropdownMainHolder_1

			UICorner_12.CornerRadius = UDim.new(0,6)



			local UIStroke_11 = Instance.new("UIStroke")

			UIStroke_11.Parent = A_DropdownMainHolder_1

			UIStroke_11.Color = Color3.fromRGB(76,76,76)

			UIStroke_11.Thickness = 1



			local DropdownText_1 = Instance.new("TextLabel")

			DropdownText_1.Name = "DropdownText"

			DropdownText_1.Parent = A_DropdownMainHolder_1

			DropdownText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			DropdownText_1.BackgroundTransparency = 1

			DropdownText_1.BorderColor3 = Color3.fromRGB(0,0,0)

			DropdownText_1.BorderSizePixel = 0

			DropdownText_1.Size = UDim2.new(0, 172, 0, 29)

			DropdownText_1.Font = Enum.Font.Gotham

			DropdownText_1.Text = DropdownText

			DropdownText_1.TextColor3 = Color3.fromRGB(199,199,199)

			DropdownText_1.TextSize = 14

			DropdownText_1.TextXAlignment = Enum.TextXAlignment.Left



			local UIPadding_7 = Instance.new("UIPadding")

			UIPadding_7.Parent = DropdownText_1

			UIPadding_7.PaddingLeft = UDim.new(0,8)



			local DropdownBtn_1 = Instance.new("ImageButton")

			DropdownBtn_1.Name = "DropdownBtn"

			DropdownBtn_1.Parent = A_DropdownMainHolder_1

			DropdownBtn_1.Active = true

			DropdownBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			DropdownBtn_1.BackgroundTransparency = 1

			DropdownBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

			DropdownBtn_1.BorderSizePixel = 0

			DropdownBtn_1.Position = UDim2.new(0.924471319, 0, 0.206896558, 0)

			DropdownBtn_1.Size = UDim2.new(0, 17, 0, 17)

			DropdownBtn_1.Image = "rbxassetid://17251687270"

			DropdownBtn_1.ImageColor3 = Color3.fromRGB(199,199,199)



			local SelectedOption_1 = Instance.new("TextLabel")

			SelectedOption_1.Name = "SelectedOption"

			SelectedOption_1.Parent = A_DropdownMainHolder_1

			SelectedOption_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			SelectedOption_1.BackgroundTransparency = 1

			SelectedOption_1.BorderColor3 = Color3.fromRGB(0,0,0)

			SelectedOption_1.BorderSizePixel = 0

			SelectedOption_1.Position = UDim2.new(0.555891216, 0, 0.206896558, 0)

			SelectedOption_1.Size = UDim2.new(0, 114, 0, 17)

			SelectedOption_1.Font = Enum.Font.Gotham

			SelectedOption_1.Text = "..."

			SelectedOption_1.TextColor3 = Color3.fromRGB(199,199,199)

			SelectedOption_1.TextSize = 14

			SelectedOption_1.TextXAlignment = Enum.TextXAlignment.Right



			local B_DropdownItemsHolder_1 = Instance.new("Frame")

			B_DropdownItemsHolder_1.Name = "B_DropdownItemsHolder"

			B_DropdownItemsHolder_1.Parent = Dropdown_1

			B_DropdownItemsHolder_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			B_DropdownItemsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

			B_DropdownItemsHolder_1.BorderSizePixel = 0

			B_DropdownItemsHolder_1.Position = UDim2.new(0, 0, 0.243697479, 0)

			B_DropdownItemsHolder_1.Size = UDim2.new(0, 331, 0, 90)

			B_DropdownItemsHolder_1.Visible = false



			local UICorner_13 = Instance.new("UICorner")

			UICorner_13.Parent = B_DropdownItemsHolder_1

			UICorner_13.CornerRadius = UDim.new(0,6)



			local UIStroke_12 = Instance.new("UIStroke")

			UIStroke_12.Parent = B_DropdownItemsHolder_1

			UIStroke_12.Color = Color3.fromRGB(76,76,76)

			UIStroke_12.Thickness = 1



			local DropdownOptions_1 = Instance.new("ScrollingFrame")

			DropdownOptions_1.Name = "DropdownOptions"

			DropdownOptions_1.Parent = B_DropdownItemsHolder_1

			DropdownOptions_1.Active = true

			DropdownOptions_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			DropdownOptions_1.BackgroundTransparency = 1

			DropdownOptions_1.BorderColor3 = Color3.fromRGB(0,0,0)

			DropdownOptions_1.BorderSizePixel = 0

			DropdownOptions_1.Position = UDim2.new(0.0181268882, 0, 0.0666666701, 0)

			DropdownOptions_1.Size = UDim2.new(0, 320, 0, 78)

			DropdownOptions_1.ClipsDescendants = true

			DropdownOptions_1.AutomaticCanvasSize = Enum.AutomaticSize.Y

			DropdownOptions_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"

			DropdownOptions_1.CanvasPosition = Vector2.new(0, 0)

			DropdownOptions_1.CanvasSize = UDim2.new(0, 0, 0.5, 0)

			DropdownOptions_1.ElasticBehavior = Enum.ElasticBehavior.Never

			DropdownOptions_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None

			DropdownOptions_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

			DropdownOptions_1.ScrollBarImageColor3 = Color3.fromRGB(109,109,109)

			DropdownOptions_1.ScrollBarImageTransparency = 0

			DropdownOptions_1.ScrollBarThickness = 5

			DropdownOptions_1.ScrollingDirection = Enum.ScrollingDirection.Y

			DropdownOptions_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"

			DropdownOptions_1.VerticalScrollBarInset = Enum.ScrollBarInset.None

			DropdownOptions_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right



			local UIListLayout_2 = Instance.new("UIListLayout")

			UIListLayout_2.Parent = DropdownOptions_1

			UIListLayout_2.Padding = UDim.new(0,6)

			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder



			local UIPadding_8 = Instance.new("UIPadding")

			UIPadding_8.Parent = DropdownOptions_1

			UIPadding_8.PaddingBottom = UDim.new(0,3)

			UIPadding_8.PaddingLeft = UDim.new(0,3)

			UIPadding_8.PaddingTop = UDim.new(0,3)



			local UIListLayout_3 = Instance.new("UIListLayout")

			UIListLayout_3.Parent = Dropdown_1

			UIListLayout_3.SortOrder = Enum.SortOrder.Name



			local isDropdownOpen = false



			local function ToggleDropdown()

				isDropdownOpen = not isDropdownOpen

				local targetSize = isDropdownOpen and UDim2.new(0, 331, 0, 119) or UDim2.new(0, 331, 0, 29)

				local targetRotation = isDropdownOpen and -90 or 0

				local sizeTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local sizeTween = TweenService:Create(Dropdown_1, sizeTweenInfo, { Size = targetSize })

				local rotationTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local rotationTween = TweenService:Create(DropdownBtn_1, rotationTweenInfo, { Rotation = targetRotation })

				if isDropdownOpen then

					sizeTween:Play()

					rotationTween:Play()

					sizeTween.Completed:Wait()

					B_DropdownItemsHolder_1.Visible = true

				else

					B_DropdownItemsHolder_1.Visible = false

					sizeTween:Play()

					rotationTween:Play()

				end

			end



			DropdownBtn_1.MouseButton1Click:Connect(ToggleDropdown)



			for i, optionText in ipairs(options) do

				local OptionBtnHolder_1 = Instance.new("Frame")

				OptionBtnHolder_1.Name = "OptionBtnHolder"

				OptionBtnHolder_1.Parent = DropdownOptions_1

				OptionBtnHolder_1.BackgroundColor3 = Color3.fromRGB(32,32,32)

				OptionBtnHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)

				OptionBtnHolder_1.BorderSizePixel = 0

				OptionBtnHolder_1.Size = UDim2.new(0, 305, 0, 25)



				local UICorner_14 = Instance.new("UICorner")

				UICorner_14.Parent = OptionBtnHolder_1

				UICorner_14.CornerRadius = UDim.new(0,6)



				local OptionBtn = Instance.new("TextButton")

				OptionBtn.Name = "OptionBtn"

				OptionBtn.Parent = OptionBtnHolder_1

				OptionBtn.Active = true

				OptionBtn.BackgroundColor3 = Color3.fromRGB(255,255,255)

				OptionBtn.BackgroundTransparency = 1

				OptionBtn.BorderColor3 = Color3.fromRGB(0,0,0)

				OptionBtn.BorderSizePixel = 0

				OptionBtn.Size = UDim2.new(0, 305, 0, 25)

				OptionBtn.Font = Enum.Font.Gotham

				OptionBtn.Text = optionText

				OptionBtn.TextColor3 = Color3.fromRGB(199,199,199)

				OptionBtn.TextSize = 14



				local UIStroke_13 = Instance.new("UIStroke")

				UIStroke_13.Parent = OptionBtnHolder_1

				UIStroke_13.Color = Color3.fromRGB(76,76,76)

				UIStroke_13.Thickness = 1



				OptionBtn.MouseButton1Click:Connect(function()

					SelectedOption_1.Text = optionText

					Callback(optionText)

					ToggleDropdown()

				end)

			end

		end

		function Elements:CreateColorPicker(ColorText,Callback)

			local ColorPicker = {}



			local ColorPicker_1 = Instance.new("Frame")

			local UICorner_15 = Instance.new("UICorner")

			local UIStroke_14 = Instance.new("UIStroke")

			local A_DropdownMainHolder_2 = Instance.new("Frame")

			local UICorner_16 = Instance.new("UICorner")

			local UIStroke_15 = Instance.new("UIStroke")

			local DropdownText_2 = Instance.new("TextLabel")

			local UIPadding_9 = Instance.new("UIPadding")

			local ColorBtn_1 = Instance.new("ImageButton")

			local UICorner_17 = Instance.new("UICorner")

			local B_DropdownItemsHolder_2 = Instance.new("Frame")

			local UICorner_18 = Instance.new("UICorner")

			local UIStroke_16 = Instance.new("UIStroke")

			local ColourWheel_1 = Instance.new("ImageButton")

			local UICorner_19 = Instance.new("UICorner")

			local Picker_1 = Instance.new("ImageLabel")

			local DarknessPicker_1 = Instance.new("ImageButton")

			local UICorner_20 = Instance.new("UICorner")

			local UIGradient_3 = Instance.new("UIGradient")

			local Slider_2 = Instance.new("ImageLabel")

			local RLabel_1 = Instance.new("TextLabel")

			local GLabel_1 = Instance.new("TextLabel")

			local BLabel_1 = Instance.new("TextLabel")

			local UIListLayout_4 = Instance.new("UIListLayout")



			ColorPicker_1.Name = "ColorPicker"

			ColorPicker_1.Parent = Items_1

			ColorPicker_1.BackgroundColor3 = Color3.fromRGB(49,49,49)

			ColorPicker_1.BorderColor3 = Color3.fromRGB(0,0,0)

			ColorPicker_1.BorderSizePixel = 0

			ColorPicker_1.Position = UDim2.new(0, 0,0.254237294, 0)

			ColorPicker_1.Size = UDim2.new(0, 331,0, 29)



			UICorner_15.Parent = ColorPicker_1

			UICorner_15.CornerRadius = UDim.new(0,6)



			UIStroke_14.Parent = ColorPicker_1

			UIStroke_14.Color = Color3.fromRGB(76,76,76)

			UIStroke_14.Thickness = 1



			A_DropdownMainHolder_2.Name = "A_DropdownMainHolder"

			A_DropdownMainHolder_2.Parent = ColorPicker_1

			A_DropdownMainHolder_2.BackgroundColor3 = Color3.fromRGB(49,49,49)

			A_DropdownMainHolder_2.BorderColor3 = Color3.fromRGB(0,0,0)

			A_DropdownMainHolder_2.BorderSizePixel = 0

			A_DropdownMainHolder_2.Position = UDim2.new(-0.0755287036, 0,0, 0)

			A_DropdownMainHolder_2.Size = UDim2.new(0, 331,0, 29)



			UICorner_16.Parent = A_DropdownMainHolder_2

			UICorner_16.CornerRadius = UDim.new(0,6)



			UIStroke_15.Parent = A_DropdownMainHolder_2

			UIStroke_15.Color = Color3.fromRGB(76,76,76)

			UIStroke_15.Thickness = 1



			DropdownText_2.Name = "DropdownText"

			DropdownText_2.Parent = A_DropdownMainHolder_2

			DropdownText_2.BackgroundColor3 = Color3.fromRGB(255,255,255)

			DropdownText_2.BackgroundTransparency = 1

			DropdownText_2.BorderColor3 = Color3.fromRGB(0,0,0)

			DropdownText_2.BorderSizePixel = 0

			DropdownText_2.Size = UDim2.new(0, 172,0, 29)

			DropdownText_2.Font = Enum.Font.Gotham

			DropdownText_2.Text = ColorText

			DropdownText_2.TextColor3 = Color3.fromRGB(199,199,199)

			DropdownText_2.TextSize = 14

			DropdownText_2.TextXAlignment = Enum.TextXAlignment.Left



			UIPadding_9.Parent = DropdownText_2

			UIPadding_9.PaddingLeft = UDim.new(0,8)



			ColorBtn_1.Name = "ColorBtn"

			ColorBtn_1.Parent = A_DropdownMainHolder_2

			ColorBtn_1.Active = true

			ColorBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			ColorBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)

			ColorBtn_1.BorderSizePixel = 0

			ColorBtn_1.Position = UDim2.new(0.882175207, 0,0.138034165, 0)

			ColorBtn_1.Size = UDim2.new(0, 31,0, 19)



			UICorner_17.Parent = ColorBtn_1

			UICorner_17.CornerRadius = UDim.new(0,6)



			B_DropdownItemsHolder_2.Name = "B_DropdownItemsHolder"

			B_DropdownItemsHolder_2.Parent = ColorPicker_1

			B_DropdownItemsHolder_2.BackgroundColor3 = Color3.fromRGB(49,49,49)

			B_DropdownItemsHolder_2.BorderColor3 = Color3.fromRGB(0,0,0)

			B_DropdownItemsHolder_2.BorderSizePixel = 0

			B_DropdownItemsHolder_2.Position = UDim2.new(0, 0,0.243697479, 0)

			B_DropdownItemsHolder_2.Size = UDim2.new(0, 331,0, 116)

			B_DropdownItemsHolder_2.Visible = false



			UICorner_18.Parent = B_DropdownItemsHolder_2

			UICorner_18.CornerRadius = UDim.new(0,6)



			UIStroke_16.Parent = B_DropdownItemsHolder_2

			UIStroke_16.Color = Color3.fromRGB(76,76,76)

			UIStroke_16.Thickness = 1



			ColourWheel_1.Name = "ColourWheel"

			ColourWheel_1.Parent = B_DropdownItemsHolder_2

			ColourWheel_1.Active = true

			ColourWheel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			ColourWheel_1.BackgroundTransparency = 1

			ColourWheel_1.BorderColor3 = Color3.fromRGB(0,0,0)

			ColourWheel_1.BorderSizePixel = 0

			ColourWheel_1.Position = UDim2.new(0.531722069, 0,0.068965517, 0)

			ColourWheel_1.Size = UDim2.new(0, 100,0, 100)

			ColourWheel_1.Image = "http://www.roblox.com/asset/?id=6020299385"



			UICorner_19.Parent = ColourWheel_1

			UICorner_19.CornerRadius = UDim.new(0,6)



			Picker_1.Name = "Picker"

			Picker_1.Parent = ColourWheel_1

			Picker_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			Picker_1.BackgroundTransparency = 1

			Picker_1.BorderColor3 = Color3.fromRGB(0,0,0)

			Picker_1.BorderSizePixel = 0

			Picker_1.Position = UDim2.new(0.449999988, 0,0.449999988, 0)

			Picker_1.Size = UDim2.new(0, 10,0, 10)

			Picker_1.Image = "rbxassetid://17270750669"



			DarknessPicker_1.Name = "DarknessPicker"

			DarknessPicker_1.Parent = B_DropdownItemsHolder_2

			DarknessPicker_1.Active = true

			DarknessPicker_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			DarknessPicker_1.BorderColor3 = Color3.fromRGB(0,0,0)

			DarknessPicker_1.BorderSizePixel = 0

			DarknessPicker_1.Position = UDim2.new(0.882175207, 0,0.0862068981, 0)

			DarknessPicker_1.Size = UDim2.new(0, 31,0, 100)



			UICorner_20.Parent = DarknessPicker_1

			UICorner_20.CornerRadius = UDim.new(0,6)



			UIGradient_3.Parent = DarknessPicker_1

			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))}

			UIGradient_3.Rotation = 90



			Slider_2.Name = "Slider"

			Slider_2.Parent = DarknessPicker_1

			Slider_2.AnchorPoint = Vector2.new(0.5, 0)

			Slider_2.BackgroundColor3 = Color3.fromRGB(255,8,0)

			Slider_2.BorderColor3 = Color3.fromRGB(0,0,0)

			Slider_2.BorderSizePixel = 0

			Slider_2.Position = UDim2.new(0.5, 0,0, 0)

			Slider_2.Size = UDim2.new(0, 35,0, 2)



			RLabel_1.Name = "RLabel"

			RLabel_1.Parent = B_DropdownItemsHolder_2

			RLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			RLabel_1.BackgroundTransparency = 1

			RLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)

			RLabel_1.BorderSizePixel = 0

			RLabel_1.Position = UDim2.new(0.0392749235, 0,0.103448279, 0)

			RLabel_1.Size = UDim2.new(0, 139,0, 24)

			RLabel_1.Font = Enum.Font.GothamBold

			RLabel_1.Text = "R: 255"

			RLabel_1.TextColor3 = Color3.fromRGB(199,199,199)

			RLabel_1.TextSize = 14

			RLabel_1.TextXAlignment = Enum.TextXAlignment.Left



			GLabel_1.Name = "GLabel"

			GLabel_1.Parent = B_DropdownItemsHolder_2

			GLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			GLabel_1.BackgroundTransparency = 1

			GLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)

			GLabel_1.BorderSizePixel = 0

			GLabel_1.Position = UDim2.new(0.0392749235, 0,0.396551728, 0)

			GLabel_1.Size = UDim2.new(0, 139,0, 24)

			GLabel_1.Font = Enum.Font.GothamBold

			GLabel_1.Text = "G: 255"

			GLabel_1.TextColor3 = Color3.fromRGB(199,199,199)

			GLabel_1.TextSize = 14

			GLabel_1.TextXAlignment = Enum.TextXAlignment.Left



			BLabel_1.Name = "BLabel"

			BLabel_1.Parent = B_DropdownItemsHolder_2

			BLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)

			BLabel_1.BackgroundTransparency = 1

			BLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)

			BLabel_1.BorderSizePixel = 0

			BLabel_1.Position = UDim2.new(0.0392749235, 0,0.672413766, 0)

			BLabel_1.Size = UDim2.new(0, 139,0, 24)

			BLabel_1.Font = Enum.Font.GothamBold

			BLabel_1.Text = "B: 255"

			BLabel_1.TextColor3 = Color3.fromRGB(199,199,199)

			BLabel_1.TextSize = 14

			BLabel_1.TextXAlignment = Enum.TextXAlignment.Left



			UIListLayout_4.Parent = ColorPicker_1

			UIListLayout_4.SortOrder = Enum.SortOrder.Name




			local isDropdownOpen = false



			local function ToggleDropdown()

				isDropdownOpen = not isDropdownOpen

				local targetSize = isDropdownOpen and UDim2.new(0, 331, 0, 145) or UDim2.new(0, 331, 0, 29)

				local sizeTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

				local sizeTween = TweenService:Create(ColorPicker_1, sizeTweenInfo, { Size = targetSize })

				if isDropdownOpen then

					sizeTween:Play()

					sizeTween.Completed:Wait()

					B_DropdownItemsHolder_2.Visible = true

				else

					B_DropdownItemsHolder_2.Visible = false

					sizeTween:Play()

				end

			end



			ColorBtn_1.MouseButton1Click:Connect(ToggleDropdown)


local colourWheel = ColourWheel_1
local wheelPicker = Picker_1

local darknessPicker = DarknessPicker_1
local darknessSlider = Slider_2

local colourDisplay = ColorBtn_1
local rTextLabel = RLabel_1
local gTextLabel = GLabel_1
local bTextLabel = BLabel_1

local uis = game:GetService("UserInputService")

local buttonDown = false
local movingSlider = false

local UIStrokes = {UIStroke_99}
local TextLabels = {Title_1}
local Lines = {Line_2, Line_1}

local fileName = "savedColors.json"

local function updateUIStrokes(color)
    for _, stroke in ipairs(UIStrokes) do
        stroke.Color = color
    end

    for _, textLabel in ipairs(TextLabels) do
        textLabel.TextColor3 = color
    end

    for _, frame in ipairs(Lines) do
        frame.BackgroundColor3 = color
    end
end

local function saveColors(color)
    local colorData = {
        R = math.floor(color.R * 255),
        G = math.floor(color.G * 255),
        B = math.floor(color.B * 255)
    }
    local jsonColorData = HttpService:JSONEncode(colorData)
    writefile(fileName, jsonColorData)
end

local function loadColors()
    if not isfile(fileName) then
        return  -- No saved colors file found
    end

    local jsonColorData = readfile(fileName)
    local colorData = HttpService:JSONDecode(jsonColorData)
    local color = Color3.fromRGB(colorData.R, colorData.G, colorData.B)
    updateUIStrokes(color)
    -- Update other UI elements as needed
end

local function updateColour(centreOfWheel)

    local colourPickerCentre = Vector2.new(
        colourWheel.Picker.AbsolutePosition.X + (colourWheel.Picker.AbsoluteSize.X / 2),
        colourWheel.Picker.AbsolutePosition.Y + (colourWheel.Picker.AbsoluteSize.Y / 2)
    )
    local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
    local s = (centreOfWheel - colourPickerCentre).Magnitude / (colourWheel.AbsoluteSize.X / 2)
    local v = math.abs((darknessSlider.AbsolutePosition.Y - darknessPicker.AbsolutePosition.Y) / darknessPicker.AbsoluteSize.Y - 1)
    local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))

    colourDisplay.BackgroundColor3 = hsv
    darknessPicker.UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, hsv),
        ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
    }

    rTextLabel.Text = "R: " .. tostring(math.floor(hsv.R * 255))
    gTextLabel.Text = "G: " .. tostring(math.floor(hsv.G * 255))
    bTextLabel.Text = "B: " .. tostring(math.floor(hsv.B * 255))

    updateUIStrokes(hsv)

    -- Save colors when they are updated
    saveColors(hsv)
end

colourWheel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        buttonDown = true
        Items_1.ScrollingEnabled = false
    end
end)

darknessPicker.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        movingSlider = true
        Items_1.ScrollingEnabled = false
    end
end)

uis.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        buttonDown = false
        movingSlider = false
        Items_1.ScrollingEnabled = true
    end
end)

uis.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) and (buttonDown or movingSlider) then
        local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
        local centreOfWheel = Vector2.new(colourWheel.AbsolutePosition.X + (colourWheel.AbsoluteSize.X / 2), colourWheel.AbsolutePosition.Y + (colourWheel.AbsoluteSize.Y / 2))
        local distanceFromWheel = (mousePos - centreOfWheel).Magnitude

        if distanceFromWheel <= colourWheel.AbsoluteSize.X / 2 and buttonDown then
            wheelPicker.Position = UDim2.new(0, mousePos.X - colourWheel.AbsolutePosition.X, 0, mousePos.Y - colourWheel.AbsolutePosition.Y)
        elseif movingSlider then
            darknessSlider.Position = UDim2.new(darknessSlider.Position.X.Scale, 0, 0, math.clamp(mousePos.Y - darknessPicker.AbsolutePosition.Y, 0, darknessPicker.AbsoluteSize.Y))
        end

        updateColour(centreOfWheel)
    end
end)


-- Load colors when the script starts
loadColors()

			return ColorPicker

		end

		return Elements

	end

	return Tabs

end
return Library
