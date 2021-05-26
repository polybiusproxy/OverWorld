package;

import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite
{
	var speed:Int = 500;

	public function new(X:Int = 0, Y:Int = 0)
	{
		super(X, Y);
		makeGraphic(50, 50); // maybe 100x100

		acceleration.y = 1000;
		drag.x = speed * 4;
		// drag.x = speed; -- gonna use this for walking on ice! pog
	}

	// hey shitass, wanna see me move a cube?
	private function movement()
	{
		var left = FlxG.keys.anyPressed([LEFT, A]);
		var right = FlxG.keys.anyPressed([RIGHT, D]);

		if (left)
		{
			velocity.x = -speed;
		}
		else if (right)
		{
			velocity.x = speed;
		}

		if (left && right)
		{
			velocity.x = 0;
		}
	}

	override function update(elapsed:Float):Void
	{
		super.update(elapsed);
		movement();
	}
}
