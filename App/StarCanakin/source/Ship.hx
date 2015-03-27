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
	
	public var level:Int;

	public function new() 
	{
		super();
	}
	
	private function initStats(level:Int = 1) 
	{
		// celkove mame k dispozici 6 statsu
		// maximalni level hrace bude 10
		// za kazdy novy level hrac dostane 1 ktery muze investovat
		// celkovy startovaci pocet statsu je 3 * 6 + level. 
		// tzn : 1 level - 18 statsu.
		// 5 level - 23 statsu
		// minimalni startovaci pocet bodu v kazdem statsu je 1, maximalni je 4 + level / 2. (?) 
		// algoritmus na tvoreni statsu musi pri tvoreni lode vzdycky vycerpat vsechny startovaci statsy
		
		hitpoints = 10;
		shield = 10;
		shieldRecovery = 10;
		weaponPower = 10;
		energyLevel = 10;
		luck = 10;
	}
	
}