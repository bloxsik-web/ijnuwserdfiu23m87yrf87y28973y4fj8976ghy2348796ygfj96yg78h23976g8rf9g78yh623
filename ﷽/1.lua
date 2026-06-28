local function y()
    d=not d;
    b();  
    
    if d then 
        l.Text="Fly OFF";
        l.BackgroundColor3=Color3.fromRGB(255,70,70);
        u.Text="Status: ON";
        u.TextColor3=Color3.fromRGB(100,255,100);
        
        if m then m.PlatformStand=true end;

        local g=Instance.new("BodyGyro");
        g.P=5000;
        g.D=500;
        g.MaxTorque=Vector3.new(10000,10000,10000);
        g.CFrame=f.CFrame;
        g.Parent=f;
        
        local v=Instance.new("BodyVelocity");
        v.P=5000;
        v.MaxForce=Vector3.new(10000,10000,10000);
        v.Velocity=Vector3.new(0,0,0);
        v.Parent=f;
        
        local w;
        w=game:GetService("RunService").Heartbeat:Connect(function()
            if not d or not f or not f.Parent then 
                if w then w:Disconnect()end;
                return;
            end;
            
            local q=Vector3.new(0,0,0);
            local z=f.CFrame.LookVector;
            local x=f.CFrame.RightVector; 
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W)then q=q+z end;
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S)then q=q-z end;
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A)then q=q-x end;
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D)then q=q+x end;
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space)then q=q+Vector3.new(0,1,0)end;
            if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl)then q=q-Vector3.new(0,1,0)end;
            
            if q.Magnitude>0 then q=q.Unit*50 end;
            
            v.Velocity=q;
            g.CFrame=CFrame.new(f.Position,f.Position+(f.CFrame.LookVector*2)+Vector3.new(0,0.1,0));
        end);

        f.BodyGyro=g;
        f.BodyVelocity=v;
        f.FlyConnection=w;
        
    else 
        l.Text="Fly ON";
        l.BackgroundColor3=Color3.fromRGB(70,70,255);
        u.Text="Status: OFF";
        u.TextColor3=Color3.fromRGB(255,100,100);
        
        if m then m.PlatformStand=false end;
        
        if f then 
            if f:FindFirstChild("BodyGyro")then f.BodyGyro:Destroy()end;
            if f:FindFirstChild("BodyVelocity")then f.BodyVelocity:Destroy()end;
            if f:FindFirstChild("FlyConnection")then 
                f.FlyConnection:Disconnect();
                f.FlyConnection=nil;
            end;
        end;
    end;
end;
