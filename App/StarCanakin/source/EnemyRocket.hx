package;
using flixel.util.FlxRandom;

/**
 * ...
 * @author Qerts
 */
class EnemyRocket
{
    var random:FlxRandom;
	
	public function Update():Bool
	{
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
	public function new() 
	{
		random = FlxRandom.intRanged(1, 4);
	}
	
	private function evade() { }
	private function attack() { }
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}