using Godot;
using System;

public class NodePiao : Node2D
{
    // Member variables here, example:
    // private int a = 2;
    // private string b = "textvar";

    public override void _Ready()
    {
        
        
    }

    public override void _Process(float delta)
    {
        // Called every frame. Delta is time since last frame.
       // Update game logic here.
        SetRotation(GetRotation() + 0.5f * delta);
        
    }
}
