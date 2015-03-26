package;

/**
 * ...
 * @author Qerts
 */
class PlayerRocket
{
	private static var Player:PlayerRocket;
	
	public static inline function getPlayer()
	{
		if (Player == null)
			return Player = new PlayerRocket();
		else
			return Player;
	}
	
	
	public function Update():Bool
	{
		
	}
	public function new() 
	{
		
	}
	
	private function evade() { }
	private function attack() { }
	private function increaseOffense() { }
	private function increaseDefense() { }
	
}