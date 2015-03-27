package;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class Player extends FlxSpriteGroup
{
	private static var player:Player;
	
	var playerSprite:FlxSprite;
	
	public function new() 
	{
		super();
		playerSprite = new FlxSprite();
		add(playerSprite);
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
		
	}
	
	
	
	private function evade() { }
	private function attack() { }
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}