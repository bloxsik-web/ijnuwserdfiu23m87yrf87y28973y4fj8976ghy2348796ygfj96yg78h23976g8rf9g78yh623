local function b()
    h=p.Character;
    if h then 
        m=h:FindFirstChild("Humanoid");
        f=h:FindFirstChild("HumanoidRootPart");
    end
end;

p.CharacterAdded:Connect(b);
