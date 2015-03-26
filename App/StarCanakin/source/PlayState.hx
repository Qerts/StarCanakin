package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * Třída pro jeden level
 */
class PlayState extends FlxState
{
	
	var Player:PlayerRocket;
	var Enemy:EnemyRocket;
	
	override public function create():Void
	{
		super.create();
		//inicializace komponent lvlu
		Player = PlayerRocket.getPlayer();	//pozor, singleton, při každé smrti je nutné objekt zničit nebo vynulovat	
		Enemy = new EnemyRocket();
		
		
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		switch(turn)
		{
			case Turn.ENEMY:
				{		
					
					if (!Player.Update())
					{
						turn = Turn.PLAYER;
					}					
				}
			case Turn.PLAYER:
				{
					
					if (!Enemy.Update())
					{
						turn = Turn.ENEMY;
					}
					
				}
		}	
	}	
}