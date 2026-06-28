local o=Instance.new;local n=game.Players.LocalPlayer;local e=Instance.new;local t=n:WaitForChild("PlayerGui");local r=o("ScreenGui");r.Name="TestGUI";r.Parent=t;local i=o("Frame");
i.Size=UDim2.new(0,300,0,200);
i.Position=UDim2.new(0.5,-150,0.5,-100);
i.BackgroundColor3=Color3.fromRGB(30,30,30);
i.BackgroundTransparency=0.1;
i.BorderSizePixel=0;
i.Active=true;
i.Draggable=true;
i.Parent=r;
