local E=o("TextButton");
E.Size=UDim2.new(0,30,0,30);
E.Position=UDim2.new(1,-35,0,0);
E.BackgroundColor3=Color3.fromRGB(255,70,70);
E.BorderSizePixel=0;
E.Text="X";
E.TextColor3=Color3.fromRGB(255,255,255);
E.TextSize=18;
E.Font=Enum.Font.SourceSansBold;
E.Parent=i;

local N=o("UICorner");N.CornerRadius=UDim.new(0,6);N.Parent=E;

E.MouseButton1Click:Connect(function()r:Destroy()end);
