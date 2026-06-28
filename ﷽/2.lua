l.MouseButton1Click:Connect(y); 

game:GetService("UserInputService").InputBegan:Connect(function(j,k)
    if k then return end;
    if j.KeyCode==Enum.KeyCode.F then y()end; 
end);
