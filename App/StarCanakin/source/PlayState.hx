package;

import board.Board;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.addons.display.FlxStarField;

/**
 * Třída pro jeden level
 */
class PlayState extends FlxState
{
	
	var board:Board;
	var stars:FlxStarField2D;
	
	override public function create():Void
	{
		super.create();
		
		stars = new FlxStarField2D();
		stars.setStarSpeed(3,10);
		add(stars);
		
		board = new Board();
		add(board);
		
		
				
	}

	
	override public function destroy():Void
	{
		super.destroy();
	}

	
	override public function update():Void
	{
		super.update();
		
		
	}	
}