package;
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
	
	var stars:FlxStarField2D;
	var player:Player;
	var enemy:Enemy;
		
	override public function create():Void
	{
		super.create();
		
		stars = new FlxStarField2D();
		stars.setStarSpeed(3,10);
		add(stars);

		
		//FlxG.debugger.drawDebug = true;
		//inicializace komponent lvlu
		player = Player.getPlayer();	//pozor, singleton, při každé smrti je nutné objekt zničit nebo vynulovat	
		player.setPosition(FlxG.width * 0.1, FlxG.height * 0.1);
		
		enemy = new Enemy();
		
		add(enemy);
		add(player);
		
		
				
	}

	
	override public function destroy():Void
	{
		super.destroy();
	}

	
	override public function update():Void
	{
		super.update();
		//pokud oba mají status waiting, tak v této třídě porběhne vyhodnocení akcí
		if (enemy.status == Status.WAITING && player.status == Status.WAITING) 
		{
			//todo
			//jakmile se vyhodnotí, přepne se status na done
			
			enemy.status = Status.DONE;
			player.status = Status.DONE;
		}
		if (enemy.status == Status.DONE && player.status == Status.DONE)
		{
			//todo
			//pokud jsou dokončený všechny případné akce stavu done, přepne se znovu na starting
			enemy.status = Status.STARTING;
			player.status = Status.STARTING;
		}
		
	}	
}