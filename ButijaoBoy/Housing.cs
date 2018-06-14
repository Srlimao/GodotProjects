using Godot;
using System;

public class Housing : Node2D
{
    

    public override void _Ready()
    {
        var sceneHouse = (PackedScene)ResourceLoader.Load("res://House.tscn"); // will load when the script is instanced
        var nodeHouse = sceneHouse.Instance() as Node2D;
        var botPoint = GetNode("BotPoint") as Node2D;
        nodeHouse.Position = botPoint.GlobalPosition;
        //nodeHouse.SetScale(new Vector2(0.5f,0.5f));
        AddChild(nodeHouse);
    }

//    public override void _Process(float delta)
//    {
//        // Called every frame. Delta is time since last frame.
//        // Update game logic here.
//        
//    }
}
