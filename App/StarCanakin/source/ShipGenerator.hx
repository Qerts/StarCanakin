package ;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

/**
 * ...
 * @author w
 */
class ShipGenerator
{
	
	public static function getShip():FlxSpriteGroup
	{
		var ship = new FlxSpriteGroup();
		ship.add(new FlxSprite("assets/images/starship_pattern.png"));
		return ship;
	}
	
}