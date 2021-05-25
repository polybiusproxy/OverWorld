package;

import flixel.FlxSprite;

class Player extends FlxSprite
{
	public function new(rocket:Bool)
	{
		super();
		rocket = false;

		if (!rocket)
		{
			trace("lol");
		}
	}
}
