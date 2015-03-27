package;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class Player extends FlxSpriteGroup
{
	private static var player:Player;
	
	var playerSprite:FlxSprite;
	
	public var playerStatus:Status;
	
	public function new() 
	{
		super();
		playerSprite = new FlxSprite();
		add(playerSprite);
		
		playerStatus = Status.DONE;
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
		//pokud deciding, tak čeká na vstup od hráče a po přijetí se přepne an waiting
		//pokud tak čeká
	}
	
	
	
	private function evade() { }
	private function attack() { }
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}