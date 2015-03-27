package;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class Player extends Ship
{
	private static var player:Player;
	
	var playerSprite:FlxSprite;
	
	
	public function new() 
	{
		super();
		playerSprite = new FlxSprite();
		add(playerSprite);
		
		status = Status.WAITING;
	}
	
	public static inline function getPlayer():Player
	{
		if (player == null)
			return player = new Player();
		else
			return player;
	}
	
	
	override function update():Void
	{
		//pokud je starting, tak se přepne na deciding
		if (status == Status.STARTING) 
		{
			//todo
			status = Status.DECIDING;
		}
		//pokud deciding, tak čeká na vstup od hráče a po přijetí se přepne an waiting
		if (status == Status.DECIDING) 
		{
			status = Status.WAITING;
		}
		//zbytek ve waitingu se řeší v boardu
	}
	
	
	
	private function evade() { }
	private function attack() { }
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}