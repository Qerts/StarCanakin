package board;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.addons.display.FlxStarField;

/**
 * ...
 * @author Qerts
 */
class Board extends FlxGroup
{
	var player:Player;
	var enemy:Enemy;
	
	var stars:FlxStarField2D;
	
	override public function update()
	{
		super.update();		
	}
	
	public function new() 
	{
		super();
		
		//FlxG.debugger.drawDebug = true;
		//inicializace komponent lvlu
		player = Player.getPlayer();	//pozor, singleton, při každé smrti je nutné objekt zničit nebo vynulovat	
		player.setPosition(FlxG.width * 0.1, FlxG.height * 0.1);
		
		enemy = new Enemy();
		
		add(enemy);
		add(player);
	}
	
}