package;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxPoint;
using flixel.util.FlxRandom;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.util.FlxVelocity;
import flixel.util.FlxCollision;


/**
 * ...
 * @author Qerts
 */
class Enemy extends FlxSpriteGroup
{
    var random:Int;
	
	var shell:FlxSprite;
	var enemy:FlxSprite;
	
	var defaultShellPosition:FlxPoint;
	
	public var enemyStatus:Status;
	
	public function new() 
	{
		super();
		random = FlxRandom.intRanged(1, 4);
		
		defaultShellPosition = new FlxPoint(100, 100);
		
		shell = new FlxSprite();
		shell.loadGraphic("assets/images/plate.png");
		shell.setPosition(100, 100);

		add(shell);
				
		enemy = new FlxSprite();
		enemy.setPosition(500,100);
		//enemy.makeGraphic(FlxColor.BLUE,32,32);
		add(enemy);		
		
		enemyStatus = Status.DONE;
		
	}
	
	override function update():Void
	{
		//pokud je starting, tak se přepne na deciding
		//pokud deciding, tak se rozhodne a přepne se na waiting
		//pokud tak čeká
		
		
		
		
		if (FlxG.mouse.justReleased && shell.alive)
		{
			shell.kill();
		}else if (FlxG.mouse.justReleased && !shell.alive)
		{
			shell.reset(defaultShellPosition.x,defaultShellPosition.y);
		}
		
		if (FlxG.pixelPerfectOverlap(shell,enemy))
		{
			shell.kill();
		}
		
		shell.x += 5;
		
		switch (random) 
		{
			case 1:
				evade();
			case 2:
				attack();
			case 3:
				increaseDefense();
			case 4:
				increaseOffense();
			default:
				attack();
				
		}
	}
	
	private function evade() { }
	
	private function attack() 
	{ 
		
	}
	
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}