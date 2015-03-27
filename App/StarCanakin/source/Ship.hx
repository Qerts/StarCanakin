package;
import flixel.group.FlxSpriteGroup;
using flixel.util.FlxRandom;

/**
 * ...
 * @author Qerts
 */
class Ship extends FlxSpriteGroup
{
	
	public var status:Status;
	
	//deklarace statů
	var hitpoints:Int;
	var shield:Int;
	var shieldRecovery:Int;
	var weaponPower:Int;
	var energyLevel:Int;
	var luck:Int;
	var level:Int;

	public function new() 
	{
		super();
	}
	
	private function initStats(level:Int = 1) 
	{
		hitpoints = 10;
		shield = 10;
		shieldRecovery = 10;
		weaponPower = 10;
		energyLevel = 10;
		luck = 10;	
	}
	
}